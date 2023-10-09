import 'package:awallet/bean/card_item_info.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common.dart';

class CardItem extends StatelessWidget {
  final CardItemInfo cardItemInfo;

  // 0: card detail  1 card template
  final int type;
  final bool selected;

  const CardItem(
      {super.key,
      required this.cardItemInfo,
      this.type = 0,
      this.selected = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: 160,
              decoration: ShapeDecoration(
                color: selected
                    ? const Color(0xFFC1C1C1)
                    : const Color(0x23C1C1C1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Container(
                      width: 102,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'asset/images/image_virtual_card_bg.png'),
                        ),
                      ),
                      child: const Text(
                        'Virtual Card',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 114, right: 20),
          child: Text(
            cardItemInfo.country,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        buildCardNo(),
        Container(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                const SizedBox(width: 20),
                const Text(
                  '\$',
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: 6),
                Text(
                  StringTools.formatCurrencyNum(cardItemInfo.balance),
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )),
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Text(
                getCardExpiryDate(),
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 30),
              Text(
                "CVV ${cardItemInfo.cvv}",
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16, bottom: 12),
          child: Image(width: 80, image: AssetImage(cardItemInfo.iconUrl)),
        ),
      ],
    );
  }

  Container buildCardNo() {
    if (type == 1) {
      return Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Text(
              getCardNo(),
              style: const TextStyle(
                color: Color(0xFF666666),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.only(bottom: 80),
      child: Row(
        children: [
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () {
              if (cardItemInfo.cardNo.isNotEmpty) {
                showToast(Tips.cardNoIsOnClipboard.value);
                Clipboard.setData(ClipboardData(text: cardItemInfo.cardNo));
              }
            },
            child: Text(
              getCardNo(),
              style: const TextStyle(
                color: Color(0xFF666666),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ],
      ),
    );
  }

  String getCardNo() {
    String cardNo = cardItemInfo.cardNo;
    if (cardNo.isEmpty) {
      cardNo = "****************";
    }
    return "${cardNo.substring(0, 4)} ${cardNo.substring(4, 8)} ${cardNo.substring(8, 12)} ${cardNo.substring(12)}";
  }

  String getCardExpiryDate() {
    String expiryDate = cardItemInfo.exp;
    if (expiryDate.isEmpty) {
      expiryDate = "****";
    }
    return "Exp. ${expiryDate.substring(2, 4)}/${expiryDate.substring(0, 2)}";
  }
}
