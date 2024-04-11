import 'package:awallet/component/agent_card_item.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pb.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AgentCardList extends StatefulWidget {
  final int type;
  final Function(List<int>) onDataReceived;

  const AgentCardList(
      {super.key, required this.type, required this.onDataReceived});

  @override
  State<AgentCardList> createState() => _AgentCardListState();
}

class _AgentCardListState extends State<AgentCardList> {
  List<CardInfo> cardInfoList = [];
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "agent_kyc_finish" || event == "cardActive_Finish") {
        _onListRefresh();
      }
    });
    _onListRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildNewSmartRefresher(
        _refreshListController,
        cardInfoList.isEmpty
            ? Center(child: Text(S.of(context).common_NoData))
            : ListView.builder(
                itemCount: cardInfoList.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index < cardInfoList.length) {
                    return AgentCardItem(cardInfo: cardInfoList[index]);
                  }
                  return null;
                }),
        onRefresh: _onListRefresh,
        enablePullUp: false);
  }

  void _onListRefresh() async {
    var resp = await CardService.getInstance().agentCardList(widget.type);
    if (resp.code == 1) {
      if (resp.data != null) {
        CardListResponse respData = resp.data as CardListResponse;
        cardInfoList = respData.items;
        var stateInfo = respData.agentCardStat;
        widget.onDataReceived([
          stateInfo.agentCardStatus0,
          stateInfo.agentCardStatus1,
          stateInfo.agentCardStatus2
        ]);
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
