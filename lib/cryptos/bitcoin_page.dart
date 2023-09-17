import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_token_item.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:flutter/material.dart';

class BitcoinPage extends StatefulWidget {
  const BitcoinPage({super.key});

  @override
  State<BitcoinPage> createState() => _BitcoinPageState();
}

class _BitcoinPageState extends State<BitcoinPage> {

  var tokenList = [
    TokenInfo(
        name: "BTC",
        iconUrl: 'asset/images/icon_bitcoin.png',
        balance: 0.0,
        balanceOfDollar: 0.0),
    TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CryptoWalletCard(walletInfo: CryptoWalletInfo(address: "******",balance: 0)),
          const SizedBox(height: 20),
          buildTxButtons(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return CryptoTokenItem(tokenInfo: tokenList[index]);
              },
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
              itemCount: tokenList.length,
            ),
          )
        ],
      ),
    );
  }

  Row buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 50) / 4;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: 'Pay',
            onPressed: () {
              showToast(Tips.comeSoon.value);
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Exchange(type: EnumExchangeType.sell, name: 'ETH');
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_receive.png',
            text: 'Receive',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const ReceiveWalletAddress();
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Send',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Send(name: 'ETH');
                  });
            }),
      ],
    );
  }
}
