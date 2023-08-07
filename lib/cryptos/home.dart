import 'package:awallet/component/crypto_token_card.dart';
import 'package:flutter/material.dart';

import '../component/square_button.dart';

class CryptoHome extends StatefulWidget {
  const CryptoHome({super.key});

  @override
  State<CryptoHome> createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            const CryptoTokenCard(balance: 0.3,address: "0x0f6eD175150e0e8ef842244F977Dad19A6e054CB"),
            const SizedBox(height: 20),
            buildTxButtons(),
          ],
        ),
      ),
    );
  }

  Row buildTxButtons() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SquareButton(icon: 'asset/images/icon_pay.png', text: 'Pay', onPressed: (){}),
              SquareButton(icon: 'asset/images/icon_exchange.png', text: 'Exchange', onPressed: (){}),
              SquareButton(icon: 'asset/images/icon_receive.png', text: 'Receive', onPressed: (){}),
              SquareButton(icon: 'asset/images/icon_send.png', text: 'Send', onPressed: (){}),
            ],
          );
  }
}
