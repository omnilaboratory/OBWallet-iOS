import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'loading_dialog.dart';

final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
  borderRadius: BorderRadius.circular(8),
);

TextFormField createTextFormField(
    TextEditingController controller, String hintText,
    {Icon? icon,
    int? maxLength,
    TextInputType? keyboardType = TextInputType.text,
    bool obscureText = false,
    bool needCheck = true,
    bool enabled = true,
    Function? onChanged,
    Function? validator,
    int maxLines = 1}) {
  return TextFormField(
    controller: controller,
    maxLines: maxLines,
    maxLength: maxLength,
    keyboardType: keyboardType,
    enabled: enabled,
    onChanged: (value) {
      if (onChanged != null) {
        onChanged(value);
      }
    },
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
      if (!needCheck) {
        return null;
      }
      if (validator != null) {
        return validator(v);
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

alert(String msg, BuildContext context, Function? callback) {
  log("alert $msg");
  Alert(
    context: context,
    type: AlertType.none,
    onWillPopActive: true,
    desc: msg,
    buttons: [
      DialogButton(
        onPressed: () {
          Navigator.pop(context);
          if (callback != null) {
            callback();
          }
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

OverlayEntry showLoading(BuildContext context) {
  OverlayEntry entry = OverlayEntry(
    builder: (context) => const LoadingDialog(),
  );
  Overlay.of(context).insert(entry);
  return entry;
}
