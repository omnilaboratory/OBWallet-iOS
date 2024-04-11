import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var circleClrs = [Colors.grey, Colors.yellow, Colors.red, Colors.green];

class CryptoTxItem extends StatelessWidget {
  final CryptoTxInfo txInfo;

  const CryptoTxItem({super.key, required this.txInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      height: 50,
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
              color: circleClrs[txInfo.status],
              borderRadius: BorderRadius.circular(6)),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(txInfo.title,
                    maxLines: 1,
                    maxFontSize: 12,
                    minFontSize: 8,
                    style: const TextStyle(
                      color: Color(0xFF333333),
                      fontWeight: FontWeight.w400,
                    )),
                const SizedBox(height: 4),
                Text(
                  DateFormat("yyyy-MM-dd").format(txInfo.txTime),
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
        const SizedBox(width: 4),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              buildAmount(txInfo.fromSymbol, txInfo.amount),
              const SizedBox(height: 4),
              Visibility(
                visible: txInfo.amountOfDollar!=null,
                child: Row(
                  children: [
                    Text(
                        S.of(context).activity_balance +
                            StringTools.formatCurrencyNum(txInfo.amountOfDollar),
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  Row buildAmount(String symbol, double amount) {
    symbol = symbol.trim().toUpperCase();
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
    if (amount > 0) {
      amountStr = "+$amountStr";
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
