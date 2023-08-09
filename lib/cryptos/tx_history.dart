import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/component/tx_item.dart';
import 'package:flutter/material.dart';

class TxHistory extends StatefulWidget {
  const TxHistory({super.key});

  @override
  State<TxHistory> createState() => _TxHistoryState();
}

class _TxHistoryState extends State<TxHistory> {
  var txHistoryList = [
    CryptoTxInfo(title: "Scan Pay", txTime: DateTime.now(), amount: 122.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(title: "Top Up", txTime: DateTime.now(), amount: 15622.02323)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            Image(image: AssetImage("asset/images/logo_head.png")),
            Text('Crypto',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          itemCount: txHistoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return CryptoTxItem(txInfo: txHistoryList[index]);
          }),
    );
  }
}