import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/cryptos/export_wif_step_two.dart';
import 'package:flutter/material.dart';

class ExportWifStepOne extends StatefulWidget {
  const ExportWifStepOne({super.key});

  @override
  State<ExportWifStepOne> createState() => _ExportWifStepOneState();
}

class _ExportWifStepOneState extends State<ExportWifStepOne> {
  onNext() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return const ExportWifStepTwo();
        });
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
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.8,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25, top: 45),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
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
                      fontWeight: FontWeight.w400,
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
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BottomButton(
                        icon: 'asset/images/icon_arrow_right_green.png',
                        text: 'NEXT',
                        onPressed: onNext,
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