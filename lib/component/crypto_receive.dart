import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'bottom_button.dart';

class CryptoReceive extends StatelessWidget {
  final String address;
  final String tips;
  final double qrSize;

  const CryptoReceive(
      {super.key,
      required this.address,
      required this.tips,
      this.qrSize = 100});

  onShare(BuildContext context) {}

  onCopy(BuildContext context) {
    Fluttertoast.showToast(
        msg: "address is on your Clipboard",
        gravity: ToastGravity.CENTER);
    Clipboard.setData(ClipboardData(text: address));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  width: 30,
                  height: 30,
                  image: AssetImage("asset/images/icon_smile.png")),
              const SizedBox(width: 8),
              Expanded(
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
          padding: const EdgeInsets.only(top: 20),
          child: QrImageView(
            data: address,
            version: QrVersions.auto,
            size: qrSize,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15),
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
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              address,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF999999),
                fontWeight: FontWeight.w500,
                height: 1.47,
              ),
            ),
            const SizedBox(width: 5),
            InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: address));
                Fluttertoast.showToast(
                    msg: "address is on your Clipboard",
                    gravity: ToastGravity.CENTER);
              },
              child: const Image(
                  width: 16,
                  height: 16,
                  image: AssetImage("asset/images/icon_copy_gray.png")),
            ),
          ]),
        ),
        const SizedBox(height: 30),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
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
      ],
    );
  }
}
