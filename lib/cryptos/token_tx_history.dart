import 'package:flutter/material.dart';

import '../bean/token_info.dart';
import '../component/crypto_wallet_card.dart';

class TokenTxHistory extends StatefulWidget {
  final TokenInfo tokenInfo;

  const TokenTxHistory({super.key, required this.tokenInfo});

  @override
  State<TokenTxHistory> createState() => _TokenTxHistoryState();
}

class _TokenTxHistoryState extends State<TokenTxHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: buildBody());
  }

  Widget buildBody() {
    return const Center(
      child: Column(children: [
        CryptoWalletCard(balance: 0.3, address: "0x0f6eD175150e0......ad19A6e054CB"),
      ]),
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
