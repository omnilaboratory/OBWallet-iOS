import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/logins/sign_up_step2.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpStepOne extends StatefulWidget {
  const SignUpStepOne({super.key});

  @override
  State<SignUpStepOne> createState() => _SignUpStepOneState();
}

class _SignUpStepOneState extends State<SignUpStepOne> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final TextEditingController _psw2Controller = TextEditingController();

  VerifyCodeResponse? verifyCodeResponse;

  getVerifyCode() async {
    var email = _emailController.value.text.trim();
    if (email.isEmpty || !EmailValidator.validate(email)) {
      Fluttertoast.showToast(msg: "wrong email", gravity: ToastGravity.CENTER);
      return;
    }
    UserService.getInstance()
        .verifyCode(_emailController.value.text)
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
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 55),
        buildTitle(),
        const SizedBox(height: 55),
        buildInputField(),
        const SizedBox(height: 20),
        buildButtons(context)
      ])),
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
      height: 450,
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
            const SizedBox(height: 10),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",
                  prefixIcon: Icon(Icons.person)),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong Email";
              },
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 180,
                  child: TextFormField(
                    controller: _codeController,
                    decoration: const InputDecoration(
                        labelText: "Code",
                        hintText: "Code",
                        prefixIcon: Icon(Icons.build_outlined)),
                    validator: (v) {
                      return v!.trim().isNotEmpty ? null : "wrong Code";
                    },
                  ),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {
                      getVerifyCode();
                    },
                    child: const Text("Get code"))
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _pswController,
              decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong password";
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _psw2Controller,
              decoration: const InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock)),
              obscureText: true,
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong Confirm Password";
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _unameController,
              decoration: const InputDecoration(
                  labelText: "Nickname",
                  hintText: "Nickname",
                  prefixIcon: Icon(Icons.person)),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong Nickname";
              },
            ),
          ],
        ),
      ),
    );
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
                fontFamily: 'MS UI Gothic',
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
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  void signUp() {
    if (verifyCodeResponse == null) {
      Fluttertoast.showToast(msg: "please get verifyCode first");
      return;
    }
    SignUpRequest signUpRequest = SignUpRequest();
    signUpRequest.email = _emailController.value.text.trim();
    signUpRequest.password = _pswController.value.text.trim();
    signUpRequest.confirmPassword = _psw2Controller.value.text.trim();
    signUpRequest.userName = _unameController.value.text.trim();
    signUpRequest.vcode = _codeController.value.text.trim();
    signUpRequest.verifyCodeId = verifyCodeResponse!.verifyCodeId;
    UserService.getInstance().signUp(signUpRequest).then((value) async {
      if (value.code == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignUpStepTwo()));
      } else {
        log(value.msg);
      }
    });
  }
}
