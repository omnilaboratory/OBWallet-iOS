import 'package:awallet/agent/agent_kyc.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_tx_item.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AgentHome extends StatefulWidget {
  const AgentHome({super.key});

  @override
  State<AgentHome> createState() => _AgentHomeState();
}

class _AgentHomeState extends State<AgentHome> {
  var txs = [];
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);

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
                  txs.isEmpty
                      ? Center(child: Text(S.of(context).common_NoData))
                      : ListView.builder(
                          padding: const EdgeInsets.only(top: 20),
                          itemCount: txs.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (index < txs.length) {
                              return CryptoTxItem(txInfo: txs[index]);
                            }
                            return null;
                          }),
                  onRefresh: _onListRefresh,
                  onLoading: _onListLoading,
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
    txs = [];

    if (_refreshListController.isRefresh) {
      _refreshListController.refreshCompleted();
    }
    if (_refreshListController.isLoading) {
      _refreshListController.loadComplete();
    }
  }

  void _onListLoading() async {
    if (_refreshListController.isRefresh) {
      _refreshListController.refreshCompleted();
    }
    if (_refreshListController.isLoading) {
      _refreshListController.loadComplete();
    }
  }
}
