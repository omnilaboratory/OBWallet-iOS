import 'package:awallet/component/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'bottom_button.dart';

class CryptoReceiveCenter extends StatelessWidget {
  final String address;
  final String tips;
  final double qrSize;

  const CryptoReceiveCenter(
      {super.key,
      required this.address,
      required this.tips,
      this.qrSize = 110});

  onShare(BuildContext context) {
    showToast("Coming Soon...");
  }

  onCopy(BuildContext context) {
    showToast("address is on your Clipboard");
    Clipboard.setData(ClipboardData(text: address));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(
                width: 30,
                height: 30,
                image: AssetImage("asset/images/icon_smile.png")),
            const SizedBox(width: 8),
            SizedBox(
              child: Text(
                tips,
                maxLines: 2,
                style: const TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  height: 1.47,
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: QrImageView(
              data: address,
              version: QrVersions.auto,
              size: qrSize,
            ),
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 2),
                child: Text(
                  'Wallet Address',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  onCopy(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 30, right: 30),
                  child: Text(
                    address,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF999999),
                      fontWeight: FontWeight.w500,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomButton(
                    icon: 'asset/images/icon_share_green.png',
                    text: 'SHARE',
                    onPressed: () {
                      onShare(context);
                    },
                  ),
                  BottomButton(
                    icon: 'asset/images/icon_copy_green.png',
                    text: 'COPY',
                    onPressed: () {
                      onCopy(context);
                    },
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
