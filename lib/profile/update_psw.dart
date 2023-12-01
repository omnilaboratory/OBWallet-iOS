import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/logins/login.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
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
  String passwordTitle = S.current.common_CodeLeve1;

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
                          child: createDialogTitle(S.of(context).profile_home_UpdatePassword),
                        ),
                      ),
                      buildInputField(),
                      const SizedBox(
                        height: 20,
                      ),
                      BottomButton(
                        icon: 'asset/images/icon_confirm_green.png',
                        text: S.of(context).common_Done.toUpperCase(),
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
                text:  S.of(context).common_Cancel.toUpperCase(),
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
      showToast(S.of(context).tips_wrongPassMatch);
      return;
    }
    UserService.getInstance().updatePwd(context, request).then((value) async {
      if (value.code == 1) {
        LocalStorage.remove(LocalStorage.userToken);
        LocalStorage.remove(LocalStorage.password);
        showToast(S.of(context).tips_updatedPassword);
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
              S.of(context).profile_UpdatePassword_OldPassword,
              icon: const Icon(Icons.password),
              obscureText: true,
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
                      hintText:  S.of(context).common_NewPsw,
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
                      return v!.trim().isNotEmpty ? null : S.of(context).common_Wrong + S.of(context).common_NewPsw;
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
        ],
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
}
