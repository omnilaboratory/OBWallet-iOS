import 'dart:developer';

import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/dollar_face.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BuyNft extends StatefulWidget {
  final CardRechargeRequest rechargeRequest;

  const BuyNft({super.key, required this.rechargeRequest});

  @override
  State<BuyNft> createState() => _BuyNftState();
}

class _BuyNftState extends State<BuyNft> {
  List<DollarFace> faceList = [];
  int nftTotalCount = 0;

  @override
  void initState() {
    super.initState();
    List<int> nftCountList =
        StringTools.getNftCountByMoneyAmount(widget.rechargeRequest.amt);
    for (int i = 0; i < nftCountList.length; i++) {
      if (nftCountList[i] > 0) {
        faceList.add(DollarFace(faceType: i, amount: nftCountList[i]));
        nftTotalCount += nftCountList[i];
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    final formatter = NumberFormat("#,###");
    final result    = formatter.format(widget.rechargeRequest.amt);

    String tips = "You are depositing \$$result and will get $nftTotalCount NFTs.";

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 42,
        titleSpacing: 0,
        title: const HeadLogo(title: "BuyNft"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(tips,
              style: const TextStyle(
                // color: Color(0xFF999999),
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )
            ),
          ),

          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black54, width: 1
                  )
                )
              ),
            ),
          ),

          Wrap(
            spacing: 20,
            runSpacing: 16.0,
            children: faceList,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomButton(
                icon: 'asset/images/icon_arrow_left_green.png',
                text: 'BACK',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              BottomButton(
                icon: 'asset/images/icon_confirm_green.png',
                text: 'DONE',
                onPressed: () {
                  alert(tips, context, () {
                    onClickDone();
                  }, showCancel: true);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  onClickDone() async {
    log("onClickDone");
    var loading = showLoading(context);
    widget.rechargeRequest.chargeForNft = true;
    CardService.getInstance()
        .cardRecharge(context, widget.rechargeRequest)
        .then((resp) {
      if (resp.code == 1) {
        log("${resp.data}");
        alert(Tips.buyNftSuccess.value, context, () {
          Navigator.pop(context);
          Navigator.pop(context);
        });
      } else {
        alert(resp.msg, context, () {});
      }
      loading.remove();
    });
  }
}
