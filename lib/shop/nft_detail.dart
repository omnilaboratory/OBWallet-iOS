import 'dart:ffi';

import 'package:awallet/bean/nft_detail_info.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/card_deposit.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/src/int64.dart';

class NftDetail extends StatefulWidget {
  final NftDetailInfo detailInfo;

  const NftDetail({super.key, required this.detailInfo});

  @override
  State<NftDetail> createState() => _NftDetailState();
}

class _NftDetailState extends State<NftDetail> {
  int amount = 0;

  @override
  void initState() {
    super.initState();
    amount = int.parse(widget.detailInfo.textController.text);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
            appBar: AppBar(
              leadingWidth: 42,
              titleSpacing: 0,
              title: const HeadLogo(title: "NFT"),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 160,
                      child: Image.network(widget.detailInfo.imageUrl)),
                  Container(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text("NFT Name #${widget.detailInfo.tokenName}",
                                style: const TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                )),
                            const SizedBox(height: 12),
                            const Text("Current price",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 20,
                                )),
                            Text(
                                "\$${StringTools.formatCurrencyNum(widget.detailInfo.price)}",
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                )),
                            const SizedBox(height: 16),
                            const Text("Description",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 18,
                                )),
                            const SizedBox(height: 4),
                            Text(widget.detailInfo.description,
                                style: const TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 18,
                                )),
                            const SizedBox(height: 20),
                            Container(
                              height: 160,
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                shadows: const [
                                  BoxShadow(
                                    color: Color(0x7AAAA9DD),
                                    blurRadius: 10,
                                    offset: Offset(1, 1),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  buildDetailLine("Contract Address",
                                      StringTools.starString2(widget.detailInfo.contractAddress)),
                                  buildDetailLine(
                                      "Token ID", widget.detailInfo.tokenId.toString()),
                                  buildDetailLine("Token Standard", "ERC-1155"),
                                  buildDetailLine("Chain", "Polygon"),
                                ],
                              ),
                            ),
                          ])),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: 110,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              if (amount > 0) {
                                amount--;
                                amount = amount < 0 ? 0 : amount;
                                setState(() {
                                  widget.detailInfo.textController.text =
                                      amount.toString();
                                });
                                GlobalParams.eventBus.fire("nftAmountChange");
                              }
                            },
                            child: const Icon(Icons.remove_circle_outline)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: SizedBox(
                              width: 50,
                              height: 30,
                              child: createTextField2(
                                  widget.detailInfo.textController,
                                  keyboardType: TextInputType.number,
                                  onChanged: (String v) {
                                if (v.isEmpty) {
                                  amount = 0;
                                } else {
                                  amount = int.parse(v);
                                }
                                GlobalParams.eventBus.fire("nftAmountChange");
                              })),
                        ),
                        InkWell(
                            onTap: () {
                              amount++;
                              setState(() {
                                widget.detailInfo.textController.text =
                                    amount.toString();
                              });
                              GlobalParams.eventBus.fire("nftAmountChange");
                            },
                            child: const Icon(Icons.add_circle_outline)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomButton(
                        icon: 'asset/images/icon_confirm_green.png',
                        text: 'Buy NFT',
                        onPressed: () {
                          if (amount < 1) {
                            showToast(Tips.emptyAmount.value);
                            return;
                          }
                          if (LocalStorage.getEthAddress() == null ||
                              LocalStorage.getEthAddress()!.isEmpty) {
                            alert(Tips.createWallet.value, context, () {
                              GlobalParams.eventBus.fire("goToCrypto");
                              Navigator.pop(context);
                            });
                            return;
                          }

                          showDialog(
                              context: context,
                              builder: (context) {
                                return CardDeposit(
                                    nftAmt: amount,
                                    amt: (amount * widget.detailInfo.price)
                                        .toStringAsFixed(0),
                                    cardNo: "",
                                    date: "",
                                    cvc: "",
                                  tokenIds: [widget.detailInfo.tokenId],
                                  tokenIdValues: [Int64.parseInt(amount.toString())],
                                );
                              });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }

  Row buildDetailLine(String title, String content) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(title,
                style: const TextStyle(
                  fontSize: 14,
                ))),
        Expanded(
            flex: 1,
            child: Text(content,
                style: const TextStyle(
                  fontSize: 14,
                ))),
      ],
    );
  }
}
