import 'package:flutter/material.dart';

class TokenInfo {
  final String name;
  final String iconUrl;
  IconData? iconData;
  double? balance;
  double? balanceOfDollar;
  String netName;

  TokenInfo(
      {required this.name,
      required this.iconUrl,
      this.iconData,
      this.balance = 0.0,
      this.balanceOfDollar = 0.0,
      this.netName = ""});
}
