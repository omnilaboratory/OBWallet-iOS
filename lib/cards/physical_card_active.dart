import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

class PhysicalCardActive extends StatefulWidget {
  const PhysicalCardActive({
    super.key,
  });

  @override
  State<PhysicalCardActive> createState() => _PhysicalCardActiveState();
}

class _PhysicalCardActiveState extends State<PhysicalCardActive> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cardNoController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  String verifyCodeResponse = "";
  String getCodeTitle = S.current.common_GetCode;
  bool getCodeTitleEnable = true;
  Timer? codeTimer;

  createTimer() {
    if (codeTimer == null || !codeTimer!.isActive) {
      codeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        var currTick = 60 - timer.tick;
        if (currTick > 0) {
          getCodeTitleEnable = false;
          getCodeTitle = "${S.of(context).common_GetCode}(${currTick}s)";
          setState(() {});
        } else {
          resetCode();
        }
      });
    } else {
      if (codeTimer != null && codeTimer!.isActive) {
        codeTimer!.cancel();
      }
      codeTimer = null;
    }
  }

  resetCode() {
    if (codeTimer != null && codeTimer!.isActive) {
      getCodeTitleEnable = true;
      codeTimer!.cancel();
      getCodeTitle = S.of(context).common_GetCode;
      codeTimer = null;
    }
    setState(() {});
  }

  @override
  void dispose() {
    if (codeTimer != null && codeTimer!.isActive) {
      codeTimer!.cancel();
    }
    super.dispose();
  }

  getVerifyCode() async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (_cardNoController.value.text.isEmpty) {
      showToast("${S.of(context).common_Wrong}${S.of(context).bindCard_cardNo}");
      return;
    }

    if (codeTimer != null) {
      if (codeTimer!.isActive) {
        showToast(S.of(context).tips_waiting);
        return;
      }
    }

    createTimer();

    CardService.getInstance()
        .getCardActivateCode(context, _cardNoController.value.text)
        .then((resp) => {
              if (resp.code == 0)
                {showToast(resp.msg)}
              else
                {verifyCodeResponse = resp.data}
            });
  }

  onConfirm() {
    FocusScope.of(context).requestFocus(FocusNode());
    if ((_formKey.currentState as FormState).validate() == false) {
      return;
    }

    var loading = showLoading(context);
    CardActivateRequest request = CardActivateRequest();
    request.cardNo = _cardNoController.text.trim();
    request.codeToken = verifyCodeResponse;
    request.verifyCode = _codeController.text.trim();
    CardService.getInstance().cardActivate(context, request).then((resp) {
      removeLoading(loading);
      if (resp.code == 1) {
        GlobalParams.eventBus.fire("cardActive_Finish");
        Navigator.pop(context);
      } else {
        alert(resp.msg, context, () {});
      }
    });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    width: size.width * 0.85,
                    height: size.height * 0.45,
                    child: Column(children: [
                      const SizedBox(height: 25),
                      createDialogTitle(S.of(context).bindCard_title),
                      const SizedBox(height: 25),
                      buildInputField(),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomButton(
                              icon: 'asset/images/icon_confirm_green.png',
                              text: S.of(context).common_Confirm.toUpperCase(),
                              onPressed: onConfirm,
                            )
                          ]),
                      const SizedBox(height: 30),
                    ]),
                  ),
                  const SizedBox(height: 30),
                  BottomWhiteButton(
                    icon: 'asset/images/icon_close_white.png',
                    text: S.of(context).common_Cancel.toUpperCase(),
                    onPressed: onClose,
                  )
                ],
              ),
            ),
          )),
    );
  }

  Widget buildInputField() {
    return Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  createTextFormField(
                      _cardNoController, S.of(context).bindCard_cardNo,
                      icon: const Icon(Icons.add_card_outlined), maxLength: 30),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: 120,
                          child: createTextFormField(
                              _codeController, S.of(context).common_VerifyCode,
                              icon: const Icon(Icons.verified_user_outlined),
                              maxLength: 6,
                              keyboardType: TextInputType.number),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                            onTap: () {
                              getVerifyCode();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(0, 0, 0, 0.01),
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              height: 70,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  getCodeTitle,
                                  maxLines: 2,
                                  maxFontSize: 20,
                                  minFontSize: 16,
                                  style: TextStyle(
                                      color: getCodeTitleEnable
                                          ? Colors.lightBlue
                                          : Colors.grey),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
