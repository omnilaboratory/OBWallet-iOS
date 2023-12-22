import 'package:awallet/bean/my_reward_info.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var rewardItemCircleClrs = [Colors.grey, Colors.green];

class MyRewardItem extends StatelessWidget {
  final MyRewardInfo info;

  const MyRewardItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 12,
              height: 12,
              margin: const EdgeInsets.only(top: 4),
              decoration: BoxDecoration(
                  color: rewardItemCircleClrs[info.status],
                  borderRadius: BorderRadius.circular(6)),
            ),
            Text(info.index.toString(),
                style: const TextStyle(
                  fontSize: 14,
                )),
            Text('\$${info.amount}',
                style: const TextStyle(
                  fontSize: 14,
                )),
            Text(DateFormat("yyyy.MM.dd hh:mm a").format(info.createTime),
                style: const TextStyle(
                  fontSize: 14,
                )),
          ]),
    );
  }
}
