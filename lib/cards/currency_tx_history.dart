import 'package:awallet/component/currency_tx_item.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:flutter/material.dart';

class TxHistory extends StatefulWidget {
  const TxHistory({super.key});

  @override
  State<TxHistory> createState() => _TxHistoryState();
}

class _TxHistoryState extends State<TxHistory> {

  var txHistoryList = [
    // CurrencyTxInfo(
    //     name: "STARBUCKS FELIZ EN VIS, HO CHI STARBUCKS FELIZ EN VIS, HO CHI",
    //     currencyName: "VND",
    //     amount: 123456789987654320,
    //     amountOfDollar: 160),
    // CurrencyTxInfo(
    //     name: "STARBUCKS FELIZ EN VIS, HO CHI",
    //     currencyName: "VND",
    //     amount: 20,
    //     amountOfDollar: 160),
  ];


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
        title: const HeadLogo(title: "Card Activity"),
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
