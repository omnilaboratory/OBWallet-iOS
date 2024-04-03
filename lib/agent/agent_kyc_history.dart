import 'package:awallet/component/agent_kyc_item.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/user.pb.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AgentKycHistory extends StatefulWidget {
  const AgentKycHistory({super.key});

  @override
  State<AgentKycHistory> createState() => _AgentKycHistoryState();
}

class _AgentKycHistoryState extends State<AgentKycHistory> {
  int rowIndex = 1;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  List<AgentKycInfo> dataList = [];

  @override
  void initState() {
    super.initState();
    _onListRefresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 42,
        titleSpacing: 0,
        title: HeadLogo(title: S.of(context).agent_kyc_history),
      ),
      body: Column(
        children: [
          Expanded(
              child: buildNewSmartRefresher(
                  _refreshListController,
                  dataList.isEmpty
                      ? Center(child: Text(S.of(context).common_NoData))
                      : ListView.builder(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 10),
                          itemCount: dataList.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (index < dataList.length) {
                              return AgentKycItem(info: dataList[index]);
                            }
                            return null;
                          }),
                  onRefresh: _onListRefresh,
                  enablePullUp: false))
        ],
      ),
    );
  }

  void _onListRefresh() async {
    rowIndex = 1;
    dataList = [];
    getDataFromServer();
  }

  void getDataFromServer() {
    UserService.getInstance().listAgentKycInfo(context).then((result) {
      if (result.code == 1) {
        dataList = result.data;
        if (mounted) {
          setState(() {});
        }
      }

      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
    });
  }
}
