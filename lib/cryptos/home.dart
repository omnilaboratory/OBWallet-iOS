import 'package:awallet/bean/token_info.dart';
import 'package:awallet/component/button_for_app_bar.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/cryptos/ethereum_page.dart';
import 'package:awallet/cryptos/more_menu.dart';
import 'package:awallet/cryptos/tx_history.dart';
import 'package:flutter/material.dart';

import 'bitcoin_page.dart';

class CryptoHome extends StatefulWidget {
  const CryptoHome({super.key});

  @override
  State<CryptoHome> createState() => _CryptoHomeState();
}

class _CryptoHomeState extends State<CryptoHome> {
  double balance = 0;

  var tabNames = ['Ethereum','Bitcoin' ];

  List<Widget> tabList = [];
  List<Widget> tabViewList = [
    const EthereumPage(),
    const BitcoinPage(),
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

  var tokenList = [
    TokenInfo(
        name: "BTC",
        iconUrl: 'asset/images/icon_bitcoin.png',
        balance: 100000.0,
        balanceOfDollar: 1220222222000.0),
    TokenInfo(name: "USDT", iconUrl: 'asset/images/icon_tether.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabNames.length, child: buildHomeScaffold());
  }

  Scaffold buildHomeScaffold() {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            buildTabBars(),
            const SizedBox(height: 20),
            Expanded(
                child: TabBarView(
              children: tabViewList,
            ))
          ],
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

  AppBar buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: const HeadLogo(title: "Crypto"),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            children: [
              // ButtonForAppBarAction(
              //     imageUrl: "asset/images/icon_fresh.png",
              //     onTap: () {
              //       showDialog(
              //           context: context,
              //           builder: (context) {
              //             return const Update();
              //           });
              //     }),
              ButtonForAppBarAction(
                  imageUrl: "asset/images/icon_tx_history.png",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TxHistory()));
                  }),
              ButtonForAppBarAction(
                  imageUrl: "asset/images/icon_more_3pot.png",
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
    );
  }
}


