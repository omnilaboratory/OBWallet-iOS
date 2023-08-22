import 'dart:developer';
import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

class CryptoWalletCard extends StatefulWidget {
  final CryptoWalletInfo walletInfo;

  const CryptoWalletCard({super.key, required this.walletInfo});

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
      padding: const EdgeInsets.only(left: 30),
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
          Text("\$ ${widget.walletInfo.balance}",
              style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(StringTools.starString(widget.walletInfo.address,maxLength: 30),
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white)),
              const SizedBox(width: 10),
              GestureDetector(
                  onTap: () {
                    log("copy");
                  },
                  child: const Image(
                      width: 24,
                      height: 24,
                      image: AssetImage('asset/images/icon_copy.png')))
            ],
          ),
        ],
      ),
    );
  }
}
