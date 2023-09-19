import 'dart:developer';

import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:flutter/material.dart';

class ApplyCard extends StatefulWidget {
  const ApplyCard({super.key});

  @override
  State<ApplyCard> createState() => _ApplyCardState();
}

class _ApplyCardState extends State<ApplyCard> {
  final TextEditingController _socialIdController = TextEditingController();

  onClickApply() {
    var input = _socialIdController.value.text.trim();
    if (input.isEmpty) {
      showToast(Tips.checkInputSocialId.value);
      return;
    }

    CardService.getInstance().applyCard(context, input).then((value) {
      if (value.code == 1) {
        Navigator.pop(context, true);
      } else {
        log(value.msg);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.95),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: size.width * 0.8,
                  height: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      Center(child: createDialogTitle('Apply Card')),
                      const SizedBox(height: 20),
                      const Text(
                        'Social Id',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextField(
                        controller: _socialIdController,
                        maxLines: 10,
                        minLines: 1,
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
                      const Spacer(),
                      BottomButton(
                        icon: 'asset/images/icon_confirm_green.png',
                        text: 'Apply Card',
                        onPressed: () {
                          onClickApply();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                BottomWhiteButton(
                  icon: 'asset/images/icon_close_white.png',
                  text: 'CANCEL',
                  onPressed: (){
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ));
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}
