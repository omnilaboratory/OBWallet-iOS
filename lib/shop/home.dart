import 'dart:developer';

import 'package:awallet/bean/enum_eth_key.dart';
import 'package:awallet/bean/nft_detail_info.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/card_deposit.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/dollar_nft_item.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';

import 'nft_detail.dart';

class ShopHome extends StatefulWidget {
  const ShopHome({super.key});

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  List<Widget> faceList = [];
  List<NftDetailInfo> nftDetailInfoList = [];
  double nftTotalValue = 0;
  int nftTotalCount = 0;
  List<Int64> tokenIds = [];
  List<Int64> tokenIdValues = [];

  @override
  void initState() {
    super.initState();
    eventListen();
    if (nftInfoListFromServer.isEmpty) {
      AccountService.getInstance()
          .getNftBalance(context, isAll: true)
          .then((resp) {
        if (resp.code == 1) {
          if (nftInfoListFromServer.isNotEmpty) {
            buildData(true);
          }
        }
      });
    } else {
      buildData(false);
    }
  }

  void eventListen() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "nftAmountChange") {
        nftTotalCount = 0;
        nftTotalValue = 0;
        tokenIds = [];
        tokenIdValues = [];
        for (int i = 0; i < nftDetailInfoList.length; i++) {
          var nftInfo = nftDetailInfoList[i];
          var controller = nftInfo.textController;
          if (controller.text.isNotEmpty) {
            int amount = int.parse(controller.text);
            if (amount > 0) {
              tokenIds.add(nftInfo.tokenId);
              tokenIdValues.add(Int64.parseInt(amount.toString()));
              nftTotalCount += amount;
              nftTotalValue += amount * nftInfo.price;
            }
          }
        }
        if (mounted) {
          setState(() {});
        }
      }

      if (event == "buyNftFinish") {
        nftTotalCount = 0;
        nftTotalValue = 0;
        tokenIds = [];
        tokenIdValues = [];
        if (mounted) {
          setState(() {});
        }
      }
    });
  }

  void buildData(bool needFresh) {
    for (int i = 0; i < nftInfoListFromServer.length; i++) {
      var nftInfo = nftInfoListFromServer[i];
      log("$nftInfo");
      var controller = TextEditingController();
      nftDetailInfoList.add(NftDetailInfo(
          GlobalParams.dataInNetwork[GlobalParams.currNetwork][EnumEthKey.nft],
          nftInfo.tokenId,
          nftInfo.itemPrice,
          nftInfo.name,
          nftInfo.imageUrl,
          nftInfo.des,
          controller));

      faceList.add(DollarNftItem(
        faceType: i,
        amount: 0,
        textController: controller,
        onClick: () {
          var nftInfo = nftDetailInfoList[i];
          AccountService.getInstance()
              .getNftToken(context, nftInfo.tokenId)
              .then((resp) {
            if (resp.code == 1) {
              log("${resp.data}");
              var nftInfoFromServer = resp.data as NftToken;
              nftInfo.tokenName = nftInfoFromServer.name;
              nftInfo.description = nftInfoFromServer.des;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NftDetail(
                            detailInfo: nftInfo,
                          )));
            }
          });
        },
      ));
    }
    if (needFresh && mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          title: const HeadLogo(title: "Shop"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "You have selected $nftTotalCount NFTs and value is \$${StringTools.formatCurrencyNum(nftTotalValue)}",
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  )),
              Center(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 5),
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.black54, width: 1))),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 12.0,
                    children: faceList,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomButton(
                    icon: 'asset/images/icon_confirm_green.png',
                    text: 'Buy NFT',
                    onPressed: () {
                      if (nftTotalValue < 1) {
                        showToast(Tips.emptyAmount.value);
                        return;
                      }
                      if (LocalStorage.getEthAddress() == null ||
                          LocalStorage.getEthAddress()!.isEmpty) {
                        alert(Tips.createWallet.value, context, () {
                          GlobalParams.eventBus.fire("goToCrypto");
                        });
                        return;
                      }
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CardDeposit(
                              nftAmt: nftTotalCount,
                              amt: nftTotalValue,
                              tokenIds: tokenIds,
                              tokenIdValues: tokenIdValues,
                            );
                          });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
