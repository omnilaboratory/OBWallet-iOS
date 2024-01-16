import 'package:awallet/bean/nft_tx_info.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/nft_tx_item.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
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

  List<NftTxInfo> txHistoryList = [];

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
        title: HeadLogo(title: S.of(context).shop_nft_tx_history_title),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(
              child: buildNewSmartRefresher(
            _refreshListController,
            txHistoryList.isEmpty
                ? Center(child: Text(S.of(context).common_NoData))
                : ListView.builder(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    itemCount: txHistoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      if (index < txHistoryList.length) {
                        return NftTxItem(txInfo: txHistoryList[index]);
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
        .getSwapTxList(context, dataStartIndex, localPageSize,
            TrackedTx_ContractSymbol.NFT,
            loadNftTokenLog: true)
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as GetSwapTxListResponse;
        var items = resp.items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txHistoryList.add(
              NftTxInfo(
                  title:
                      "Exchange (${element.fromSymbol.name}-${element.targetSymbol.name})",
                  txTime: DateTime.fromMillisecondsSinceEpoch(
                      (element.createdAt * 1000).toInt()),
                  fromSymbol: element.fromSymbol.name,
                  targetSymbol: element.targetSymbol.name,
                  amount: element.amt,
                  amountOfDollar: element.settleAmt,
                  status:
                      element.status.value > 2 ? element.status.value - 2 : 0,
                  nftTxLogs: element.nftTokenLogs),
            );
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
