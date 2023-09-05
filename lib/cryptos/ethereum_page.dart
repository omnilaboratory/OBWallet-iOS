import 'dart:async';

import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/crypto_token_item.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'ethereum_recover_wallet.dart';

class EthereumPage extends StatefulWidget {
  const EthereumPage({super.key});

  @override
  State<EthereumPage> createState() => _EthereumPageState();
}

class _EthereumPageState extends State<EthereumPage> {
  Timer? updateBalanceTimer;

  @override
  void initState() {
    updateBalance();
    updateBalanceTimer ??= Timer.periodic(const Duration(seconds: 30), (timer) {
      updateBalance();
    });

    GlobalParams.eventBus.on().listen((event) {
      if (event == "MoreMenu_setNetwork") {
        updateBalance();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    if (updateBalanceTimer != null && updateBalanceTimer!.isActive) {
      updateBalanceTimer!.cancel();
    }
    super.dispose();
  }

  void updateBalance() {
    var address = LocalStorage.get(LocalStorage.ethAddress);
    if (address != null) {
      EthService.getInstance().updateTokenBalances(context).then((value) {
        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var address = LocalStorage.get(LocalStorage.ethAddress);

    if (address == null) {
      return createOrRecoverWallet();
    }

    var walletInfo = EthService.getInstance().getWalletInfo();

    var tokenList = EthService.getInstance().getTokenList();

    return Center(
      child: Column(
        children: [
          CryptoWalletCard(walletInfo: walletInfo),
          const SizedBox(height: 20),
          buildTxButtons(),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return CryptoTokenItem(tokenInfo: tokenList[index]);
              },
              shrinkWrap: true,
              padding: const EdgeInsets.only(
                  left: 10, top: 20, right: 10, bottom: 20),
              itemCount: tokenList.length,
            ),
          )
        ],
      ),
    );
  }

  Widget buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 50) / 5;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: 'Pay',
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Coming Soon...", gravity: ToastGravity.CENTER);
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Exchange(type: EnumExchangeType.sell);
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
                    return const Send();
                  });
            }),
      ],
    );
  }

  Widget createOrRecoverWallet() {
    return SingleChildScrollView(
      child: Center(
        child: Center(
            child: Column(children: [
          const SizedBox(height: 60),
          const Image(image: AssetImage("asset/images/img_wallet.png")),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: InkWell(
                onTap: () {
                  createNewWallet();
                },
                child: createBtn("icon_plus.png", "Create New Wallet")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 20),
            child: InkWell(
                onTap: () async {
                  var flag = await showDialog(
                      context: context,
                      builder: (context) {
                        return const EthereumRecoverWallet();
                      });
                  if (flag != null && flag) {
                    updateTokenBalances();
                    setState(() {});
                  }
                },
                child: createBtn("image_recover_wallet.png", "Recover Wallet")),
          ),
        ])),
      ),
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
    EthService.getInstance().createWalletInfo(context).then((value) async {
      await updateTokenBalances();
    });
  }

  Future<void> updateTokenBalances() async {
    await EthService.getInstance().updateTokenBalances(context);
    if (mounted) {
      setState(() {});
    }
  }
}
