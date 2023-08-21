import 'dart:developer';

import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/home.dart';
import 'package:awallet/logins/sign_up_step1.dart';
import 'package:awallet/src/generated/user.pbgrpc.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() {
    LocalStorage.initSP();
    super.initState();
  }

  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // _unameController.text = "254698748@qq.com";
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 80, right: 20),
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("asset/images/image_logo.png"),
                width: 72,
                height: 72,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Text(
                    'Wallet Description',
                    style: TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.29,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 43),
          const Image(image: AssetImage("asset/images/image_logo_banner.png")),
          const SizedBox(height: 43),
          Stack(alignment: AlignmentDirectional.bottomEnd, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 320,
                  height: 260,
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
                  child: buildInputFields(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpStepOne()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Color(0xFF06D78F),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 20),
              child: buildLoginBtn(context),
            )
          ])
        ]),
      ),
    ));
  }

  Widget buildLoginBtn(BuildContext context) {
    if (LocalStorage.get("username") != null) {
      _unameController.text = LocalStorage.get("username");
    }
    if (LocalStorage.get("password") != null) {
      _pswController.text = LocalStorage.get("password");
    }
    return InkWell(
      onTap: () {
        if ((_formKey.currentState as FormState).validate()) {
          log(_unameController.value.text);
          log(_pswController.value.text);
          login();
        }
      },
      child: Container(
        width: 88,
        height: 80,
        decoration: ShapeDecoration(
          color: const Color(0xFF06D78F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x421CBF87),
              blurRadius: 10,
              offset: Offset(6, 6),
              spreadRadius: 0,
            )
          ],
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image(
                image: AssetImage("asset/images/btn_arrow-right.png"),
                width: 36,
                height: 36,
              )
            ]),
      ),
    );
  }

  Widget buildInputFields() {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _unameController,
              decoration: const InputDecoration(
                  labelText: "Username",
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person)),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "wrong username";
              },
            ),
            const SizedBox(height: 30),
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
          ],
        ),
      ),
    );
  }

  void login() {
    var username = _unameController.value.text.trim();
    var password = _pswController.value.text.trim();
    UserService.getInstance().signIn(username, password).then((loginInfo) {
      if (loginInfo.code == 1) {
        LocalStorage.save("username", username);
        LocalStorage.save("password", password);

        UserService.getInstance().getUserInfo().then((userInfoResp) {
          if (userInfoResp.code == 1) {
            var userInfo = userInfoResp.data as GetUserInfoResponse;
            CommonService.userInfo = userInfo.user;
          } else {
            log(userInfoResp.msg);
          }
        });

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );

      } else {
        log(loginInfo.msg);
      }
    });
  }
}
