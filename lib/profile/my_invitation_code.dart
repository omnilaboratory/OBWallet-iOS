import 'dart:developer';

import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyInvitationCode extends StatefulWidget {
  const MyInvitationCode({super.key});

  @override
  State<MyInvitationCode> createState() => _MyInvitationCodeState();
}

class _MyInvitationCodeState extends State<MyInvitationCode> {
  String? invitationCode = CommonService.userInfo?.invitationCode;

  @override
  Widget build(BuildContext context) {
    log("${CommonService.userInfo}");
    if (invitationCode == null || invitationCode!.isEmpty) {
      invitationCode = "no code";
    }

    var size = MediaQuery.of(context).size;
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
            body: Center(
                child: SingleChildScrollView(
                    child: Column(children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28, bottom: 10),
                          child: createDialogTitle('My Invitation Code'),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                              ClipboardData(text: invitationCode!));
                          showToast(Tips.codeIsOnClipboard.value);
                        },
                        child: Text(invitationCode!,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 40,
                            )),
                      )),
                      const SizedBox(
                        height: 40,
                      ),
                      BottomButton(
                        icon: 'asset/images/icon_confirm_green.png',
                        text: 'OK',
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ]),
              ),
            ])))));
  }
}
