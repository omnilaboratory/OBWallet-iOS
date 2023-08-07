import 'dart:developer';
import 'package:flutter/material.dart';

class CryptoTokenCard extends StatefulWidget {
  final double balance;
  final String address;

  const CryptoTokenCard(
      {super.key, required this.balance, required this.address});

  @override
  State<CryptoTokenCard> createState() => _CryptoTokenCardState();
}

class _CryptoTokenCardState extends State<CryptoTokenCard> {
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
          Text("\$ ${widget.balance}", style: const TextStyle(
              fontSize: 26, fontWeight: FontWeight.w800, color: Colors.white)),
          const SizedBox(height: 10),
          Row(
            children: [
              Text(widget.address,
                  style: const TextStyle(fontSize: 12, color: Colors.white)),
              const SizedBox(width: 10),
              Transform.scale(
                  scale: 0.8,
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
