import 'dart:async';

import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/crypto_token_item.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

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
      EthService.getInstance().updateTokenBalances().then((value) {
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
            onPressed: () {}),
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
                child: const Image(
                    image: AssetImage("asset/images/btn_new_wallet.png"))),
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
                child: const Image(
                    image: AssetImage("asset/images/btn_recover.png"))),
          ),
        ])),
      ),
    );
  }

  void createNewWallet() {
    EthService.getInstance().createWalletInfo().then((value) async {
      await updateTokenBalances();
    });
  }

  Future<void> updateTokenBalances() async {
    await EthService.getInstance().updateTokenBalances();
    if (mounted) {
      setState(() {});
    }
  }
}
