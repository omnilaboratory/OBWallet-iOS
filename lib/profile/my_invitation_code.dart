import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
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
                          child: createDialogTitle(
                              S.of(context).profile_home_InvitationCode),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Clipboard.setData(
                              ClipboardData(text: invitationCode!));
                          showToast(S.of(context).tips_codeIsOnClipboard);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(invitationCode!,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 40,
                                )),
                            const SizedBox(width: 10),
                            Image.asset(
                              'asset/images/icon_copy_green.png',
                              width: 40,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      BottomButton(
                        icon: 'asset/images/icon_confirm_green.png',
                        text: S.of(context).common_Ok.toUpperCase(),
                        fontSize: 20,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ]),
              ),
            ])))));
  }
}
