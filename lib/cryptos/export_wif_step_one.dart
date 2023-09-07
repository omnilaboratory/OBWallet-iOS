import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/cryptos/export_wif_step_two.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExportWifStepOne extends StatefulWidget {
  const ExportWifStepOne({super.key});

  @override
  State<ExportWifStepOne> createState() => _ExportWifStepOneState();
}

class _ExportWifStepOneState extends State<ExportWifStepOne> {
  final TextEditingController _pswController = TextEditingController();

  onNext() {
    if (_pswController.value.text.toString().isEmpty) {
      Fluttertoast.showToast(
          msg: "The password cannot be empty", gravity: ToastGravity.CENTER);
      return;
    }

    if (_pswController.value.text.toString() != LocalStorage.get("password")) {
      Fluttertoast.showToast(
          msg: "Please enter the correct password",
          gravity: ToastGravity.CENTER);
      return;
    }

    var password = _pswController.value.text.trim();
    UserService.getInstance()
        .verifyPwd(context, LocalStorage.get("username"), password)
        .then((value) async {
      if (value.code == 1) {
        var resp = value.data;
        log(resp.toString());

        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (context) {
              return const ExportWifStepTwo();
            });
      } else {
        log(value.msg);
      }
    });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                height: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    createDialogTitle('Export WIF'),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: _pswController,
                          maxLines: 1,
                          obscureText: true,
                          cursorColor: const Color(0xFF4A92FF),
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 7),
                            isCollapsed: true,
                            border: _outlineInputBorder,
                            focusedBorder: _outlineInputBorder,
                            enabledBorder: _outlineInputBorder,
                            disabledBorder: _outlineInputBorder,
                            focusedErrorBorder: _outlineInputBorder,
                            errorBorder: _outlineInputBorder,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BottomButton(
                          icon: 'asset/images/icon_arrow_right_green.png',
                          text: 'NEXT',
                          onPressed: onNext,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              BottomWhiteButton(
                icon: 'asset/images/icon_close_white.png',
                text: 'CANCEL',
                onPressed: onClose,
              )
            ]),
          ),
        ),
      ),
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}
