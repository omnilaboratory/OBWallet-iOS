import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/cryptos/token_activity.dart';
import 'package:awallet/protos/gen-dart/user/account.pb.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

class CryptoTokenItem extends StatelessWidget {
  final TokenInfo tokenInfo;

  const CryptoTokenItem({super.key, required this.tokenInfo});

  @override
  Widget build(BuildContext context) {
    List<Widget> nameAndNet = [];
    nameAndNet.add(Text(
      tokenInfo.name,
      style: const TextStyle(
        color: Color(0xFF666666),
        fontSize: 18,
        // fontWeight: FontWeight.w600,
      ),
    ));
    if (tokenInfo.netName.isNotEmpty) {
      nameAndNet.add(Text(
        tokenInfo.netName,
        style: const TextStyle(
          color: Color(0xFF666666),
          fontSize: 14,
          // fontWeight: FontWeight.w600,
        ),
      ));
    }

    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding:
            const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: InkWell(
          onTap: () {
            if (tokenInfo.netName.isEmpty) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TokenActivity(tokenInfo: tokenInfo)));
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Send(name: 'USDT',netName: NetWork.POLYGON.name);
                  });
            }
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Image(
                        width: 30,
                        height: 30,
                        image: AssetImage(tokenInfo.iconUrl)),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: nameAndNet,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    child: Text(StringTools.formatCryptoNum(tokenInfo.balance),
                        maxLines: 1,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 19,
                        )),
                  ),
                  SizedBox(
                    // width: size.width - 180,
                    child: Text(
                      "\$${StringTools.formatCurrencyNum(tokenInfo.balanceOfDollar)}",
                      maxLines: 1,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
