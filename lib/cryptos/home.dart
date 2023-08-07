import 'package:awallet/components/crypto_token_card.dart';
import 'package:flutter/material.dart';

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
      body: const Center(
        child: Column(
          children: [
            CryptoTokenCard(balance: 0.3,address: "0x0f6eD175150e0e8ef842244F977Dad19A6e054CB",)
          ],
        ),
      ),
    );
  }
}
