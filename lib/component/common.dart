import 'package:flutter/material.dart';

final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
  borderRadius: BorderRadius.circular(8),
);

Widget createTextFormField(TextEditingController controller, String hintText,
    Icon? icon, bool obscureText) {
  return SizedBox(
    height: 68,
    child: TextFormField(
      controller: controller,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
      ),
      obscureText: obscureText,
      validator: (v) {
        return v!.trim().isNotEmpty ? null : "wrong $hintText";
      },
    ),
  );
}
