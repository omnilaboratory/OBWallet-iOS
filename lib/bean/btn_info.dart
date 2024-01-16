import 'package:flutter/cupertino.dart';

class BtnInfo {
  final String iconUrl;
  final String name;
  late GestureTapCallback? callback;

  BtnInfo(this.iconUrl, this.name, this.callback);
}
