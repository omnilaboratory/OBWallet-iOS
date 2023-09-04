import 'dart:async';
import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:fluttertoast/fluttertoast.dart';

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

  String passwordTitle = "Weak";

  VerifyCodeResponse? verifyCodeResponse;

  String getCodeTitle = "Get code";
  bool getCodeTitleEnable = true;
  Timer? codeTimer;

  createTimer() {
    if (codeTimer == null || !codeTimer!.isActive) {
      codeTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
        log("${timer.tick}");
        var currTick = 60 - timer.tick;
        if (currTick > 0) {
          getCodeTitleEnable = false;
          getCodeTitle = "Get code(${currTick}s)";
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
      getCodeTitle = "Get code";
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
      Fluttertoast.showToast(msg: "wrong email", gravity: ToastGravity.CENTER);
      return;
    }

    if (codeTimer != null) {
      if (codeTimer!.isActive) {
        Fluttertoast.showToast(msg: "please waiting");
        return;
      }
    }

    createTimer();

    UserService.getInstance()
        .verifyCode(context, _emailController.value.text)
        .then((resp) => {
              if (resp.code == 0)
                {
                  Fluttertoast.showToast(
                      msg: resp.msg, gravity: ToastGravity.CENTER)
                }
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
          buildTitle(),
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
        title: const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image(
              width: 24,
              height: 33,
              image: AssetImage("asset/images/logo_head.png")),
          Text('Sign Up',
              style: TextStyle(
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
          text: 'BACK',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        BottomButton(
          icon: 'asset/images/icon_arrow_right_green.png',
          text: 'NEXT',
          onPressed: () {
            signUp();
          },
        ),
      ],
    );
  }

  Container buildInputField() {
    return Container(
      width: 320,
      height: 480,
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
            buildInputColumn("Email", _emailController, width: 300),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildInputColumn("Verify Code", _codeController,
                    width: 160, maxLength: 8),
                // const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 4, top: 14),
                  child: TextButton(
                      onPressed: () {
                        getVerifyCode();
                      },
                      child: Text(
                        getCodeTitle,
                        style: TextStyle(
                            fontSize: 12,
                            color: getCodeTitleEnable
                                ? Colors.lightBlue
                                : Colors.grey),
                      )),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildInputColumn("Password", _pswController,
                    width: 200, maxLength: 16),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(passwordTitle,
                      style: const TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            buildInputColumn("Confirm Password", _psw2Controller,
                width: 272, maxLength: 16),
            const SizedBox(height: 20),
            buildInputColumn("Nickname", _unameController,
                width: 272, maxLength: 28),
          ],
        ),
      ),
    );
  }

  Column buildInputColumn(String title, TextEditingController controller,
      {double width = 180, maxLength = 50}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF999999),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          width: width,
          height: 48,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.80, color: Color(0xFFE6E6E6)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: TextFormField(
            controller: controller,
            maxLines: 1,
            obscureText: title.contains("Password"),
            onChanged: (v) {
              if (title == "Email") {
                resetCode();
              }
              if (title == "Password") {
                updatePswStrength(controller.text);
              }
              if (controller.value.text.trim().length > maxLength) {
                controller.text = controller.text.substring(0, maxLength);
                Fluttertoast.showToast(msg: "too long $title($maxLength)");
              }
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }

  updatePswStrength(String psw) {
    int strength = Utils.getStrength(psw);
    if (strength < 1) {
      passwordTitle = "Weak";
    }
    if (strength == 2) {
      passwordTitle = "Normal";
    }
    if (strength > 2) {
      passwordTitle = "Strong";
    }
    setState(() {});
  }

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFFEC9A1E),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Step 1',
          style: TextStyle(
            color: Color(0xD6EC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Dash(
              direction: Axis.horizontal,
              dashLength: 4,
              length: 45,
              dashColor: Color(0xFF999999)),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFF999999),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Step 2',
          style: TextStyle(
            color: Color(0xD6999999),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  void signUp() {
    SignUpRequest signUpRequest = SignUpRequest();
    signUpRequest.email = _emailController.value.text.trim();
    if (!Utils.isEmailValid(signUpRequest.email)) {
      Fluttertoast.showToast(msg: "wrong email");
      return;
    }

    if (verifyCodeResponse == null) {
      Fluttertoast.showToast(msg: "please get verifyCode first");
      return;
    }

    signUpRequest.vcode = _codeController.value.text.trim();
    if (signUpRequest.vcode == "") {
      Fluttertoast.showToast(msg: "wrong verify code");
      return;
    }

    signUpRequest.password = _pswController.value.text.trim();
    if (!Utils.isLoginPassword(signUpRequest.password)) {
      Fluttertoast.showToast(msg: "wrong password");
      return;
    }


    signUpRequest.confirmPassword = _psw2Controller.value.text.trim();
    if (signUpRequest.password != signUpRequest.confirmPassword) {
      Fluttertoast.showToast(msg: "wrong password and confirmPassword");
      return;
    }

    signUpRequest.userName = _unameController.value.text.trim();
    if (signUpRequest.userName.isNotEmpty) {
      if (!Utils.isNickname(signUpRequest.userName)) {
        Fluttertoast.showToast(msg: "wrong nickName");
        return;
      }
    }

    signUpRequest.verifyCodeId = verifyCodeResponse!.verifyCodeId;
    UserService.getInstance()
        .signUp(context, signUpRequest)
        .then((value) async {
      if (value.code == 1) {
        LocalStorage.remove(LocalStorage.ethAddress);
        LocalStorage.remove(LocalStorage.ethPrivateKey);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ApplyCardStepOne()));
      }
    });
  }
}
