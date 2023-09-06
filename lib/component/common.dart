import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
  borderRadius: BorderRadius.circular(8),
);

TextFormField createTextFormField(
    TextEditingController controller, String hintText, bool obscureText,
    {Icon? icon, int? maxLength}) {
  return TextFormField(
    controller: controller,
    maxLines: 1,
    maxLength: maxLength,
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
      return v!.trim().isNotEmpty ? null : "wrong $hintText";
    },
  );
}

showToast(String msg, {Toast toastLength = Toast.LENGTH_LONG}) {
  Fluttertoast.showToast(
      msg: msg, toastLength: toastLength, gravity: ToastGravity.CENTER);
}
