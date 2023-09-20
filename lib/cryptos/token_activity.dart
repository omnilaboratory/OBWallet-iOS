import 'package:awallet/bean/crypto_tx_info.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_token_card.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/component/tx_item.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TokenActivity extends StatefulWidget {
  final TokenInfo tokenInfo;

  const TokenActivity({super.key, required this.tokenInfo});

  @override
  State<TokenActivity> createState() => _TokenActivityState();
}

class _TokenActivityState extends State<TokenActivity> {
  List<CryptoTxInfo> txHistoryList = [];
  var dataStartIndex = 0;
  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);
  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  void onFreshBalance() {
    EthService.getInstance().updateTokenBalances(context).then((value) {
      if (mounted) {
        setState(() {});
      }
      _refreshBalanceController.refreshCompleted();
    });
  }

  void onFreshList() {
    txHistoryList = [];
    dataStartIndex = 0;
    getSwapTxList();
  }

  void onLoadingList() {
    dataStartIndex += pageSize;
    getSwapTxList();
  }

  @override
  void initState() {
    super.initState();
    getSwapTxList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: buildAppBar(context), body: buildBody(context));
  }

  Widget buildBody(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 40) / 5;
    return SmartRefresher(
      controller: _refreshBalanceController,
      onRefresh: onFreshBalance,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            CryptoTokenCard(tokenInfo: widget.tokenInfo),
            const SizedBox(height: 30),
            buildTxButtons(iconWidth),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Dash(
                  direction: Axis.horizontal,
                  dashLength: 2,
                  length: size.width - 40,
                  dashColor: const Color(0xFFCFCFCF)),
            ),
            Expanded(
              child: SmartRefresher(
                controller: _refreshListController,
                enablePullDown: true,
                enablePullUp: true,
                header: const WaterDropHeader(),
                footer: CustomFooter(
                  builder: (BuildContext context, LoadStatus? mode) {
                    Widget body;
                    if (mode == LoadStatus.idle) {
                      body = const Text("No more Data");
                    } else if (mode == LoadStatus.loading) {
                      body = const CupertinoActivityIndicator();
                    } else if (mode == LoadStatus.failed) {
                      body = const Text("Load Failed!Click retry!");
                    } else if (mode == LoadStatus.canLoading) {
                      body = const Text("Release to load more");
                    } else {
                      body = const Text("No more Data");
                    }
                    return SizedBox(
                      height: 55.0,
                      child: Center(child: body),
                    );
                  },
                ),
                onRefresh: onFreshList,
                onLoading: onLoadingList,
                child: txHistoryList.isEmpty
                    ? const Center(child: Text("No Data"))
                    : ListView.builder(
                        itemCount: txHistoryList.length,
                        itemBuilder: (BuildContext context, int index) {
                          if (index >= txHistoryList.length) {
                            return null;
                          }
                          return CryptoTxItem(txInfo: txHistoryList[index]);
                        }),
              ),
            )
          ]),
        ),
      ),
    );
  }

  Row buildTxButtons(double iconWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            text: 'Pay',
            iconWidth: iconWidth,
            onPressed: () {
              showToast(Tips.comeSoon.value);
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Exchange(
                        type: EnumExchangeType.sell,
                        name: widget.tokenInfo.name);
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_receive.png',
            text: 'Receive',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const ReceiveWalletAddress();
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Send',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Send(name: widget.tokenInfo.name);
                  });
            }),
        // SquareButton(
        //     icon: 'asset/images/icon_gift.png',
        //     text: 'Gift',
        //     iconWidth: iconWidth,
        //     onPressed: () {}),
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 42,
      titleSpacing: 0,
      title: HeadLogo(title: "${widget.tokenInfo.name} Activity"),
    );
  }

  void getSwapTxList() {
    AccountService.getInstance()
        .getSwapTxList(context, dataStartIndex, pageSize,
            Utils.getContractSymbol(widget.tokenInfo.name))
        .then((result) {
      if (result.code == 1) {
        var resp = result.data as GetSwapTxListResponse;
        var items = resp.items;
        if (items.isNotEmpty) {
          for (var element in items) {
            txHistoryList.add(CryptoTxInfo(
                title:
                    "Exchange (${element.fromSymbol.name}-${element.targetSymbol.name})",
                txTime: DateTime.fromMillisecondsSinceEpoch(
                    (element.createdAt * 1000).toInt()),
                fromSymbol: element.fromSymbol.name,
                targetSymbol: element.targetSymbol.name,
                amount: element.amt,
                amountOfDollar: element.settleAmt,
                status:
                    element.status.value > 2 ? element.status.value - 2 : 0));
          }
          setState(() {});
        } else {
          dataStartIndex -= pageSize;
        }
      }
      if (_refreshListController.isRefresh) {
        _refreshListController.refreshCompleted();
      }
      if (_refreshListController.isLoading) {
        _refreshListController.loadComplete();
      }
    });
  }
}
