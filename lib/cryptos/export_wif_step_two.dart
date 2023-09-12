import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/cryptos/export_wif_step_one.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ExportWifStepTwo extends StatefulWidget {
  const ExportWifStepTwo({super.key});

  @override
  State<ExportWifStepTwo> createState() => _ExportWifStepTwoState();
}

class _ExportWifStepTwoState extends State<ExportWifStepTwo> {
  onBack() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return const ExportWifStepOne();
        });
  }

  onCopy() {
    showToast(Tips.wifIsOnClipboard.value,toastLength: Toast.LENGTH_SHORT);
    Clipboard.setData(
        ClipboardData(text: LocalStorage.getEthPrivateKey()));
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: size.width * 0.8,
              height: 450,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  createDialogTitle('Export WIF'),
                  const SizedBox(height: 30),
                  QrImageView(
                    data: LocalStorage.getEthPrivateKey(),
                    version: QrVersions.auto,
                    size: 160,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'WIF',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  GestureDetector(
                    onTap: () {
                      Clipboard.setData(ClipboardData(
                          text: LocalStorage.getEthPrivateKey()));
                      showToast(Tips.wifIsOnClipboard.value,
                          toastLength: Toast.LENGTH_SHORT);
                    },
                    child: Text(
                      StringTools.starString(
                          LocalStorage.getEthPrivateKey(),
                          maxLength: 26),
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF999999),
                        fontWeight: FontWeight.w500,
                        height: 1.47,
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BottomButton(
                          icon: 'asset/images/icon_arrow_left_green.png',
                          text: 'BACK',
                          onPressed: onBack,
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        BottomButton(
                          icon: 'asset/images/icon_copy_green.png',
                          text: 'COPY',
                          onPressed: onCopy,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            BottomWhiteButton(
              icon: 'asset/images/icon_close_white.png',
              text: 'CANCEL',
              onPressed: onClose,
            )
          ]),
        ),
      ),
    );
  }
}
