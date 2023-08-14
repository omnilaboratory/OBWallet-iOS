import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/balance_in_currency_info.dart';
import 'package:flutter/material.dart';

class BalanceInCurrency extends StatelessWidget {
  final BalanceInCurrencyInfo balanceInfo;

  const BalanceInCurrency({super.key, required this.balanceInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      padding: const EdgeInsets.only(left: 10, right: 2),
      margin: const EdgeInsets.only(right: 15),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x7AAAA9DD),
            blurRadius: 4,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            balanceInfo.name,
            style: const TextStyle(
              color: Color(0xFF666666),
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
          Row(
            children: [
              Text(
                balanceInfo.icon,
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Expanded(
                child: AutoSizeText(balanceInfo.balance.toString(),
                    style: const TextStyle(fontSize: 24),
                    minFontSize: 10,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          )
        ],
      ),
    );
  }
}
