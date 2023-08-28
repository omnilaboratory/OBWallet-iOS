import 'package:awallet/bean/token_info.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';

class CryptoTokenCard extends StatefulWidget {
  final TokenInfo tokenInfo;

  const CryptoTokenCard({super.key, required this.tokenInfo});

  @override
  State<CryptoTokenCard> createState() => _CryptoTokenCardState();
}

class _CryptoTokenCardState extends State<CryptoTokenCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // width: 320 * 1.2,
          height: 110,
          padding: const EdgeInsets.only(left: 28),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/images/image_bg_token_card.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "${StringTools.formatCryptoNum(widget.tokenInfo.balance)} ${widget.tokenInfo.name}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                          "\$ ${StringTools.formatCurrencyNum(widget.tokenInfo.balanceOfDollar)}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Container(
                    width: 38,
                    height: 38,
                    decoration: const ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(image: AssetImage(widget.tokenInfo.iconUrl)),
                    )),
              )
            ],
          ),
        ),
        Visibility(
          visible: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 12),
            child: Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Local: ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6499999761581421),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const TextSpan(
                        text: '0.036000 BTC',
                        style: TextStyle(
                          color: Color(0xA506D78F),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Remote: ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6499999761581421),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const TextSpan(
                        text: '0.028000 BTC',
                        style: TextStyle(
                          color: Color(0xFF638AC1),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
        ),
        const Visibility(
          visible: false,
          child: LinearProgressIndicator(
            minHeight: 12,
            value: 0.2,
            backgroundColor: Color(0xFF638AC1),
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF06D78F)),
          ),
        ),
      ],
    );
  }
}
