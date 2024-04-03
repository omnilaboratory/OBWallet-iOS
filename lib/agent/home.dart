import 'dart:developer';

import 'package:awallet/agent/agent_kyc.dart';
import 'package:awallet/agent/agent_kyc_history.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'agent_card_list.dart';

class AgentHome extends StatefulWidget {
  const AgentHome({super.key});

  @override
  State<AgentHome> createState() => _AgentHomeState();
}

class _AgentHomeState extends State<AgentHome>
    with SingleTickerProviderStateMixin {
  var tabNames = [
    S.current.agent_card_list_all(0),
    S.current.agent_card_list_active(0),
    S.current.agent_card_list_inactive(0)
  ];
  List<Widget> tabList = [];
  List<Widget> tabViewList = [];
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    int type = 0;
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

      tabViewList.add(AgentCardList(
        type: type++,
        onDataReceived: updateCountInfo,
      ));
    }
    super.initState();
  }

  updateCountInfo(List<int> counts) {
    log("updateCountInfo $counts");
    if (mounted) {
      tabNames[0] = S.of(context).agent_card_list_all(counts[0]);
      tabNames[1] = S.of(context).agent_card_list_active(counts[1]);
      tabNames[2] = S.of(context).agent_card_list_inactive(counts[2]);
      tabList = [];
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
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabNames.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: HeadLogo(title: S.of(context).main_home_agent),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTabBars(),
              const SizedBox(height: 10),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: tabViewList,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomButton(
                    icon: 'asset/images/icon_arrow_right_green.png',
                    fontSize: 14,
                    text: S.of(context).agent_kyc.toUpperCase(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AgentKyc()));
                    },
                  ),
                  const SizedBox(width: 20),
                  BottomButton(
                    icon: 'asset/images/icon_arrow_right_green.png',
                    fontSize: 14,
                    text: S.of(context).agent_kyc_history.toUpperCase(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AgentKycHistory()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
