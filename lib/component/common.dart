import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
  borderRadius: BorderRadius.circular(8),
);

TextFormField createTextFormField(
    TextEditingController controller, String hintText, bool obscureText,
    {Icon? icon,
    int? maxLength,
    TextInputType? keyboardType = TextInputType.text,bool needCheck=true}) {
  return TextFormField(
    controller: controller,
    maxLines: 1,
    maxLength: maxLength,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: icon,
      hintStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
      errorBorder: outlineInputBorder,
      contentPadding: EdgeInsets.only(
          left: (icon == null ? 10 : 0), right: 4, top: 1, bottom: 1),
    ),
    obscureText: obscureText,
    validator: (v) {
      if(!needCheck){
        return null;
      }
      return v!.trim().isNotEmpty ? null : "wrong $hintText";
    },
  );
}

Text createDialogTitle(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      letterSpacing: 4,
    ),
  );
}

showToast(String msg, {Toast toastLength = Toast.LENGTH_LONG}) {
  Fluttertoast.showToast(
      msg: msg, toastLength: toastLength, gravity: ToastGravity.CENTER);
}

alert(String msg, BuildContext context,Function callback) {
  log("alert $msg");
  Alert(
    context: context,
    type: AlertType.none,
    onWillPopActive:true,
    desc: msg,
    buttons: [
      DialogButton(
        onPressed: ()  {
          callback();
          Navigator.pop(context);
        },
        width: 120,
        color: Colors.blueAccent,
        child: const Text(
          "OK",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      )
    ],
  ).show();
}
