import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cryptos/token_activity.dart';
import 'package:flutter/material.dart';

class CryptoTokenItem extends StatelessWidget {
  final TokenInfo tokenInfo;
  const CryptoTokenItem({super.key, required this.tokenInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.only(left: 20, right: 20),
        height: 68,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TokenActivity(tokenInfo: tokenInfo)));
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Row(
                  children: [
                    Image(image: AssetImage(tokenInfo.iconUrl)),
                    const SizedBox(width: 10),
                    Text(tokenInfo.name),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(tokenInfo.balance.toString(),
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("\$ ${tokenInfo.balanceOfDollar}",
                      textAlign: TextAlign.right),
                ],
              )
            ],
          ),
        ));
  }
}
