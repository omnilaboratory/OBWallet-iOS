import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cryptos/token_activity.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

class CryptoTokenItem extends StatelessWidget {
  final TokenInfo tokenInfo;

  const CryptoTokenItem({super.key, required this.tokenInfo});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        padding:
            const EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Color(0x7AABAADD),
              blurRadius: 5.0,
              offset: Offset(2.0, 2.0),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Image(
                        width: 20,
                        height: 20,
                        image: AssetImage(tokenInfo.iconUrl)),
                    const SizedBox(width: 5),
                    Text(
                      tokenInfo.name,
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
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
                    width: size.width - 180,
                    child: AutoSizeText(
                        StringTools.formatCryptoNum(tokenInfo.balance),
                        maxLines: 1,
                        maxFontSize: 28,
                        minFontSize: 14,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          color: Color(0xFF333333),
                          fontWeight: FontWeight.w700,
                        )),
                  ),
                  SizedBox(
                    width: size.width - 180,
                    child: AutoSizeText(
                      "\$ ${StringTools.formatCurrencyNum(tokenInfo.balanceOfDollar)}",
                      maxLines: 1,
                      maxFontSize: 24,
                      minFontSize: 10,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Color(0xFF999999),
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
