import 'package:awallet/bean/my_reward_info.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/my_reward_item.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyReward extends StatefulWidget {
  const MyReward({super.key});

  @override
  State<MyReward> createState() => _MyRewardState();
}

class _MyRewardState extends State<MyReward> {
  int rowIndex = 1;
  int dataStartIndex = 0;
  int localPageSize = 20;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  List<MyRewardInfo> dataList = [];
  double totalReward = 0;

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
        title: const HeadLogo(title: "My Reward"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                    "Total Reward: ${StringTools.formatCurrencyNum(totalReward)}",
                    style: const TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Expanded(
              child: buildNewSmartRefresher(
            _refreshListController,
            dataList.isEmpty
                ? const Center(child: Text("No Data"))
                : ListView.builder(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    itemCount: dataList.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index < dataList.length) {
                        return MyRewardItem(info: dataList[index]);
                      }
                      return null;
                    }),
            onRefresh: _onListRefresh,
            onLoading: _onListLoading,
          ))
        ],
      ),
    );
  }

  void _onListRefresh() async {
    rowIndex = 1;
    dataList = [];
    dataStartIndex = 0;
    getDataFromServer();
  }

  void _onListLoading() async {
    dataStartIndex += localPageSize;
    getDataFromServer();
  }

  void getDataFromServer() {
    UserService.getInstance()
        .listReward(context, dataStartIndex, localPageSize)
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as ListRewardResponse;
        totalReward = resp.totalAmt;
        var items = resp.list;
        if (items.isNotEmpty) {
          for (var element in items) {
            dataList.add(MyRewardInfo(
              index: rowIndex++,
              amount: element.amt,
              createTime: DateTime.fromMillisecondsSinceEpoch(
                  (element.createdAt * 1000).toInt()),
            ));
          }
        }
        if (mounted) {
          setState(() {});
        }
      } else {
        dataStartIndex -= localPageSize;
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