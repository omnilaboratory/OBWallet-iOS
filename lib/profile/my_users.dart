import 'package:awallet/bean/my_user_info.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/my_user_item.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyUsers extends StatefulWidget {
  const MyUsers({super.key});

  @override
  State<MyUsers> createState() => _MyUsersState();
}

class _MyUsersState extends State<MyUsers> {
  int rowIndex = 1;
  int dataStartIndex = 0;
  int localPageSize = 20;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  List<MyUserIfo> dataList = [];

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
        title: const HeadLogo(title: "My Users"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 20,bottom: 20),
            child: Row(
              children: [
                Text("Total Users: XXX",
                    style: TextStyle(
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
                        return MyUserItem(info: dataList[index]);
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
    AccountService.getInstance()
        .getSwapTxList(context, dataStartIndex, localPageSize,
            TrackedTx_ContractSymbol.NFT,
            loadNftTokenLog: true)
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as GetSwapTxListResponse;
        var items = resp.items;
        if (items.isNotEmpty) {
          for (var element in items) {
            dataList.add(MyUserIfo(
              index: rowIndex++,
              username:
                  "Exchange (${element.fromSymbol.name}-${element.targetSymbol.name})",
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
