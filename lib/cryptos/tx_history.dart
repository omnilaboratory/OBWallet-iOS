import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/tx_item.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TxHistory extends StatefulWidget {
  const TxHistory({super.key});

  @override
  State<TxHistory> createState() => _TxHistoryState();
}

class _TxHistoryState extends State<TxHistory> {
  int dataStartIndex = 0;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  List<CryptoTxInfo> txHistoryList = [];
  var currTypeIndex = 0;

  void onClickType(int type) {
    if (currTypeIndex == type) {
      return;
    }
    if (_refreshListController.isRefresh || _refreshListController.isLoading) {
      return;
    }

    txHistoryList = [];
    currTypeIndex = type;
    dataStartIndex = 0;

    if (dataStartIndex == 0) {
      getSwapTxList();
    } else {
      getTrackedTxList();
    }
  }

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
        title: const HeadLogo(title: "Crypto"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    onClickType(0);
                  },
                  child: Text("Exchange",
                      style: TextStyle(
                          color: currTypeIndex == 0
                              ? Colors.lightBlueAccent
                              : Colors.black))),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: Text("Send",
                      style: TextStyle(
                          color: currTypeIndex == 1
                              ? Colors.lightBlueAccent
                              : Colors.black)))
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: SmartRefresher(
                controller: _refreshListController,
                enablePullDown: true,
                enablePullUp: true,
                header: const WaterDropHeader(),
                footer: CustomFooter(
                  builder: (BuildContext context, LoadStatus? mode) {
                    Widget body;
                    if (mode == LoadStatus.idle) {
                      body = const Text("pull up load");
                    } else if (mode == LoadStatus.loading) {
                      body = const CupertinoActivityIndicator();
                    } else if (mode == LoadStatus.failed) {
                      body = const Text("Load Failed!Click retry!");
                    } else if (mode == LoadStatus.canLoading) {
                      body = const Text("release to load more");
                    } else {
                      body = const Text("No more Data");
                    }
                    return SizedBox(
                      height: 55.0,
                      child: Center(child: body),
                    );
                  },
                ),
                onRefresh: _onListRefresh,
                onLoading: _onListLoading,
                child: txHistoryList.isEmpty
                    ? const Center(child: Text("No Data"))
                    : ListView.builder(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        itemCount: txHistoryList.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (index < txHistoryList.length) {
                            return CryptoTxItem(txInfo: txHistoryList[index]);
                          }
                          return null;
                        })),
          )
        ],
      ),
    );
  }

  void _onListRefresh() async {
    txHistoryList = [];
    dataStartIndex = 0;
    if (currTypeIndex == 0) {
      getSwapTxList();
    } else {
      getTrackedTxList();
    }
  }

  void _onListLoading() async {
    dataStartIndex += pageSize;
    if (currTypeIndex == 0) {
      getSwapTxList();
    } else {
      getTrackedTxList();
    }
  }

  void getSwapTxList() {
    AccountService.getInstance()
        .getSwapTxList(context, dataStartIndex, pageSize)
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as GetSwapTxListResponse;
        var items = resp.items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txHistoryList.add(CryptoTxInfo(
                title:
                    "Exchange (${element.fromSymbol.name}-${element.targetSymbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.fromSymbol.name,
                targetSymbol: element.targetSymbol.name,
                amount: element.amt,
                amountOfDollar: element.settleAmt,
                status:
                    element.status.value > 2 ? element.status.value - 2 : 0));
          }
        }
        setState(() {});
      }
      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
    });
  }

  void getTrackedTxList() {
    AccountService.getInstance()
        .getTrackedTxList(context, dataStartIndex, pageSize)
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as GetTrackedTxListResponse;
        var items = resp.items;
        // log("getTrackedTxList  $items");
        if (items.isNotEmpty) {
          for (var element in items) {
            txHistoryList.add(CryptoTxInfo(
                title: "Send(${element.symbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.symbol.name,
                amount: element.amt,
                amountOfDollar: element.usdAmt,
                status:
                    element.status.value > 2 ? element.status.value - 2 : 0));
          }
        }
        setState(() {});
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
