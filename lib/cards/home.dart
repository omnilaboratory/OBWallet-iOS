import 'package:awallet/bean/enum_kyc_status.dart';
import 'package:awallet/cards/account.dart';
import 'package:awallet/cards/card_part.dart';
import 'package:awallet/cards/kyc.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/profile/guide.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';

import 'card_physical_part.dart';

var kycClr = [Colors.purple, Colors.blue, Colors.green, Colors.red];

class CardHome extends StatefulWidget {
  const CardHome({super.key});

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome>
    with SingleTickerProviderStateMixin {
  var tabNames = [S.current.card_home_Account, S.current.card_home_Card, S.current.realCard_card_title];
  var currKycClrIndex = 0;

  List<Widget> tabList = [];
  List<Widget> tabViewList = [
    Account(),
    const CardPart(),
    const CardPhysicalPart(),
  ];
  late TabController _tabController ;
  @override
  void initState() {
    super.initState();
    for (var e in tabNames) {
      tabList.add(Tab(
        child: Text(
          e,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ));
    }
    UserService.getInstance().getUserInfo(context).then((resp) {
      if (resp.code == 1) {
        updateKycState();
        if (mounted) {
          setState(() {});
        }
      }
    });

    _tabController =
        TabController(length: tabNames.length, vsync: this, initialIndex: 0);

    updateKycState();

    GlobalParams.eventBus.on().listen((event) {
      if (event == "kyc_state") {
        updateKycState();
        if (mounted) {
          setState(() {});
        }
      }
      if (event == "changeTab") {
        _tabController.animateTo(1);
      }
    });

    if (CommonService.firstEnterApp && CommonService.userInfo?.cardCount == 0) {
      CommonService.firstEnterApp = false;
      _tabController.animateTo(1);
    }

    // if is signUp,show the guide page
    if (CommonService.isSignUp) {
      CommonService.isSignUp = false;
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        showDialog(
            context: context,
            builder: (context) {
              return const Guide();
            });
      });
    }
  }

  updateKycState() {
    currKycClrIndex = CommonService.userInfo == null
        ? 0
        : Utils.getEnumKycStatus(CommonService.userInfo!.kycStatus).index;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabNames.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: HeadLogo(title: S.of(context).card_home_title),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: headerActions(context),
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
                  controller: _tabController,
                  children: tabViewList,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> headerActions(BuildContext context) {
    List<Widget> list = [];
    list.add(InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return const Guide();
            });
      },
      child: const Icon(Icons.help_center_outlined, size: 28),
    ));

    list.add(ButtonForAppBarAction(
        width: 32,
        height: 24,
        imageClr: kycClr[currKycClrIndex],
        imageUrl: "asset/images/icon_kyc.png",
        onTap: () {

          // showDialog(
          //     context: context,
          //     builder: (context) {
          //       return Kyc();
          //     });
          // return;

          if (CommonService.userInfo!.kycStatus == EnumKycStatus.none.value) {
            showDialog(
                context: context,
                builder: (context) {
                  return Kyc();
                });
          } else {
            showKycTips(context);
          }
        }));
    return list;
  }

  Widget buildTabBars() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TabBar(
        controller: _tabController,
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
