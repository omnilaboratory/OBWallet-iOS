import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../component/bottom_button.dart';

class CardPsw extends StatefulWidget {
  String cardNo;

  CardPsw({super.key, required this.cardNo});

  @override
  State<CardPsw> createState() => _CardPswState();
}

class _CardPswState extends State<CardPsw> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();

  @override
  void initState() {
    _cardNumberController.text = widget.cardNo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      width: size.width * 0.8,
                      height: size.height * 0.55,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 28, bottom: 20),
                                child: createDialogTitle(
                                    S.of(context).card_newPsw),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              S.of(context).recharge_CardNumber,
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 6),
                            createTextFormField(_cardNumberController,
                                S.of(context).recharge_CardNumber,
                                enabled: false),
                            const SizedBox(height: 40),
                            Text(
                              S.of(context).common_NewPsw,
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 6),
                            createTextFormField(
                                _pswController, S.of(context).common_NewPsw,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]'))
                                ],
                                obscureText: true,
                                maxLength: 6),
                            const Spacer(),
                            BottomButton(
                              icon: 'asset/images/icon_confirm_green.png',
                              text: S.of(context).common_Ok.toUpperCase(),
                              onPressed: () {
                                FocusScope.of(context).requestFocus(FocusNode());
                                if ((_formKey.currentState as FormState)
                                    .validate()) {
                                  onClickOK();
                                }
                              },
                            )
                          ]),
                    ),
                    const SizedBox(height: 20),
                    BottomWhiteButton(
                      icon: 'asset/images/icon_close_white.png',
                      text: S.of(context).common_Cancel.toUpperCase(),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  void onClickOK() {
    if (_cardNumberController.value.text.toString().isEmpty) {
      showToast(S.of(context).tips_emptyCardNumber);
      return;
    }

    var loading = showLoading(context);
    var req = SetCardPwdRequest();
    req.cardNo = widget.cardNo;
    req.pwd = _pswController.value.text.trim();
    CardService.getInstance().setCardPwd(context, req).then((resp) async {
      if (resp.code == 1) {
        Navigator.pop(context, true);
      }
      removeLoading(loading);
    });
  }
}
