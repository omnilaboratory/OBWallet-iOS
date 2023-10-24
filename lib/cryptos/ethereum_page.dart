import 'dart:async';
import 'dart:developer';

import 'package:awallet/bean/dollar_face_info.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/crypto_token_item.dart';
import 'package:awallet/component/crypto_wallet_card.dart';
import 'package:awallet/component/dollar_face.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/cryptos/nft_exchange.dart';
import 'package:awallet/cryptos/receive_wallet_address.dart';
import 'package:awallet/cryptos/send.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'ethereum_recover_wallet.dart';

class EthereumPage extends StatefulWidget {
  const EthereumPage({super.key});

  @override
  State<EthereumPage> createState() => _EthereumPageState();
}

class _EthereumPageState extends State<EthereumPage> {
  final RefreshController _refreshBalanceController =
      RefreshController(initialRefresh: false);

  List<Widget> nftList = [];

  @override
  void initState() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "MoreMenu_setNetwork") {
        _updateBalance();
      }
    });
    super.initState();
    _updateBalance();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _updateBalance() {
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
      return createOrRecoverWallet();
    }
    var walletInfo = EthService.getInstance().getWalletInfo();
    var tokenList = EthService.getInstance().getTokenList();

    log("build currTypeIndex $currTypeIndex");

    Widget buildTokenAndNftList() {
      return currTypeIndex == 0
          ? ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return CryptoTokenItem(tokenInfo: tokenList[index]);
              },
              itemCount: tokenList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
            )
          : nftList.isEmpty
              ? const Text("No NFTs")
              : Wrap(
                  spacing: 20,
                  runSpacing: 16.0,
                  children: nftList,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    onClickType(0);
                  },
                  child: Text("Tokens",
                      style: TextStyle(
                          color: currTypeIndex == 0
                              ? Colors.lightBlueAccent
                              : Colors.black))),
              InkWell(
                  onTap: () {
                    onClickType(1);
                  },
                  child: Text("NFTs",
                      style: TextStyle(
                          color: currTypeIndex == 1
                              ? Colors.lightBlueAccent
                              : Colors.black)))
            ],
          ),
          const SizedBox(height: 20),
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
            text: 'Pay',
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
                    return Exchange(type: EnumExchangeType.sell, name: 'ETH');
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
                    return Send(name: 'ETH');
                  });
            }),
      ],
    );
  }

  Widget createOrRecoverWallet() {
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          height: 380,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child:
                      Image(image: AssetImage("asset/images/img_wallet.png")),
                ),
                InkWell(
                    onTap: () {
                      createNewWallet();
                    },
                    child: createBtn("icon_plus.png", "Create New Wallet")),
                InkWell(
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
                    child: createBtn(
                        "image_recover_wallet.png", "Recover Wallet")),
              ]),
        ),
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
    var loading = showLoading(context);
    EthService.getInstance().createWalletInfo(context).then((value) async {
      await updateTokenBalances();
      loading.remove();
    });
  }

  Future<void> updateTokenBalances() async {
    await EthService.getInstance().updateTokenBalances(context);
    if (mounted) {
      setState(() {});
    }
  }

  final RefreshController _refreshListController =
      RefreshController(initialRefresh: false);
  var currTypeIndex = 0;

  void onClickType(int type) {
    if (currTypeIndex == type) {
      return;
    }
    if (_refreshListController.isRefresh || _refreshListController.isLoading) {
      return;
    }

    currTypeIndex = type;
    if (type == 0) {}
    if (type == 1) {
      nftList.clear();
      AccountService.getInstance().getNftBalance(context).then((resp) {
        log("getNftBalance ${resp.code} ${resp.data}");
        if (resp.code == 1) {
          CommonService.nftInfoList.clear();
          List<NftToken> nftInfos = resp.data;
          if (nftInfos.isNotEmpty) {
            nftInfos.sort((a, b) => b.tokenId.compareTo(a.tokenId));

            for (int i = 0; i < nftInfos.length; i++) {
              NftToken token = nftInfos[i];
              DollarFaceInfo nodeInfo = DollarFaceInfo(
                  faceType:
                      Utils.getEnumDollarFaceIndex(token.tokenId.toString()),
                  amount: token.amt.toInt());

              if (nodeInfo.amount <= 0) {
                continue;
              }
              CommonService.nftInfoList.add(nodeInfo);
              nftList.add(GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              NftExchange(faceInfo: nodeInfo)));
                },
                child: DollarFace(
                    faceType: nodeInfo.faceType, amount: nodeInfo.amount),
              ));
            }
          }
        }
        if (mounted) {
          setState(() {});
        }
      });
    }
    if (mounted) {
      setState(() {});
    }
  }
}
