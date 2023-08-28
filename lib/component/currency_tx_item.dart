import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/currency_tx_info.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

class CurrencyTxItem extends StatelessWidget {
  final CurrencyTxInfo txInfo;

  const CurrencyTxItem({super.key, required this.txInfo});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: const Color(0xff257B7D),
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              txInfo.name.substring(0, 1).toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(width: 6),
          SizedBox(
            width: 120,
            child: AutoSizeText(
              txInfo.name,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              minFontSize: 6,
              style: const TextStyle(
                color: Color(0xFF666666),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: size.width - 190,
                child: AutoSizeText(
                  "${StringTools.formatCurrencyNum(txInfo.amount)} ${txInfo.currencyName}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  minFontSize: 6,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                '\$ ${txInfo.amountOfDollar}',
                style: const TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
