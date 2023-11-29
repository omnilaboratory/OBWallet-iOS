import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/crypto_wallet_info.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common.dart';

class CryptoWalletCard extends StatefulWidget {
  final CryptoWalletInfo walletInfo;

  const CryptoWalletCard({super.key, required this.walletInfo});

  @override
  State<CryptoWalletCard> createState() => _CryptoWalletCardState();
}

class _CryptoWalletCardState extends State<CryptoWalletCard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * 0.9,
      height: 135,
      padding: const EdgeInsets.only(left: 30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asset/images/image_crypto_card_bg.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText("\$ ${StringTools.formatCurrencyNum(widget.walletInfo.balance)}",
            maxLines: 1,
            maxFontSize: 32,
            minFontSize: 28,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white
            )
          ),
          const SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(StringTools.starString(widget.walletInfo.address,maxLength: 30),
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Colors.white)),
              const SizedBox(width: 10),
              GestureDetector(
                  onTap: () {
                    showToast(S.of(context).tips_addressIsOnClipboard);
                    Clipboard.setData(ClipboardData(text: widget.walletInfo.address));
                  },
                  child: const Image(
                      width: 24,
                      height: 24,
                      image: AssetImage('asset/images/icon_copy.png')))
            ],
          ),
        ],
      ),
    );
  }
}
