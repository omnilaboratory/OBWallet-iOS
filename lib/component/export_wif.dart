import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:flutter/material.dart';

class ExportWif extends StatefulWidget {
  const ExportWif({super.key});

  @override
  State<ExportWif> createState() => _ExportWifState();
}

class _ExportWifState extends State<ExportWif> {
  onNext() {
    Navigator.pop(context);
  }

  onBack() {
    Navigator.pop(context);
  }

  onCopy() {
    Navigator.pop(context);
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
                const Text(
                  'Export WIF',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                  ),
                ),
                Visibility(
                    visible: true,
                    child: Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.8,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 25, top: 45),
                            child: Text(
                              'Password',
                              style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 5),
                          child: TextField(
                            maxLines: 10,
                            minLines: 1,
                            onChanged: (text) {
                              setState(() {});
                            },
                            keyboardType: TextInputType.visiblePassword,
                            cursorColor: const Color(0xFF4A92FF),
                            style: const TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 14,
                            ),
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 7),
                              isCollapsed: true,
                              border: _outlineInputBorder,
                              focusedBorder: _outlineInputBorder,
                              enabledBorder: _outlineInputBorder,
                              disabledBorder: _outlineInputBorder,
                              focusedErrorBorder: _outlineInputBorder,
                              errorBorder: _outlineInputBorder,
                            ),
                          ),
                        )
                      ],
                    )),
                const Visibility(
                  visible: false,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 90),
                        child: Image(
                            width: 100,
                            height: 100,
                            image: AssetImage(
                                "asset/images/icon_qrcode_default.png")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          'WIF',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "2533464754865976HFDGE5437",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF999999),
                                ),
                              ),
                              SizedBox(width: 5),
                              Image(
                                width: 16,
                                height: 16,
                                image: AssetImage(
                                    "asset/images/icon_copy_gray.png"),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 50, right: 50, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: true,
                        child: BottomButton(
                          icon: 'asset/images/icon_arrow_right_green.png',
                          text: 'NEXT',
                          onPressed: onNext,
                        ),
                      ),
                      Visibility(
                        visible: false,
                        child: BottomButton(
                          icon: 'asset/images/icon_arrow_left_green.png',
                          text: 'BACK',
                          onPressed: onBack,
                        ),
                      ),
                      const Visibility(
                        visible: false,
                        child: Spacer(
                          flex: 1,
                        ),
                      ),
                      Visibility(
                        visible: false,
                        child: BottomButton(
                          icon: 'asset/images/icon_copy_green.png',
                          text: 'COPY',
                          onPressed: onCopy,
                        ),
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

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}
