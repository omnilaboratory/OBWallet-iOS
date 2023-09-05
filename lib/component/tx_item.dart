import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../bean/crypto_tx_info.dart';

class CryptoTxItem extends StatefulWidget {
  final CryptoTxInfo txInfo;

  const CryptoTxItem({super.key, required this.txInfo});

  @override
  State<CryptoTxItem> createState() => _CryptoTxItemState();
}

class _CryptoTxItemState extends State<CryptoTxItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 40,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              color: const Color(0xff257B7D),
              borderRadius: BorderRadius.circular(12)),
          child: Text(
            widget.txInfo.title.substring(0, 1).toUpperCase(),
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.txInfo.title,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat("yyyy.MM.dd hh:mm a").format(widget.txInfo.txTime),
                  style: const TextStyle(
                    color: Color(0xFF999999),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAmount(widget.txInfo.fromSymbol, widget.txInfo.amount),
              const SizedBox(height: 4),
              buildAmount(
                  widget.txInfo.targetSymbol, widget.txInfo.amountOfDollar!),
            ],
          ),
        ),
      ]),
    );
  }

  Row buildAmount(String symbol, double amount) {
    String imageName = "icon_dollar.png";
    String amountStr = StringTools.formatCurrencyNum(amount);
    if (symbol != "USD") {
      amountStr = StringTools.formatCryptoNum(amount);
      switch (symbol) {
        case "ETH":
          imageName = "icon_eth_logo.png";
          break;
        case "USDT":
          imageName = "icon_tether.png";
          break;
        case "USDC":
          imageName = "icon_tether.png";
          break;
      }
    }

    return Row(
      children: [
        Image(
          image: AssetImage('asset/images/$imageName'),
          width: 16,
          height: 16,
        ),
        const SizedBox(width: 4),
        Text(
          amountStr,
          style: const TextStyle(
            color: Color(0xFF666666),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
