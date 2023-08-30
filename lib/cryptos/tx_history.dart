import 'dart:developer';

import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/tx_item.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:flutter/material.dart';

class TxHistory extends StatefulWidget {
  const TxHistory({super.key});

  @override
  State<TxHistory> createState() => _TxHistoryState();
}

class _TxHistoryState extends State<TxHistory> {
  String tips = "Loading";
  String title = "(Exchange)";

  List<CryptoTxInfo> txHistoryList = [];

  void getSwapTxList() {
    AccountService.getInstance().getSwapTxList().then((result) {
      if (result.code == 1) {
        txHistoryList.clear();
        var resp = result.data as GetSwapTxListResponse;
        var items = resp.items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txHistoryList.add(CryptoTxInfo(
                title:
                    "Exchange (${element.fromSymbol.name}-${element.targetSymbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                amount: element.amt,amountOfDollar: element.settleAmt));
          }
        } else {
          tips = "No Txs Data";
        }
        setState(() {});
      }
    });
  }

  void getTrackedTxList() {
    AccountService.getInstance().getTrackedTxList().then((result) {
      if (result.code == 1) {
        txHistoryList.clear();
        var resp = result.data as GetTrackedTxListResponse;
        var items = resp.items;
        log("$items");
        if (items.isNotEmpty) {
          for (var element in items) {
            txHistoryList.add(CryptoTxInfo(
                title: "Send(${element.symbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch((element.createdAt * 1000).toInt()),
                amount: element.amt));
          }
        } else {
          tips = "No Txs Data";
        }
        setState(() {});
      }
    });
  }

  void onClickType(int type) {
    tips = "Loading";
    if (type == 0) {
      title = "(Exchange)";
      getSwapTxList();
    } else {
      title = "(Send)";
      getTrackedTxList();
    }
  }

  @override
  void initState() {
    getSwapTxList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 24,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Image(image: AssetImage('asset/images/btn_back.png'))),
        title: HeadLogo(title: "Crypto$title"),
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
                  child: const Text("Exchange")),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: const Text("Send"))
            ],
          ),
          const SizedBox(height: 10),
          txHistoryList.isEmpty
              ? Center(child: Text(tips))
              : Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    itemCount: txHistoryList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CryptoTxItem(txInfo: txHistoryList[index]);
                    }),
              )
        ],
      ),
    );
  }
}
