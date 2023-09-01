import 'dart:developer';

import 'package:awallet/bean/btn_info.dart';
import 'package:awallet/bean/enum_network_type.dart';
import 'package:awallet/component/btn_icon_name.dart';
import 'package:awallet/cryptos/export_wif_step_one.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class MoreMenu extends StatefulWidget {
  const MoreMenu({super.key});

  @override
  State<MoreMenu> createState() => _MoreMenuState();
}

class _MoreMenuState extends State<MoreMenu> {
  var btnInfoList = [
    BtnInfo("asset/images/icon_channel_manage.png", "Channel Manage", null),
    BtnInfo("asset/images/icon_plus.png", "Create Channel", null),
    BtnInfo("asset/images/icon_backup.png", "Backup Now", null),
    BtnInfo("asset/images/icon_export_wif.png", "Export WIF", null),
    BtnInfo(
        "asset/images/icon_mainnet.png", EnumNetworkType.mainnet.value, null),
    BtnInfo(
        "asset/images/icon_testnet.png", EnumNetworkType.goerli.value, null),
  ];

  @override
  void initState() {
    btnInfoList[3].callback = () {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) {
            return const ExportWifStepOne();
          });
    };
    btnInfoList[4].callback = () {
      setNetwork(EnumNetworkType.mainnet);
      Navigator.pop(context);
    };
    btnInfoList[5].callback = () {
      setNetwork(EnumNetworkType.goerli);
      Navigator.pop(context);
    };
    super.initState();
  }

  setNetwork(EnumNetworkType targetNetwork) {
    log("targetNetwork $targetNetwork");
    if (GlobalParams.currNetwork != targetNetwork) {
      GlobalParams.currNetwork = targetNetwork;
      Eth.initWeb3Client();
      GlobalParams.eventBus.fire("MoreMenu_setNetwork");
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          color: const Color.fromRGBO(18, 58, 80, 0.8),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(top: 24, left: 6, right: 11),
                    width: 187,
                    height: 283,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('asset/images/image_bg_more.png'),
                      fit: BoxFit.fill,
                    )),
                    child: ListView.separated(
                        itemCount: btnInfoList.length,
                        shrinkWrap: true,
                        separatorBuilder: (content, index) {
                          if (index == 3) {
                            return const Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Dash(
                                  direction: Axis.horizontal,
                                  dashLength: 4,
                                  length: 140,
                                  dashColor: Color(0xFFCFCFCF)),
                            );
                          } else {
                            return Container();
                          }
                        },
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
