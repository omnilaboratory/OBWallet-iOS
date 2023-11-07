import 'dart:developer';

import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/crypto_tx_item.dart';
import 'package:awallet/component/nft_tx_item.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class NftTxHistory extends StatefulWidget {
  const NftTxHistory({super.key});

  @override
  State<NftTxHistory> createState() => _NftTxHistoryState();
}

class _NftTxHistoryState extends State<NftTxHistory> {
  int dataStartIndex = 0;
  int localPageSize = 15;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  List<CryptoTxInfo> txHistoryList = [];

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
        title: const HeadLogo(title: "NFT Tx History"),
      ),
      body: Column(
        children: [
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
                      body = const Text("No more Data");
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
                            return NftTxItem(txInfo: txHistoryList[index]);
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
    getSwapTxList();
  }

  void _onListLoading() async {
    dataStartIndex += localPageSize;
    getSwapTxList();
  }

  void getSwapTxList() {
    AccountService.getInstance()
        .getSwapTxList(context, dataStartIndex, localPageSize, TrackedTx_ContractSymbol.NFT,loadNftTokenLog: true)
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as GetSwapTxListResponse;
        var items = resp.items;
        if (items.isNotEmpty) {
          log("$items");
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
