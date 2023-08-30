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
        Padding(
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
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              StringTools.formatCryptoNum(widget.txInfo.amount),
              style: const TextStyle(
                color: Color(0xFF666666),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "\$ ${StringTools.formatCurrencyNum(widget.txInfo.amountOfDollar)}",
              style: const TextStyle(
                color: Color(0xFF666666),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
