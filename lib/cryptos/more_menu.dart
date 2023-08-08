import 'dart:developer';

import 'package:awallet/bean/btn_info.dart';
import 'package:awallet/component/btn_icon_name.dart';
import 'package:flutter/material.dart';

class MoreMenu extends StatefulWidget {
  const MoreMenu({super.key});

  @override
  State<MoreMenu> createState() => _MoreMenuState();
}

class _MoreMenuState extends State<MoreMenu> {
  var btnInfoList = [
    BtnInfo("asset/images/icon_channel_manage.png", "Channel Manage", () {
      log("Channel Manage");
    }),
    BtnInfo("asset/images/icon_plus.png", "Create Channel", () {
      log("Create Channel");
    }),
    BtnInfo("asset/images/icon_backup.png", "Backup Now", () {
      log("Backup Now");
    }),
    BtnInfo("asset/images/icon_export_wif.png", "Export WIF", () {
      log("Export WIF");
    }),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: const Color.fromRGBO(18, 58, 80, 0.8),
          child: Padding(
            padding: const EdgeInsets.only(right: 30, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    width: 200,
                    height: 180,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('asset/images/image_bg_more.png'),
                      fit: BoxFit.fill,
                    )),
                    child: ListView.builder(
                        itemCount: btnInfoList.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return BtnIconName(btnInfo: btnInfoList[index]);
                        }),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
