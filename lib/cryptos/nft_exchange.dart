import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/dollar_face_info.dart';
import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/dollar_face.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NftExchange extends StatefulWidget {
  final DollarFaceInfo faceInfo;

  const NftExchange({super.key, required this.faceInfo});

  @override
  State<NftExchange> createState() => _NftExchangeState();
}

class _NftExchangeState extends State<NftExchange> {
  final TextEditingController _amountNftController = TextEditingController();
  final TextEditingController _amountDollarController = TextEditingController();
  late DollarFaceInfo currSelectedFace = widget.faceInfo;
  double currCurrencyRatio = 1;

  var initTokenList = EthService.getInstance().getTokenList();
  List<TokenInfo> tokenList = [];
  late TokenInfo currSelectedToken;

  @override
  void initState() {
    super.initState();
    tokenList.addAll(GlobalParams.currencyList);
    tokenList.addAll(initTokenList);
    currSelectedToken = tokenList[0];
  }

  @override
  Widget build(BuildContext context) {
    log("build");
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 42,
          titleSpacing: 0,
          title: const HeadLogo(title: "NFT Exchange"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              DollarFace(
                  faceType: currSelectedFace.faceType,
                  amount: currSelectedFace.amount),
              const SizedBox(height: 40),
              buildNftPart(EnumDollarFace.values[currSelectedFace.faceType]),
              const SizedBox(height: 40),
              buildDollarPart(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      _amountNftController.text.isEmpty
                          ? ""
                          : 'Exchange ${_amountNftController.text} NFT to \$${_amountDollarController.text}',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
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
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNftPart(EnumDollarFace enumDollarFace) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'From',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: createTextField(_amountNftController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                  int? amount = int.tryParse(value);
                  setState(() {
                    if (amount != null) {
                      if (amount <= 0) {
                        _amountNftController.text = "0";
                        return;
                      }
                      if (amount > currSelectedFace.amount) {
                        _amountNftController.text =
                            currSelectedFace.amount.toString();
                        setDollarAmount();
                      } else {
                        setDollarAmount();
                      }
                    } else {
                      setDollarAmount();
                    }
                  });
                }),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 48,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<DollarFaceInfo>(
                      icon: const Image(
                          width: 24,
                          height: 24,
                          image: AssetImage(
                              "asset/images/icon_arrow_down_black.png")),
                      isExpanded: true,
                      value: currSelectedFace,
                      items: buildNftDropdownItemList(),
                      onChanged: (value) {
                        setState(() {
                          currSelectedFace = value!;
                          resetValues();
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Balance: ${currSelectedFace.amount} NFTs',
                style: const TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  _amountNftController.text =
                      currSelectedFace.amount.toString();
                  setDollarAmount();
                },
                child: const Text(
                  'MAX',
                  style: TextStyle(
                    color: Color(0xFF4A92FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  resetValues() {
    _amountDollarController.text = "";
    _amountNftController.text = "";
  }

  List<DropdownMenuItem<DollarFaceInfo>> buildNftDropdownItemList() {
    List<DropdownMenuItem<DollarFaceInfo>> list =
        CommonService.nftInfoList.map((DollarFaceInfo value) {
      return DropdownMenuItem<DollarFaceInfo>(
        value: value,
        child: Row(
          children: [
            const SizedBox(width: 7),
            AutoSizeText(
              EnumDollarFace.values[value.faceType].name,
              maxLines: 1,
              minFontSize: 12,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }).toList();
    return list;
  }

  List<DropdownMenuItem<TokenInfo>> buildTokenDropdownItemList() {
    List<DropdownMenuItem<TokenInfo>> list = tokenList.map((TokenInfo value) {
      return DropdownMenuItem<TokenInfo>(
        value: value,
        child: Row(
          children: [
            const SizedBox(width: 7),
            Image(
              width: 20,
              height: 20,
              image: AssetImage(value.iconUrl),
            ),
            const SizedBox(width: 7),
            AutoSizeText(
              value.name,
              maxLines: 1,
              minFontSize: 12,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }).toList();
    return list;
  }

  Widget buildDollarPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'To',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: createTextField(
                  _amountDollarController,
                  keyboardType: TextInputType.number,
                  enabled: false,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 48,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<TokenInfo>(
                      icon: const Image(
                          width: 24,
                          height: 24,
                          image: AssetImage(
                              "asset/images/icon_arrow_down_black.png")),
                      value: currSelectedToken,
                      isExpanded: true,
                      items: buildTokenDropdownItemList(),
                      onChanged: (value) {
                        if (value != null) {
                          getCoinPrice(value.name);
                          setState(() {
                            currSelectedToken = value;
                          });
                        }
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void getCoinPrice(String name) {
    if (name.toLowerCase() == "usd") {
      currCurrencyRatio = 1;
      setDollarAmount();
    } else {
      AccountService.getInstance()
          .getCoinPrice(context, name)
          .then((value) async {
        if (value.code == 1) {
          var resp = value.data as GetCoinPriceResponse;
          log(resp.price.toString());
          if (mounted) {
            setState(() {
              currCurrencyRatio =
                  double.parse((1.0 / resp.price).toStringAsFixed(8));
              setDollarAmount();
            });
          }
        }
      });
    }
  }

  void setDollarAmount() {
    int? amount = int.tryParse(_amountNftController.text);
    if (amount != null) {
      var dollars = amount *
          double.parse(EnumDollarFace.values[currSelectedFace.faceType].value);
      _amountDollarController.text =
          (dollars * currCurrencyRatio).toStringAsFixed(8);
    } else {
      _amountDollarController.text = "";
    }
  }
}
