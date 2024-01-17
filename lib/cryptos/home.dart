import 'package:awallet/component/button_for_app_bar.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/cryptos/tx_history.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/profile/guide.dart';
import 'package:awallet/protos/gen-dart/user/account.pb.dart';
import 'package:flutter/material.dart';

import 'crypto_for_network.dart';


class CryptoHome extends StatefulWidget {
  const CryptoHome({super.key});

  @override
  State<CryptoHome> createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome>
    with SingleTickerProviderStateMixin {
  double balance = 0;
  var tabNames = [NetWork.ETH.name, NetWork.POLYGON.name, NetWork.TRON.name];

  List<Widget> tabList = [];
  List<Widget> tabViewList = [
    CryptoForNetwork(chainNetwork: NetWork.ETH),
    CryptoForNetwork(chainNetwork: NetWork.POLYGON),
    CryptoForNetwork(chainNetwork: NetWork.TRON),
  ];

  @override
  void initState() {
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

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: CryptoForNetwork(chainNetwork: NetWork.ETH),
    );
  }

  Widget buildTabBars() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: CryptoForNetwork(chainNetwork: NetWork.ETH),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: HeadLogo(title: S.of(context).main_home_Crypto),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const Guide();
                      });
                },
                child: const Icon(Icons.help_center_outlined, size: 28),
              ),
              ButtonForAppBarAction(
                  imageUrl: "asset/images/icon_tx_history.png",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TxHistory()));
                  }),
            ],
          ),
        ),
      ],
    );
  }
}
