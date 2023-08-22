import 'dart:developer';
import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:flutter/material.dart';

class CryptoWalletCard extends StatefulWidget {

  final CryptoWalletInfo walletInfo;

  const CryptoWalletCard(
      {super.key, required this.walletInfo});

  @override
  State<CryptoWalletCard> createState() => _CryptoWalletCardState();
}

class _CryptoWalletCardState extends State<CryptoWalletCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width * 0.9,
      height: 135,
      padding: const EdgeInsets.only(left: 40),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/image_crypto_card_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("\$ ${widget.walletInfo.balance}", style: const TextStyle(
              fontSize: 26, fontWeight: FontWeight.w800, color: Colors.white)),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(widget.walletInfo.address,
                  style: const TextStyle(fontSize: 12, color: Colors.white)),
              const SizedBox(width: 10),
              Transform.scale(
                  scale: 0.9,
                  child: GestureDetector(
                      onTap: () {
                        log("copy");
                      },
                      child: const Image(
                          image: AssetImage('asset/images/icon_copy.png'))))
            ],
          ),
        ],
      ),
    );
  }
}
