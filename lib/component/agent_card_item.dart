import 'package:awallet/cards/physical_card_active.dart';
import 'package:awallet/protos/gen-dart/user/card.pb.dart';
import 'package:flutter/material.dart';
import 'package:awallet/generated/l10n.dart';

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
              return PhysicalCardActive(cardNo: widget.cardInfo.cardNo);
            }
          );
        }
      },

      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 61, 149, 236),
          borderRadius: BorderRadius.circular(10.0),
        ),

        child: Column(
          children: [
            Row(
              children: [
                Text(widget.cardInfo.userName, style: const TextStyle(color: Colors.white, fontSize: 16)),
                const Spacer(),
                Text(widget.cardInfo.userEmail, style: const TextStyle(color: Colors.white, fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(widget.cardInfo.cardNo, style: const TextStyle(color: Colors.white)),
                const Spacer(),
                Text(widget.cardInfo.pcardStatus == 0 ? S.of(context).agent_card_inactive : S.of(context).agent_card_active, 
                  style: const TextStyle(color: Colors.white, fontSize: 16)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
