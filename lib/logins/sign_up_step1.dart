import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
import 'package:awallet/utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'apply_card_step_one.dart';

class SignUpStepOne extends StatefulWidget {
  const SignUpStepOne({super.key});

  @override
  State<SignUpStepOne> createState() => _SignUpStepOneState();
}

class _SignUpStepOneState extends State<SignUpStepOne> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final TextEditingController _psw2Controller = TextEditingController();
  final TextEditingController _inviteCodeController = TextEditingController();

  String passwordTitle = S.current.common_CodeLeve1;

  VerifyCodeResponse? verifyCodeResponse;

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
    var email = _emailController.value.text.trim();
    if (email.isEmpty || !EmailValidator.validate(email)) {
      showToast(S.of(context).tips_WrongEmail);
      return;
    }

    if (codeTimer != null) {
      if (codeTimer!.isActive) {
        showToast(S.of(context).tips_waiting);
        return;
      }
    }

    createTimer();

    UserService.getInstance()
        .verifyCode(context, _emailController.value.text)
        .then((resp) => {
              if (resp.code == 0)
                {showToast(resp.msg)}
              else
                {verifyCodeResponse = resp.data}
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 55),
          buildInputField(),
          const SizedBox(height: 20),
          buildButtons(context)
        ])),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Text(S.of(context).signUp_Title,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ))
        ]));
  }

  Row buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomButton(
          icon: 'asset/images/icon_arrow_left_green.png',
          text: S.of(context).common_Back,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        BottomButton(
          icon: 'asset/images/icon_arrow_right_green.png',
          text: S.of(context).common_Next,
          onPressed: () {
            if ((_formKey.currentState as FormState).validate()) {
              signUp();
            }
          },
        ),
      ],
    );
  }

  Container buildInputField() {
    return Container(
      width: 320,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x7AAAA9DD),
            blurRadius: 10,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            createTextFormField(
                _unameController,
                S.of(context).signUp_Nickname,
                icon: const Icon(Icons.person_pin),
                maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(
                _emailController,
                S.of(context).common_Email,
                icon: const Icon(Icons.email),
                maxLength: 50,
                keyboardType: TextInputType.emailAddress),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: 180,
                    child: createTextFormField(
                        _codeController,
                        S.of(context).common_VerifyCode,
                        icon: const Icon(Icons.verified_user_outlined),
                        maxLength: 6,
                        keyboardType: TextInputType.number),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                      onTap: () {
                        getVerifyCode();
                      },
                      child: AutoSizeText(
                        getCodeTitle,
                        maxLines: 1,
                        maxFontSize: 12,
                        minFontSize: 6,
                        style: TextStyle(
                            color: getCodeTitleEnable
                                ? Colors.lightBlue
                                : Colors.grey),
                      )),
                )
              ],
            ),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    width: 180,
                    child: TextFormField(
                      controller: _pswController,
                      maxLines: 1,
                      maxLength: 16,
                      decoration: InputDecoration(
                        hintText: S.of(context).common_Password,
                        hintStyle: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                        prefixIcon: const Icon(Icons.password),
                        border: outlineInputBorder,
                        focusedBorder: outlineInputBorder,
                        enabledBorder: outlineInputBorder,
                        disabledBorder: outlineInputBorder,
                        focusedErrorBorder: outlineInputBorder,
                        errorBorder: outlineInputBorder,
                        contentPadding:
                            const EdgeInsets.only(right: 4, top: 1, bottom: 1),
                      ),
                      obscureText: true,
                      onChanged: (v) {
                        updatePswStrength(_pswController.text);
                      },
                      validator: (v) {
                        return v!.trim().isNotEmpty ? null : "${S.of(context).common_Wrong}${S.of(context).common_NewPsw}";
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                    flex: 1,
                    child: Text(passwordTitle,
                        style: const TextStyle(color: Colors.blue))),
              ],
            ),
            const SizedBox(height: 15),
            createTextFormField(
                _psw2Controller,
                S.of(context).common_ConfirmNewPsw,
                icon: const Icon(Icons.password),
                obscureText: true,
                maxLength: 16),
            const SizedBox(height: 15),
            createTextFormField(
                _inviteCodeController,
                S.of(context).signUp_InvitationCode ,
                icon: const Icon(Icons.insert_invitation_sharp),
                maxLength: 6),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  updatePswStrength(String psw) {
    int strength = Utils.getStrength(psw);
    if (strength < 1) {
      passwordTitle = S.of(context).common_CodeLeve1;
    }
    if (strength == 2) {
      passwordTitle = S.of(context).common_CodeLeve2;
    }
    if (strength > 2) {
      passwordTitle = S.of(context).common_CodeLeve3;
    }
    setState(() {});
  }

  void signUp() {
    SignUpRequest signUpRequest = SignUpRequest();
    signUpRequest.email = _emailController.value.text.trim();
    if (!EmailValidator.validate(signUpRequest.email)) {
      showToast(S.of(context).tips_WrongEmail);
      return;
    }
    if (verifyCodeResponse == null) {
      showToast(S.of(context).tips_getVerifyCode);
      return;
    }

    signUpRequest.vcode = _codeController.value.text.trim();
    signUpRequest.password = _pswController.value.text.trim();
    signUpRequest.confirmPassword = _psw2Controller.value.text.trim();
    if (signUpRequest.password != signUpRequest.confirmPassword) {
      showToast(S.of(context).tips_wrongPassMatch);
      return;
    }
    signUpRequest.userName = _unameController.value.text.trim();
    signUpRequest.verifyCodeId = verifyCodeResponse!.verifyCodeId;
    signUpRequest.registCode =  _inviteCodeController.value.text.trim();

    UserService.getInstance()
        .signUp(context, signUpRequest)
        .then((value) async {
      if (value.code == 1) {
        CommonService.isSignUp = true;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ApplyCardStepOne()));
      }
    });
  }
}
