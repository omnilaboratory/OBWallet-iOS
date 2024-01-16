import 'package:awallet/bean/bank_card_info.dart';
import 'package:flutter/material.dart';

class BankCardItem extends StatelessWidget {
  final BankCardInfo cardInfo;
  final bool isSelected;

  const BankCardItem(
      {super.key, required this.cardInfo, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.only(right: 10),
      height: 118,
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFF638AC1) : const Color(0x5F638AC1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: OvalBorder(),
            ),
            child: Center(
              child: Text(
                cardInfo.symbol,
                style: const TextStyle(
                  color: Color(0xFF638AC1),
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cardInfo.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                cardInfo.account,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
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
