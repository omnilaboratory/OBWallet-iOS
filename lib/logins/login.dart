import 'dart:developer';

import 'package:awallet/component/common.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/home.dart';
import 'package:awallet/logins/sign_up_step1.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

import '../grpc_services/card_service.dart';
import 'forget_psw.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();

  @override
  void initState() {
    LocalStorage.initSP().then((value) {
      var userToken = LocalStorage.get(LocalStorage.userToken);
      if (userToken != null && userToken.toString().isNotEmpty) {
        log("login token $userToken");
        autoLogin(userToken);
      }
      Eth.initWeb3Client();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
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
            const Image(
                image: AssetImage("asset/images/image_logo_banner.png")),
            const SizedBox(height: 43),
            Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 320,
                    height: 200,
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
                    padding:
                        const EdgeInsets.only(top: 12, left: 10, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpStepOne()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xFF06D78F),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgetPsw()));
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 15,
                                    decoration: TextDecoration.underline),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40, right: 20),
                child: buildLoginBtn(context),
              )
            ]),
          ]),
        ),
      ),
    ));
  }

  Widget buildLoginBtn(BuildContext context) {
    return InkWell(
      onTap: () {
        if ((_formKey.currentState as FormState).validate()) {
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
    if (LocalStorage.get(LocalStorage.username) != null) {
      _unameController.text = LocalStorage.get(LocalStorage.username);
    }
    if (LocalStorage.get(LocalStorage.password) != null) {
      _pswController.text = LocalStorage.get(LocalStorage.password);
    }
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            createTextFormField(_unameController, "Username",
                icon: const Icon(Icons.person)),
            const SizedBox(height: 20),
            createTextFormField(_pswController, "Password",
                icon: const Icon(Icons.lock), obscureText: true),
          ],
        ),
      ),
    );
  }

  void autoLogin(String localToken) {
    log("autoLogin start");
    CommonService.token = localToken;
    UserService.userServiceClient = null;
    getUserInfoAndGoHome();
  }

  void login() {
    log("login start");
    var username = _unameController.value.text.trim();
    var password = _pswController.value.text.trim();
    LocalStorage.save(LocalStorage.username, username);
    SignInRequest req = SignInRequest();
    req.userName = username;
    req.password = password;
    UserService.getInstance().login(context, req).then((loginInfo) {
      if (loginInfo.code == 1) {
        LocalStorage.save(LocalStorage.password, password);
        LocalStorage.save(
            LocalStorage.userToken, (loginInfo.data as SignInResponse).token);
        getUserInfoAndGoHome();
      }
    });
  }

  void getUserInfoAndGoHome() {
    log("getUserInfoAndGoHome");
    CardService.getInstance().cardInfo(context);
    UserService.getInstance().getUserInfo(context).then((userInfoResp) {
      if (userInfoResp.code == 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomePage(
                  goToPage: CommonService.userInfo!.cardCount == 0 ? 1 : 0)),
        );
      }
    });
  }
}
