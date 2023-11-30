import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'loading_dialog.dart';

final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
  borderRadius: BorderRadius.circular(8),
);

const OutlineInputBorder outlineRightInputBorder = OutlineInputBorder(
  borderSide: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
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
    int maxLines = 1,
    int borderType = 0}) {
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
      border: borderType == 0 ? outlineInputBorder : outlineRightInputBorder,
      focusedBorder:
          borderType == 0 ? outlineInputBorder : outlineRightInputBorder,
      enabledBorder:
          borderType == 0 ? outlineInputBorder : outlineRightInputBorder,
      disabledBorder:
          borderType == 0 ? outlineInputBorder : outlineRightInputBorder,
      focusedErrorBorder:
          borderType == 0 ? outlineInputBorder : outlineRightInputBorder,
      errorBorder:
          borderType == 0 ? outlineInputBorder : outlineRightInputBorder,
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
      return v!.trim().isNotEmpty ? null : "Wrong $hintText";
    },
  );
}

TextField createTextField(TextEditingController controller,
    {TextInputType? keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    bool enabled = true,
    Function? onChanged}) {
  return TextField(
    controller: controller,
    maxLines: 1,
    inputFormatters: inputFormatters,
    keyboardType: keyboardType,
    enabled: enabled,
    onChanged: (text) {
      if (onChanged != null) {
        onChanged(text);
      }
    },
    cursorColor: const Color(0xFF4A92FF),
    style: const TextStyle(
      color: Color(0xFF333333),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    decoration: const InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 7),
      border: outlineRightInputBorder,
      focusedBorder: outlineRightInputBorder,
      enabledBorder: outlineRightInputBorder,
      disabledBorder: outlineRightInputBorder,
      focusedErrorBorder: outlineRightInputBorder,
      errorBorder: outlineRightInputBorder,
    ),
  );
}

TextField createTextField2(TextEditingController controller,
    {TextInputType? keyboardType = TextInputType.text,
    List<TextInputFormatter>? inputFormatters,
    Function? onChanged}) {
  return TextField(
    textAlign: TextAlign.center,
    controller: controller,
    maxLines: 1,
    inputFormatters: inputFormatters,
    keyboardType: keyboardType,
    onChanged: (text) {
      if (onChanged != null) {
        onChanged(text);
      }
    },
    cursorColor: const Color(0xFF4A92FF),
    style: const TextStyle(
      color: Color(0xFF333333),
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
      errorBorder: outlineInputBorder,
    ),
  );
}

Text createDialogTitle(String text, {Color clr = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: clr,
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

alert(String msg, BuildContext context, Function? callback,
    {bool showCancel = false}) {
  List<DialogButton> btns = [];
  if (showCancel) {
    btns.add(DialogButton(
      onPressed: () {
        Navigator.pop(context);
      },
      width: 120,
      color: Colors.grey,
      child: const Text(
        "Cancel",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ));
  }
  btns.add(DialogButton(
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
  ));

  Alert(
          context: context,
          type: AlertType.none,
          onWillPopActive: true,
          title: 'Message',
          desc: msg,
          buttons: btns,
          style: const AlertStyle(
              descStyle: TextStyle(fontSize: 19), isCloseButton: false))
      .show();
}

OverlayEntry showLoading(BuildContext context) {
  OverlayEntry entry = OverlayEntry(
    builder: (context) => const LoadingDialog(),
  );
  Overlay.of(context).insert(entry);
  Future.delayed(const Duration(seconds: 40), () {
    if (entry.mounted) {
      entry.remove();
    }
  });
  return entry;
}

SmartRefresher buildNewSmartRefresher(RefreshController controller, Widget body,
    {VoidCallback? onRefresh,
    VoidCallback? onLoading,
    bool enablePullDown = true,
    bool enablePullUp = true}) {
  return SmartRefresher(
      controller: controller,
      enablePullDown: enablePullDown,
      enablePullUp: enablePullUp,
      header: const WaterDropHeader(),
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus? mode) {
          Widget body;
          if (mode == LoadStatus.idle) {
            body = const Text("No more Data");
          } else if (mode == LoadStatus.loading) {
            body = const CupertinoActivityIndicator();
          } else if (mode == LoadStatus.failed) {
            body = const Text("Load Failed! Click retry!");
          } else if (mode == LoadStatus.canLoading) {
            body = const Text("release to load more");
          } else {
            body = const Text("No more Data");
          }
          return SizedBox(
            height: 55.0,
            child: Center(child: body),
          );
        },
      ),
      onRefresh: onRefresh,
      onLoading: onLoading,
      child: body);
}
