import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/nft_tx_info.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var circleClrs = [Colors.grey, Colors.yellow, Colors.red, Colors.green];

class NftTxItem extends StatelessWidget {
  final NftTxInfo txInfo;

  const NftTxItem({super.key, required this.txInfo});

  @override
  Widget build(BuildContext context) {
    log("${txInfo.nftTxLogs}");

    List<Widget> nftTxList = [];
    if (txInfo.nftTxLogs.isNotEmpty) {
      for (var log in txInfo.nftTxLogs) {
        var item = Column(
          children: [
            const SizedBox(height: 5),
            Row(
              children: [
                Row(
                  children: [
                    const Icon(Icons.token, size: 18),
                    const SizedBox(width: 2),
                    Text("#${log.tokenId}"),
                    const SizedBox(width: 15),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.assessment, size: 18),
                    const SizedBox(width: 2),
                    Text("${log.value}"),
                    const SizedBox(width: 15),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.monetization_on, size: 18),
                    const SizedBox(width: 2),
                    AutoSizeText(log.usdAmt.toString(),
                        maxLines: 1,
                        maxFontSize: 12,
                        minFontSize: 8,
                        overflow: TextOverflow.clip),
                  ],
                ),
              ],
            )
          ],
        );

        nftTxList.add(item);
      }
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.only(top: 13),
          decoration: BoxDecoration(
              color: circleClrs[txInfo.status],
              borderRadius: BorderRadius.circular(6)),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txInfo.title,
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat("yyyy-MM-dd hh:mm a").format(txInfo.txTime),
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
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildAmount(txInfo.fromSymbol, txInfo.amount),
              const SizedBox(height: 4),
              txInfo.amountOfDollar != null
                  ? buildAmount(txInfo.targetSymbol, txInfo.amountOfDollar!)
                  : const SizedBox(
                      width: 0,
                      height: 0,
                    ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: nftTxList,
              ),
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
