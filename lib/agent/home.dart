import 'dart:developer';

import 'package:awallet/agent/agent_kyc.dart';
import 'package:awallet/component/agent_card_item.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pb.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AgentHome extends StatefulWidget {
  const AgentHome({super.key});

  @override
  State<AgentHome> createState() => _AgentHomeState();
}

class _AgentHomeState extends State<AgentHome> {
  List<CardInfo> cardInfoList = [];
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "agent_kyc_finish") {
        _onListRefresh();
      }
    });
    _onListRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: HeadLogo(title: S.of(context).main_home_agent),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                flex: 9,
                child: buildNewSmartRefresher(
                  _refreshListController,
                  cardInfoList.isEmpty
                      ? Center(child: Text(S.of(context).common_NoData))
                      : ListView.builder(
                          itemCount: cardInfoList.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (index < cardInfoList.length) {
                              return AgentCardItem(
                                  cardInfo: cardInfoList[index]);
                            }
                            return null;
                          }),
                  onRefresh: _onListRefresh,
                )),
            const SizedBox(height: 20),
            Expanded(
              flex: 1,
              child: BottomButton(
                icon: 'asset/images/icon_arrow_right_green.png',
                text: S.of(context).agent_kyc.toUpperCase(),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AgentKyc()));
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _onListRefresh() async {
    var resp =
        await CardService.getInstance().cardList(context, isAgentCard: true);
    if (resp.code == 1) {
      if (resp.data != null) {
        cardInfoList = resp.data;
        setState(() {});
      }
    }
    if (_refreshListController.isRefresh) {
      _refreshListController.refreshCompleted();
    }
    if (_refreshListController.isLoading) {
      _refreshListController.loadComplete();
    }
  }
}
