import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/currency_tx_info.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

var circleClrs = [Colors.grey, Colors.green, Colors.red];
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
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: circleClrs[txInfo.status],
                borderRadius: BorderRadius.circular(6)),
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
            ],
          )
        ],
      ),
    );
  }
}
