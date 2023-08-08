import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import '../bean/crypto_tx_info.dart';
import '../bean/token_info.dart';
import '../component/crypto_token_card.dart';
import '../component/square_button.dart';
import '../component/tx_item.dart';

class TokenActivity extends StatefulWidget {
  final TokenInfo tokenInfo;

  const TokenActivity({super.key, required this.tokenInfo});

  @override
  State<TokenActivity> createState() => _TokenActivityState();
}

class _TokenActivityState extends State<TokenActivity> {

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
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
    CryptoTxInfo(
        title: "Exchange (USD - USDC)", txTime: DateTime.now(), amount: 142.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 40) / 5;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          CryptoTokenCard(tokenInfo: widget.tokenInfo),
          const SizedBox(height: 30),
          buildTxButtons(iconWidth),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Dash(
                direction: Axis.horizontal,
                dashLength: 2,
                length: size.width - 40,
                dashColor: const Color(0xFFCFCFCF)),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: txHistoryList.length,
                itemBuilder: (BuildContext context, int index) {
                  return CryptoTxItem(txInfo: txHistoryList[index]);
                }),
          )
        ]),
      ),
    );
  }

  Row buildTxButtons(double iconWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            text: 'Pay',
            iconWidth: iconWidth,
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_receive.png',
            text: 'Receive',
            iconWidth: iconWidth,
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Send',
            iconWidth: iconWidth,
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_gift.png',
            text: 'Gift',
            iconWidth: iconWidth,
            onPressed: () {}),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 32,
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(image: AssetImage('asset/images/btn_back.png'))),
      title: const Row(
        children: [
          Image(image: AssetImage("asset/images/logo_head.png")),
          Text('BTC Activity',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
    );
  }
}
