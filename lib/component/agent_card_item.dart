import 'package:awallet/cards/physical_card_active.dart';
import 'package:awallet/protos/gen-dart/user/card.pb.dart';
import 'package:flutter/material.dart';

class AgentCardItem extends StatefulWidget {
  CardInfo cardInfo;

  AgentCardItem({super.key, required this.cardInfo});

  @override
  State<AgentCardItem> createState() => _AgentCardItemState();
}

class _AgentCardItemState extends State<AgentCardItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.cardInfo.pcardStatus == 0) {
          showDialog(
              context: context,
              builder: (context) {
                return PhysicalCardActive(
                    cardNo: widget.cardInfo.cardNo);
              });
        }
      },
      child: Container(
        color: Colors.lightGreenAccent,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        margin: const EdgeInsets.only(bottom: 6),
        child: Column(
          children: [
            Row(
              children: [
                Text(widget.cardInfo.userName),
                const Spacer(),
                Text(widget.cardInfo.userEmail),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(widget.cardInfo.cardNo),
                const Spacer(),
                Text(widget.cardInfo.pcardStatus == 0 ? "Inactive" : "Active"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
