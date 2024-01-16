import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cards/card_recharge.dart';
import 'package:awallet/cards/exchange_confirm.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/number_controller_widget.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/services/token_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/precision_limit_formatter.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Exchange extends StatefulWidget {
  EnumExchangeType type;
  String name;
  NetWork? network;

  Exchange({super.key, this.type = EnumExchangeType.sell, required this.name,this.network});

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  final TextEditingController _amountTokenController = TextEditingController();
  final TextEditingController _amountCurrencyController = TextEditingController();

  double totalBalanceUsd = 0;
  double coinPrice = -1;

  late GetUserSwapPriceResponse currPriceInfo;

  List<TokenInfo> tokenList = [];
  var currencyList = GlobalParams.currencyList;

  late TokenInfo currSelectedToken;
  late TokenInfo currSelectedCurrency;
  int num = 6;
  late bool canCurrencyClick;
  late bool canTokenClick;

  @override
  void initState() {
    super.initState();
    //init data
    tokenList=TokenService.getInstance().getTokenList(network: widget.network);
    for (int i = 0; i < tokenList.length; i++) {
      TokenInfo tokenInfo = tokenList[i];
      if (tokenInfo.name == widget.name) {
        int index = tokenList.indexOf(tokenInfo);
        tokenList.insert(0, tokenList.removeAt(index));
      }
    }
    currSelectedCurrency = currencyList[0];

    if (currSelectedCurrency.balance == 0) {
      canCurrencyClick = false;
    } else {
      canCurrencyClick = true;
    }

    currSelectedToken = tokenList[0];
    if (currSelectedToken.balance == 0) {
      canTokenClick = false;
    } else {
      canTokenClick = true;
    }

    // updateTokenBalances for crypto
    var address = LocalStorage.getEthAddress();
    if (address != null) {
      TokenService.getInstance().updateTokenBalances(context).then((value) {
        if (mounted) {
          setState(() {
            if (currSelectedToken.balance == 0) {
              canTokenClick = false;
            } else {
              canTokenClick = true;
            }
          });
        }
      });
    }

    // getAccountInfo for card
    AccountService.getInstance().getAccountInfo(context).then((value) async {
      if (value.code == 1) {
        var resp = value.data as AccountInfo;
        log(resp.toString());
        currSelectedCurrency.balance = resp.balance;
        setState(() {
          if (currSelectedCurrency.balance == 0) {
            canCurrencyClick = false;
          } else {
            canCurrencyClick = true;
          }
        });
      } else {
        log(value.msg);
      }
    });

    GlobalParams.eventBus.on().listen((event) {
      if (event == "exchange" || event == "topup") {
        if (mounted) {
          setState(() {
            Navigator.pop(context);
          });
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  onNext() {
    if (widget.type == EnumExchangeType.sell) {
      if (_amountTokenController.value.text
          .toString()
          .isEmpty) {
        showToast(S
            .of(context)
            .tips_emptyAmount1);
        return;
      }

      if (_amountCurrencyController.value.text
          .toString()
          .isEmpty) {
        showToast(S
            .of(context)
            .tips_emptyAmount2);
        return;
      }

      if (double.parse(
          _amountTokenController.value.text.toString().replaceAll(",", "")) ==
          0) {
        showToast(S
            .of(context)
            .tips_zeroAmount1);
        return;
      }

      if (double.parse(
          _amountCurrencyController.value.text.toString().replaceAll(
              ",", "")) == 0) {
        showToast(S
            .of(context)
            .tips_zeroAmount2);
        return;
      }

      if (double.parse(
          _amountTokenController.value.text.toString().replaceAll(",", "")) >
          double.parse(
              StringTools.formatCurrencyNum(currSelectedToken.balance)
                  .replaceAll(",", ""))) {
        showToast(S
            .of(context)
            .tips_maxAmount1);
        return;
      }
    } else if (widget.type == EnumExchangeType.buy) {
      if (_amountCurrencyController.value.text
          .toString()
          .isEmpty) {
        showToast(S
            .of(context)
            .tips_emptyAmount1);
        return;
      }

      if (_amountTokenController.value.text
          .toString()
          .isEmpty) {
        showToast(S
            .of(context)
            .tips_emptyAmount2);
        return;
      }

      if (double.parse(
          _amountCurrencyController.value.text.toString().replaceAll(
              ",", "")) == 0) {
        showToast(S
            .of(context)
            .tips_zeroAmount1);
        return;
      }

      if (double.parse(
          _amountTokenController.value.text.toString().replaceAll(",", "")) ==
          0) {
        showToast(S
            .of(context)
            .tips_zeroAmount2);
        return;
      }

      if (double.parse(
          _amountCurrencyController.value.text.toString().replaceAll(",", "")) >
          double.parse(
              StringTools.formatCurrencyNum(currSelectedCurrency.balance)
                  .replaceAll(",", ""))) {
        showToast(S
            .of(context)
            .tips_maxAmount1);
        return;
      }
    }

    if (LocalStorage.getEthAddress() == null) {
      showToast(S
          .of(context)
          .tips_createEthAddress);
      return;
    }

    FocusScope.of(context).unfocus();
    // Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return ExchangeConfirm(
              fromAmt: double.parse(
                  _amountTokenController.text.replaceAll(",", "")),
              toAmt: double.parse(
                  _amountCurrencyController.text.replaceAll(",", "")),
              fromCoin: currSelectedToken.name,
              toCoin: currSelectedCurrency.name,
              type: widget.type,
              priceInfo: currPriceInfo
          );
        });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 40),
                buildMainBody(size, context),
                const SizedBox(height: 20),
                BottomWhiteButton(
                  icon: 'asset/images/icon_close_white.png',
                  text: S
                      .of(context)
                      .common_Cancel
                      .toUpperCase(),
                  onPressed: onClose,
                )
              ],
            ),
          ),
        ));
  }

  Container buildMainBody(Size size, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      width: size.width * 0.8,
      height: size.height * 0.72,
      child: Column(children: [
        const SizedBox(height: 25),
        createDialogTitle(S
            .of(context)
            .exchange_tile),
        const SizedBox(height: 25),
        buildSubTitleForStep(),
        Expanded(
          flex: 8,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            reverse: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 0, top: 25),
                      child: Text(
                        'From',
                        style: TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  widget.type == EnumExchangeType.sell
                      ? buildToken()
                      : buildCurrency(),

                  const SizedBox(height: 25),
                  InkWell(
                    onTap: () {
                      log("onTap icon_arrow_down_gray");
                      if (widget.type != EnumExchangeType.buy) {
                        widget.type = EnumExchangeType.buy;
                      } else {
                        widget.type = EnumExchangeType.sell;
                      }
                      _amountCurrencyController.text = "";
                      _amountTokenController.text = "";
                      coinPrice = -1;
                      setState(() {});
                    },
                    child: const Image(
                      width: 22,
                      height: 22,
                      image:
                      AssetImage("asset/images/icon_arrow_down_gray.png"),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.8,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0, top: 15),
                      child: Text(
                        S
                            .of(context)
                            .exchange_To,
                        style: const TextStyle(
                          color: Color(0xFF999999),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  widget.type == EnumExchangeType.sell
                      ? buildCurrency()
                      : buildToken(),
                  const SizedBox(height: 5),
                  coinPrice == -1
                      ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S
                            .of(context)
                            .exchange_wait,
                        style: const TextStyle(color: Colors.black45,
                            fontSize: 12),
                      ),
                    ],
                  )
                      : Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        widget.type == EnumExchangeType.sell
                            ? currSelectedToken.name
                            : currSelectedCurrency.name,
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 2),
                      const Text(
                        '=',
                        style: TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        widget.type == EnumExchangeType.sell
                            ? StringTools.formatCurrencyNum(coinPrice)
                            : currSelectedToken.name == 'ETH'
                            ? StringTools.formatCryptoNum(
                            1 / coinPrice)
                            : StringTools.formatCurrencyNum(
                            1 / coinPrice),
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 2),
                      Text(
                        widget.type == EnumExchangeType.sell
                            ? currSelectedCurrency.name
                            : currSelectedToken.name,
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Padding(
                        padding: EdgeInsets.only(left: 0, top: 30),
                        child: Text(
                          'Maximum Slippage(%)',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        )),
                  ),
                  const SizedBox(height: 7),
                  GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: NumberControllerWidget(
                      numText: '0.5',
                      addValueChanged: (number) {
                        log(number);
                      },
                      removeValueChanged: (number) {
                        log(number);
                      },
                      updateValueChanged: (number) {},
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        S
                            .of(context)
                            .exchange_ReceiveAtLeast,
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        widget.type == EnumExchangeType.sell
                            ? StringTools.formatCurrencyNum(double.parse(
                            _amountCurrencyController.text.isEmpty
                                ? '0'
                                : _amountCurrencyController.text.replaceAll(
                                ",", "")) *
                            0.95)
                            : currSelectedToken.name == 'ETH'
                            ? StringTools.formatCryptoNum(double.parse(
                            _amountTokenController.text.isEmpty
                                ? '0'
                                : _amountTokenController.text.replaceAll(
                                ",", "")) *
                            0.95)
                            : StringTools.formatCurrencyNum(double.parse(
                            _amountTokenController.text.isEmpty
                                ? '0'
                                : _amountTokenController.text.replaceAll(
                                ",", "")) *
                            0.95),
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                      const SizedBox(width: 3),
                      Text(
                        widget.type == EnumExchangeType.sell
                            ? currSelectedCurrency.name
                            : currSelectedToken.name,
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    S
                        .of(context)
                        .exchange_InputTips1,
                    style: const TextStyle(color: Colors.black45, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: BottomButton(
            icon: 'asset/images/icon_arrow_right_green.png',
            text: S
                .of(context)
                .common_Next
                .toUpperCase(),
            onPressed: coinPrice > 0
                ? onNext
                : () {
              showToast("wrong rate");
            },
          ),
        ),
      ]),
    );
  }

  Widget buildCurrency() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
                height: 34,
                child: TextField(
                  controller: _amountCurrencyController,
                  enabled: widget.type == EnumExchangeType.buy,
                  maxLines: 10,
                  minLines: 1,
                  inputFormatters: [PrecisionLimitFormatter(2)],
                  onChanged: (text) {
                    setState(() {
                      if (text.isEmpty) {
                        _amountTokenController.text = '';
                        coinPrice = -1;
                      } else {
                        getUserSwapPrice(double.parse(text));
                      }
                    });
                  },
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  cursorColor: const Color(0xFF4A92FF),
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    border: _outlineRightInputBorder,
                    focusedBorder: _outlineRightInputBorder,
                    enabledBorder: _outlineRightInputBorder,
                    disabledBorder: _outlineRightInputBorder,
                    focusedErrorBorder: _outlineRightInputBorder,
                    errorBorder: _outlineRightInputBorder,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 34,
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
                    value: currSelectedCurrency,
                    isExpanded: true,
                    items: buildCurrencyDropdownItemList(),
                    onChanged: (value) {
                      setState(() {
                        currSelectedCurrency = value!;
                        if (currSelectedCurrency.balance == 0) {
                          canCurrencyClick = false;
                        } else {
                          canCurrencyClick = true;
                        }
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Positioned(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S
                              .of(context)
                              .exchange_Balance,
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                        Text(
                          StringTools.formatCurrencyNum(
                              currSelectedCurrency.balance),
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: GestureDetector(
                        onTap: widget.type == EnumExchangeType.buy ? () {
                          setState(() {
                            _amountCurrencyController.text =
                                StringTools.formatCurrencyNum(
                                    currSelectedCurrency.balance);
                            getUserSwapPrice(currSelectedCurrency.balance!);
                          });
                        }
                            : null,
                        child: Text(
                          S
                              .of(context)
                              .exchange_Max
                              .toUpperCase(),
                          style: TextStyle(
                            color: canCurrencyClick
                                ? const Color(0xFF4A92FF)
                                : const Color(0xFF999999),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
        Visibility(
            visible: isShow(_amountCurrencyController.text),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        S
                            .of(context)
                            .exchange_notEnoughBalance,
                        style: const TextStyle(
                          color: Color(0xFF666666),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        showDialog(
                            context: context,
                            builder: (context) {
                              return CardRecharge(
                                  amt: _amountCurrencyController.text,
                                  type: EnumChargeType.deposit);
                            });
                      },
                      child: Text(
                        S
                            .of(context)
                            .exchange_Deposit,
                        style: const TextStyle(
                          color: Color(0xFF4A92FF),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.29,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }

  isShow(String input) {
    if (widget.type == EnumExchangeType.buy) {
      if (input.isNotEmpty) {
        if (double.parse(input.replaceAll(",", "")) >
            currSelectedCurrency.balance!) {
          return true;
        }
      }
    }
    return false;
  }

  Widget buildToken() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: SizedBox(
                height: 34,
                child: TextField(
                  controller: _amountTokenController,
                  enabled: widget.type == EnumExchangeType.sell,
                  maxLines: 10,
                  minLines: 1,
                  inputFormatters: [PrecisionLimitFormatter(num)],
                  onChanged: (text) {
                    setState(() {
                      if (text.isEmpty) {
                        _amountCurrencyController.text = '';
                        coinPrice = -1;
                      } else {
                        getUserSwapPrice(double.parse(text));
                      }
                    });
                  },
                  keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
                  cursorColor: const Color(0xFF4A92FF),
                  style: const TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 7),
                    border: _outlineRightInputBorder,
                    focusedBorder: _outlineRightInputBorder,
                    enabledBorder: _outlineRightInputBorder,
                    disabledBorder: _outlineRightInputBorder,
                    focusedErrorBorder: _outlineRightInputBorder,
                    errorBorder: _outlineRightInputBorder,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                height: 34,
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
                    // menuMaxHeight: 120,
                    items: buildTokenDropdownItemList(),
                    onChanged: (value) {
                      setState(() {
                        currSelectedToken = value!;
                        _amountCurrencyController.text = '';
                        _amountTokenController.text = '';
                        if (currSelectedToken.name == 'ETH') {
                          num = 6;
                        } else {
                          num = 2;
                        }
                        if (currSelectedToken.balance == 0) {
                          canTokenClick = false;
                        } else {
                          canTokenClick = true;
                        }
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Positioned(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S
                              .of(context)
                              .exchange_Balance,
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                        Text(
                          currSelectedToken.name == 'ETH'
                              ? StringTools.formatCryptoNum(
                              currSelectedToken.balance)
                              : StringTools.formatCurrencyNum(
                              currSelectedToken.balance),
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: GestureDetector(

                        onTap: widget.type == EnumExchangeType.sell ? () {
                          setState(() {
                            currSelectedToken.name == 'ETH'
                                ? _amountTokenController.text =
                                StringTools.formatCryptoNum(
                                    currSelectedToken.balance)
                                : _amountTokenController.text =
                                StringTools.formatCurrencyNum(
                                    currSelectedToken.balance);

                            getUserSwapPrice(currSelectedToken.balance!);
                          });
                        } : null,
                        child: Text(
                          S
                              .of(context)
                              .exchange_Max,
                          style: TextStyle(
                            color: canTokenClick
                                ? const Color(0xFF4A92FF)
                                : const Color(0xFF999999),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        )
      ],
    );
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

  List<DropdownMenuItem<TokenInfo>> buildCurrencyDropdownItemList() {
    List<DropdownMenuItem<TokenInfo>> list =
    currencyList.map((TokenInfo value) {
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

  Widget buildSubTitleForStep() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFFEC9A1E),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 7),
        Text(
          S.of(context).exchange_Step(1),
          style: const TextStyle(
            color: Color(0xD6EC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Dash(
              direction: Axis.horizontal,
              dashLength: 2,
              length: 45,
              dashColor: Color(0xFF999999)),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFF999999),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 7),
        Text(
          S.of(context).exchange_Step(2),
          style: const TextStyle(
            color: Color(0xD6999999),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  final OutlineInputBorder _outlineRightInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
  );

  void getUserSwapPrice(double fromAmount) {
    GetUserSwapPriceRequest request = GetUserSwapPriceRequest();
    request.fromAmt = fromAmount;
    if (widget.type == EnumExchangeType.buy) {
      if (fromAmount < 10) {
        coinPrice = -1;
        _amountTokenController.text = "";
        return;
      }
      request.fromSymbol = Utils.getContractSymbol(currSelectedCurrency.name)!;
      request.targetSymbol = Utils.getContractSymbol(currSelectedToken.name)!;
    }

    if (widget.type == EnumExchangeType.sell) {
      request.fromSymbol = Utils.getContractSymbol(currSelectedToken.name)!;
      request.targetSymbol =
      Utils.getContractSymbol(currSelectedCurrency.name)!;
      if (request.fromSymbol == TrackedTx_ContractSymbol.ETH) {
        if (fromAmount < 0.01) {
          coinPrice = -1;
          _amountCurrencyController.text = "";
          return;
        }
      } else {
        if (fromAmount < 10) {
          coinPrice = -1;
          _amountCurrencyController.text = "";
          return;
        }
      }
    }
    log("getUserSwapPrice  request\n$request");
    AccountService.getInstance().getUserSwapPrice(context, request).then((
        resp) {
      String targetAmt = "";
      if (resp.code == 1) {
        currPriceInfo = resp.data as GetUserSwapPriceResponse;
        log("getUserSwapPrice  priceInfo\n $currPriceInfo");
        coinPrice = currPriceInfo.settlePrice;
        targetAmt = currPriceInfo.targetAmt.toString();
      }

      if (widget.type == EnumExchangeType.buy) {
        _amountTokenController.text = targetAmt;
      }
      if (widget.type == EnumExchangeType.sell) {
        _amountCurrencyController.text = targetAmt;
      }
      if (mounted) {
        setState(() {});
      }
    });
  }
}
