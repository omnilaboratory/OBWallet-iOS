import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/cryptos/export_wif_step_one.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    Fluttertoast.showToast(
        msg: "WIF is on your Clipboard", gravity: ToastGravity.CENTER);
    Clipboard.setData(
        ClipboardData(text: LocalStorage.get(LocalStorage.ethPrivateKey)));
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
        child: Column(children: [
          const SizedBox(height: 80),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0),
            ),
            width: size.width * 0.8,
            height: size.height * 0.65,
            child: Column(
              children: [
                const SizedBox(height: 30),
                createText('Export WIF'),
                const Padding(
                  padding: EdgeInsets.only(top: 90),
                  child: Image(
                      width: 100,
                      height: 100,
                      image:
                          AssetImage("asset/images/icon_qrcode_default.png")),
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
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringTools.starString(
                              LocalStorage.get(LocalStorage.ethPrivateKey),
                              maxLength: 26),
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF999999),
                            fontWeight: FontWeight.w500,
                            height: 1.47,
                          ),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Clipboard.setData(ClipboardData(
                                text: LocalStorage.get(
                                    LocalStorage.ethPrivateKey)));
                            Fluttertoast.showToast(
                                msg: "WIF is on your Clipboard",
                                gravity: ToastGravity.CENTER);
                          },
                          child: const Image(
                            width: 16,
                            height: 16,
                            image:
                                AssetImage("asset/images/icon_copy_gray.png"),
                          ),
                        ),
                      ]),
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
    );
  }
}
