import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/logins/login.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';

class UpdatePsw extends StatefulWidget {
  const UpdatePsw({super.key});

  @override
  State<UpdatePsw> createState() => _UpdatePswState();
}

class _UpdatePswState extends State<UpdatePsw> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _oldPswController = TextEditingController();
  final TextEditingController _pswController = TextEditingController();
  final TextEditingController _psw2Controller = TextEditingController();
  String passwordTitle = "Weak";

  @override
  Widget build(BuildContext context) {
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
                          child: createDialogTitle('Update Password'),
                        ),
                      ),
                      buildInputField(),
                      const SizedBox(
                        height: 20,
                      ),
                      BottomButton(
                        icon: 'asset/images/icon_confirm_green.png',
                        text: 'DONE',
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if ((_formKey.currentState as FormState).validate()) {
                            onClickDone();
                          }
                        },
                      ),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              BottomWhiteButton(
                icon: 'asset/images/icon_close_white.png',
                text: 'CANCEL',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ])))));
  }

  void onClickDone() {
    UpdatePwdRequest request = UpdatePwdRequest();
    request.oldPassword = _oldPswController.value.text.trim();
    request.newPassword = _pswController.value.text.trim();
    var confirmPassword = _psw2Controller.value.text.trim();
    if (request.newPassword != confirmPassword) {
      showToast(Tips.wrongPassMatch.value);
      return;
    }
    UserService.getInstance().updatePwd(context, request).then((value) async {
      if (value.code == 1) {
        LocalStorage.remove(LocalStorage.userToken);
        LocalStorage.remove(LocalStorage.password);
        showToast(Tips.updatedPassword.value);
        Navigator.pop(context);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Login()));
      }
    });
  }

  Widget buildInputField() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          createTextFormField(
              _oldPswController,
              "Old Password",
              icon: const Icon(Icons.password),
              true,
              maxLength: 16),
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
                      hintText: "New Password",
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
                      return v!.trim().isNotEmpty ? null : "wrong New Password";
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
              "Confirm New Password",
              icon: const Icon(Icons.password),
              true,
              maxLength: 16),
        ],
      ),
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
}
