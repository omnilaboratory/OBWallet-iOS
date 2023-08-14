import 'package:awallet/cards/account.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:flutter/material.dart';

class CardHome extends StatefulWidget {
  const CardHome({super.key});

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  var tabNames = ['Account', 'Card'];

  List<Widget> tabList = [];
  List<Widget> tabViewList = [
    Account(),
    const Center(
      child: Text("Card Pages"),
    ),
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
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabNames.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const HeadLogo(title: "Card"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              buildTabBars(),
              Expanded(
                  child: TabBarView(
                children: tabViewList,
              ))
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

