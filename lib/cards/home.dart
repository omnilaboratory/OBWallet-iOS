import 'dart:developer';

import 'package:awallet/cards/account.dart';
import 'package:awallet/cards/card_part.dart';
import 'package:awallet/cards/currency_tx_history.dart';
import 'package:awallet/cards/kyc.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

import '../cryptos/more_menu.dart';

var kycClr = [Colors.blue, Colors.yellow, Colors.green];

class CardHome extends StatefulWidget {
  const CardHome({super.key});

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  var tabNames = ['Account', 'Card'];
  var currKycClrIndex = 0;

  List<Widget> tabList = [];
  List<Widget> tabViewList = [
    Account(),
    const CardPart(),
  ];

  @override
  void initState() {
    super.initState();
    for (var e in tabNames) {
      tabList.add(Tab(
        child: Text(
          e,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ));
    }
    updateKycState();
    GlobalParams.eventBus.on().listen((event) {
      if (event == "kyc_state") {
        updateKycState();
      }
    });
  }

  updateKycState() {
    // passed or pending
    var kycStatus = CommonService.userInfo!.kycStatus;
    if (kycStatus == "pending") {
      currKycClrIndex = 1;
    }
    if (kycStatus == "passed") {
      currKycClrIndex = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabNames.length,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.transparent,
          title: const HeadLogo(title: "Card"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  ButtonForAppBarAction(
                      width: 22,
                      height: 16,
                      imageClr: kycClr[currKycClrIndex],
                      imageUrl: "asset/images/icon_kyc.png",
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const Kyc();
                            });
                      }),
                  ButtonForAppBarAction(
                      width: 18,
                      height: 18,
                      imageUrl: "asset/images/icon_more_3line.png",
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const MoreMenu();
                            });
                      }),
                ],
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              buildTabBars(),
              Expanded(
                child: TabBarView(
                  children: tabViewList,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTabBars() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TabBar(
        padding: const EdgeInsets.only(left: 4, right: 4),
        indicator: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
        indicatorPadding: const EdgeInsets.only(top: 4, bottom: 4),
        labelColor: const Color(0xFF4A92FF),
        unselectedLabelColor: const Color(0xFF999999),
        dividerColor: Colors.transparent,
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: tabList,
      ),
    );
  }
}

class ButtonForAppBarAction extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final Color? imageClr;
  final GestureTapCallback onTap;

  const ButtonForAppBarAction(
      {super.key,
      required this.width,
      required this.height,
      required this.imageUrl,
      required this.onTap,
      this.imageClr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: onTap,
          child: Image(
              color: imageClr ?? imageClr,
              width: width,
              height: height,
              image: AssetImage(imageUrl))),
    );
  }
}
