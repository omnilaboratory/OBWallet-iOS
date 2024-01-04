import 'dart:async';
import 'dart:developer';

import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_token_item.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class EthereumPage extends StatefulWidget {
  const EthereumPage({super.key});

  @override
  State<EthereumPage> createState() => _EthereumPageState();
}

class _EthereumPageState extends State<EthereumPage> {
  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  List<Widget> nftList = [];

  Timer? timer;

  @override
  void initState() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "MoreMenu_setNetwork" || event == "exchange_showTips") {
        _updateBalance();
      }
    });

    super.initState();

    timer ??= Timer.periodic(const Duration(seconds: 30), (timer) {
      _updateBalance();
    });
    _updateBalance();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  _updateBalance() {
    log("EthereumPage updateBalance");
    var address = LocalStorage.getEthAddress();
    if (address != null) {
      EthService.getInstance().updateTokenBalances(context).then((value) {
        if (mounted) {
          setState(() {});
        }
        _refreshBalanceController.refreshCompleted();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var address = LocalStorage.getEthAddress();
    if (address == null) {
      showToast("no wallet address");
    }
    var walletInfo = EthService.getInstance().getWalletInfo();

    var localList = [];
    localList.addAll(EthService.getInstance().getTokenList());
    localList.addAll(EthService.getInstance().getTokenListPolygon());

    Widget buildTokenAndNftList() {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return CryptoTokenItem(tokenInfo: localList[index]);
        },
        itemCount: localList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      );
    }

    return SmartRefresher(
      controller: _refreshBalanceController,
      onRefresh: _updateBalance,
      child: Column(
        children: [
          CryptoWalletCard(walletInfo: walletInfo),
          const SizedBox(height: 20),
          buildTxButtons(),
          Padding(
            padding: const EdgeInsets.only(top: 25, bottom: 10),
            child: Dash(
              dashColor: const Color(0xFFCFCFCF),
              length: MediaQuery.of(context).size.width - 60,
            ),
          ),
          const SizedBox(height: 2),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [buildTokenAndNftList(), const SizedBox(height: 20)],
            )),
          )
        ],
      ),
    );
  }

  Widget buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 50) / 4;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: S.of(context).ethereumPage_Pay,
            onPressed: () {
              showToast(S.of(context).tips_comeSoon);
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: S.of(context).ethereumPage_Exchange,
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Exchange(type: EnumExchangeType.sell, name: 'ETH');
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_receive.png',
            text: S.of(context).ethereumPage_Receive,
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
            text: S.of(context).ethereumPage_Send,
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Send(name: 'ETH');
                  });
            }),
      ],
    );
  }

  Column createBtn(String iconUrl, String btnName) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Image(
            width: 36,
            height: 36,
            image: AssetImage("asset/images/$iconUrl"),
            color: Colors.green,
          ),
        ),
        Text(
          btnName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            letterSpacing: 4,
          ),
        )
      ],
    );
  }

  void createNewWallet() {
    var loading = showLoading(context);
    EthService.getInstance().createWalletInfo(context).then((value) async {
      await updateTokenBalances();
      removeLoading(loading);
    });
  }

  Future<void> updateTokenBalances() async {
    await EthService.getInstance().updateTokenBalances(context);
    if (mounted) {
      setState(() {});
    }
  }
}
