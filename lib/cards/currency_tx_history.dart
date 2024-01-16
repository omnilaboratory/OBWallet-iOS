import 'package:awallet/component/currency_tx_item.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:flutter/material.dart';

class TxHistory extends StatefulWidget {
  const TxHistory({super.key});

  @override
  State<TxHistory> createState() => _TxHistoryState();
}

class _TxHistoryState extends State<TxHistory> {

  var txHistoryList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 42,
        titleSpacing: 0,
        title: HeadLogo(title: S.of(context).cardActivity_tile),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          itemCount: txHistoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return CurrencyTxItem(txInfo: txHistoryList[index]);
          }),
    );
  }
}
