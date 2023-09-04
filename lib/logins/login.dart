import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/home.dart';
import 'package:awallet/logins/sign_up_step1.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  VerifyImageResponse? _verifyImageResponse;

  @override
  void initState() {
    checkPermission();
    LocalStorage.initSP().then((value) {
      // var userToken = LocalStorage.get(LocalStorage.userToken);
      // if (userToken != null && userToken.toString().isNotEmpty) {
      //   autoLogin(userToken);
      // }
      Eth.initWeb3Client();
      setState(() {});
    });

    getVerifyImage();

    super.initState();
  }

  bool storage = true;
  bool videos = true;
  bool photos = true;
  bool audio = true;

  Future<void> checkPermission() async {
    if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      if (androidInfo.version.sdkInt >= 33) {
        videos = await Permission.videos.request().isGranted;
        photos = await Permission.photos.request().isGranted;
        audio = await Permission.audio.request().isGranted;
      } else {
        storage = await Permission.storage.request().isGranted;
      }
    } else if (Platform.isIOS) {
      storage = await Permission.storage.request().isGranted;
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      if (int.parse(iosDeviceInfo.systemVersion) > 14) {
        photos = await Permission.photos.request().isGranted;
      }
    }

    if (storage || (videos && photos && audio)) {
      log("Permission");
    } else {
      log("no Permission");
    }
  }

  void getVerifyImage() {
    UserService.getInstance().verifyImage(context).then((retInfo) {
      if (retInfo.code == 1) {
        _verifyImageResponse = retInfo.data as VerifyImageResponse;
        log("$_verifyImageResponse");
        setState(() {});
      }
    });
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
                    height: 320,
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 130,
                  child: TextFormField(
                    controller: _codeController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        labelText: "Verify Code", hintText: "Verify Code"),
                    validator: (v) {
                      return v!.trim().isNotEmpty ? null : "wrong Verify Code";
                    },
                  ),
                ),
                _verifyImageResponse == null
                    ? const Padding(
                        padding: EdgeInsets.only(right: 10, bottom: 4),
                        child: SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            color: Color(0xFF666666),
                            strokeWidth: 3,
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          getVerifyImage();
                        },
                        child: Image(
                          width: 120,
                          height: 60,
                          image: MemoryImage(base64Decode(
                              _verifyImageResponse!.imageBs.substring(22))),
                        ),
                      ),
              ],
            ),
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
    // LocalStorage.remove(LocalStorage.ethAddress);
    SignInRequest req = SignInRequest();
    req.userName = username;
    req.password = password;
    req.vcode = _codeController.value.text.trim();
    req.verifyCodeId = _verifyImageResponse!.verifyCodeId;
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
    UserService.getInstance().getUserInfo(context).then((userInfoResp) {
      if (userInfoResp.code == 1) {
        var userInfo = userInfoResp.data as GetUserInfoResponse;
        CommonService.userInfo = userInfo.user;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    });
  }
}
