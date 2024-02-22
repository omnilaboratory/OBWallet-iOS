
import 'package:awallet/bean/card_item_info.dart';
import 'package:awallet/cards/physical_card_active.dart';
import 'package:awallet/generated/l10n.dart';
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
              height: 200,
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
                      child: Text(
                        type == 0 ? 'Virtual Card' : 'Physical Card',
                        style: const TextStyle(
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
        Visibility(
          visible: cardItemInfo.pcardStatus == 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 154, right: 160),
            child: InkWell(
              onTap: () {

                showDialog(
                    context: context,
                    builder: (context) {
                      return const PhysicalCardActive();
                    });

              },
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Text(S.of(context).realCard_card_active)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 160, right: 20),
          child: Text(
            cardItemInfo.country,
            style: const TextStyle(
              color: Color(0xFF333333),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        buildCardNo(),
        Container(
            padding: const EdgeInsets.only(bottom: 45),
            child: Row(
              children: [
                const SizedBox(width: 20),
                const Text(
                  '\$',
                  style: TextStyle(
                    color: Color.fromARGB(255, 84, 81, 81),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 3),
                Text(
                  // StringTools.formatCurrencyNum(cardItemInfo.balance),
                  '${cardItemInfo.balance}',
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
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
    return Container(
      padding: const EdgeInsets.only(bottom: 100),
      child: GestureDetector(
        onTap: () {
          if (cardItemInfo.cardNo.isNotEmpty) {
            showToast(S.current.tips_cardNoIsOnClipboard);
            Clipboard.setData(ClipboardData(text: cardItemInfo.cardNo));
          }
        },
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
            ),
            const SizedBox(width: 10),
            const Image(
              width: 24,
              height: 24,
              image: AssetImage('asset/images/icon_copy.png'),
              color: Colors.blue,
            )
          ],
        ),
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
