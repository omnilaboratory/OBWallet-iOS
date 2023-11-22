import 'package:awallet/bean/my_reward_info.dart';
import 'package:awallet/bean/my_user_info.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            Text(info.index.toString(),
                style: const TextStyle(
                  fontSize: 14,
                )),
            Text(info.amount.toString(),
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
