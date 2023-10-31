import 'dart:developer';

import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/card_deposit.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/dollar_nft_item.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ShopHome extends StatefulWidget {
  const ShopHome({super.key});

  @override
  State<ShopHome> createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {
  List<DollarNftItem> faceList = [];
  List<TextEditingController> controllers = [];
  int nftTotalCount = 0;
  double nftTotalValue = 0;

  @override
  void initState() {
    super.initState();
    GlobalParams.eventBus.on().listen((event) {
      if (event == "nftAmountChange") {
        log("nftAmountChange");
        nftTotalCount = 0;
        nftTotalValue = 0;
        for (int i = 0; i < EnumDollarFace.values.length; i++) {
          var dollarFace = EnumDollarFace.values[i];
          var controller = controllers[i];
          if (controller.text.isNotEmpty) {
            int amount = int.parse(controller.text);
            if (amount > 0) {
              nftTotalCount += amount;
              nftTotalValue += amount * double.parse(dollarFace.value);
            }
          }
        }
        if (mounted) {
          setState(() {});
        }
      }
    });

    GlobalParams.eventBus.on().listen((event) {
      if (event == "buyNftFinish") {
        nftTotalCount = 0;
        nftTotalValue = 0;
        setState(() {});
      }
    });
    for (int i = 0; i < EnumDollarFace.values.length; i++) {
      var controller = TextEditingController();
      faceList.add(
          DollarNftItem(faceType: i, amount: 0, textController: controller));
      controllers.add(controller);
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
          title: const HeadLogo(title: "Buy NFT"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  "You have selected $nftTotalCount NFTs and value is \$$nftTotalValue",
                  style: const TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                  )),
              const SizedBox(height: 20),
              Dash(
                dashColor: const Color(0xFFCFCFCF),
                length: MediaQuery.of(context).size.width - 100,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 16,
                    runSpacing: 4.0,
                    children: faceList,
                  ),
                ),
              ),
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
                      if (LocalStorage.getEthAddress() == null &&
                          LocalStorage.getEthAddress()!.isEmpty) {
                        alert(Tips.createWallet.value, context, () {});
                        return;
                      }
                      showDialog(
                          context: context,
                          builder: (context) {
                            return CardDeposit(
                                amt: nftTotalValue.toString(),
                                cardNo: "",
                                date: "",
                                cvc: "");
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
