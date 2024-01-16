import 'package:awallet/bean/btn_info.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

import '../bean/enum_network_type.dart';

class BtnIconName extends StatelessWidget {
  final BtnInfo btnInfo;

  const BtnIconName({super.key, required this.btnInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: getNetworkSelectedBgColor(),
      padding: const EdgeInsets.only(left: 12),
      child: GestureDetector(
        onTap: btnInfo.callback,
        child: SizedBox(
          height: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                width: 16,
                height: 16,
                color: getNetworkSelectedIconColor(),
                image: AssetImage(btnInfo.iconUrl),
              ),
              const SizedBox(width: 10),
              Text(
                btnInfo.name,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: getNetworkSelectedFontColor(),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color getNetworkSelectedBgColor() {
    var bgClr = Colors.transparent;
    if (btnInfo.name == EnumNetworkType.mainnet.value) {
      if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
        bgClr = const Color(0xFF5C9BFA);
      }
    }
    if (btnInfo.name == EnumNetworkType.goerli.value) {
      if (GlobalParams.currNetwork == EnumNetworkType.goerli) {
        bgClr = const Color(0xFF5C9BFA);
      }
    }
    return bgClr;
  }

  Color getNetworkSelectedFontColor() {
    var clr = const Color(0xFF666666);
    if (btnInfo.name == EnumNetworkType.mainnet.value) {
      if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
        clr = Colors.white;
      }
    }
    if (btnInfo.name == EnumNetworkType.goerli.value) {
      if (GlobalParams.currNetwork == EnumNetworkType.goerli) {
        clr = Colors.white;
      }
    }
    return clr;
  }

  Color getNetworkSelectedIconColor() {
    Color clr = const Color(0xff638AC1);
    if (btnInfo.name == EnumNetworkType.mainnet.value) {
      if (GlobalParams.currNetwork == EnumNetworkType.mainnet) {
        clr = Colors.white;
      }
    }
    if (btnInfo.name == EnumNetworkType.goerli.value) {
      if (GlobalParams.currNetwork == EnumNetworkType.goerli) {
        clr = Colors.white;
      }
    }
    return clr;
  }
}
