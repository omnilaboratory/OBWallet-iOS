import 'dart:async';
import 'dart:developer';

import 'package:awallet/bean/token_info.dart';
import 'package:awallet/cards/review_exchange.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import '../component/number_controller_widget.dart';

class Exchange extends StatefulWidget {
  final String type;

  const Exchange({super.key, required this.type});

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  final TextEditingController _amountFromController = TextEditingController();
  final TextEditingController _amountToController = TextEditingController();

  double totalBalanceUsd = 0;
  double coinPrice = 0;

  var tokenList = EthService.getInstance().getTokenList();
  late TokenInfo dropdownValue;

  List<TokenInfo> tokenLegalList = [];

  List<TokenInfo> getTokenLegalList() {
    if (tokenLegalList.isEmpty) {
      tokenLegalList = [
        TokenInfo(name: "USD", iconUrl: 'asset/images/icon_tether.png')
      ];
    }
    return tokenLegalList;
  }

  late TokenInfo dropdownLegalValue;

  late Timer _timer;
  int _countdownTime = 30;

  void startCountdownTimer() {
    const oneSec = Duration(seconds: 1);
    callback(timer) => {
          setState(() {
            if (_countdownTime <= 0) {
              _countdownTime = 30;
              getCoinPrice(dropdownValue.name);
            } else {
              _countdownTime = _countdownTime - 1;
            }
          })
        };
    _timer = Timer.periodic(oneSec, callback);
  }

  @override
  void initState() {
    super.initState();
    if (widget.type == 'buy') {
    } else if (widget.type == 'send') {}

    getTokenLegalList();
    dropdownLegalValue=tokenLegalList[0];


    dropdownValue = tokenList[0];
    AccountService.getInstance().getAccountInfo().then((value) async {
      if (value.code == 1) {
        var resp = value.data as AccountInfo;
        log(resp.toString());
        getTokenLegalList()[0].balance = resp.balanceUsd;
        setState(() {
          dropdownLegalValue = tokenLegalList[0];
        });
      } else {
        log(value.msg);
      }
    });
    getCoinPrice(dropdownValue.name);
    startCountdownTimer();
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }

  onNext() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return ReviewExchange(
            fromAmt: double.parse(_amountFromController.text),
            toAmt: double.parse(_amountToController.text),
            fromCoin: dropdownValue.name,
            toCoin: dropdownLegalValue.name,
            type: widget.type,
          );
        });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                height: size.height * 0.65,
                child: Column(children: [
                  const SizedBox(height: 25),
                  const Text(
                    'Exchange',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4,
                    ),
                  ),
                  const SizedBox(height: 25),
                  buildTitle(),
                  Expanded(
                    flex: 1000,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      reverse: false,
                      child: Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 25),
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    height: 34,
                                    child: TextField(
                                      controller: _amountFromController,
                                      maxLines: 10,
                                      minLines: 1,
                                      onChanged: (text) {
                                        setState(() {
                                          _amountToController.text =
                                              StringTools.formatCurrencyNum(
                                                  double.parse(
                                                          _amountFromController
                                                              .text) *
                                                      coinPrice);
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                      cursorColor: const Color(0xFF4A92FF),
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 7),
                                        border: _outlineRightInputBorder,
                                        focusedBorder: _outlineRightInputBorder,
                                        enabledBorder: _outlineRightInputBorder,
                                        disabledBorder:
                                            _outlineRightInputBorder,
                                        focusedErrorBorder:
                                            _outlineRightInputBorder,
                                        errorBorder: _outlineRightInputBorder,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 34,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFE6E6E6)),
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
                                        value: dropdownValue,
                                        isExpanded: true,
                                        items: buildCountryDropdownItemList(),
                                        onChanged: (value) {
                                          setState(() {
                                            dropdownValue = value!;
                                            getCoinPrice(dropdownValue.name);
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      children: [
                                        Positioned(
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "Balance: ",
                                                style: TextStyle(
                                                  color: Color(0xFF666666),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.29,
                                                ),
                                              ),
                                              Text(
                                                StringTools.formatCryptoNum(
                                                    dropdownValue.balance),
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
                                              onTap: () {
                                                setState(() {
                                                  _amountFromController.text =
                                                      StringTools
                                                          .formatCryptoNum(
                                                              dropdownValue
                                                                  .balance);
                                                });
                                              },
                                              child: const Text(
                                                "MAX",
                                                style: TextStyle(
                                                  color: Color(0xFF4A92FF),
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
                              )),
                          const SizedBox(height: 25),
                          const Image(
                            width: 22,
                            height: 22,
                            image: AssetImage(
                                "asset/images/icon_arrow_down_gray.png"),
                          ),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                'To',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    height: 34,
                                    child: TextField(
                                      controller: _amountToController,
                                      maxLines: 10,
                                      minLines: 1,
                                      onChanged: (text) {
                                        setState(() {
                                          _amountFromController.text =
                                              StringTools.formatCryptoNum(
                                                  double.parse(
                                                          _amountToController
                                                              .text) /
                                                      coinPrice);
                                        });
                                      },
                                      keyboardType: TextInputType.number,
                                      cursorColor: const Color(0xFF4A92FF),
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 7),
                                        border: _outlineRightInputBorder,
                                        focusedBorder: _outlineRightInputBorder,
                                        enabledBorder: _outlineRightInputBorder,
                                        disabledBorder:
                                            _outlineRightInputBorder,
                                        focusedErrorBorder:
                                            _outlineRightInputBorder,
                                        errorBorder: _outlineRightInputBorder,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 34,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFE6E6E6)),
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
                                        value: dropdownLegalValue,
                                        isExpanded: true,
                                        items:
                                            buildCountryDropdownItemLegalList(),
                                        onChanged: (value) {
                                          setState(() {
                                            dropdownLegalValue = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 5),
                              child: Row(
                                children: [
                                  const Text(
                                    "Balance: ",
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  Text(
                                    StringTools.formatCurrencyNum(
                                        dropdownLegalValue.balance),
                                    style: const TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 5),
                              child: Row(
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
                                    dropdownValue.name,
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
                                    StringTools.formatCurrencyNum(coinPrice),
                                    style: const TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    dropdownLegalValue.name,
                                    style: const TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: CircularProgressIndicator(
                                      color: Color(0xFF666666),
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '$_countdownTime' 's',
                                    style: const TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                                padding: EdgeInsets.only(left: 25, top: 30),
                                child: Text(
                                  'Maximum Slippage(%)',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 7),
                            child: GestureDetector(
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 7),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "Receive at least",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                                const SizedBox(width: 3),
                                Text(
                                  StringTools.formatCurrencyNum(double.parse(
                                          _amountToController.text.isEmpty
                                              ? '0'
                                              : _amountToController.text) *
                                      0.95),
                                  style: const TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                                const SizedBox(width: 3),
                                const Text(
                                  "USD",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  BottomButton(
                    icon: 'asset/images/icon_arrow_right_green.png',
                    text: 'NEXT',
                    onPressed: onNext,
                  ),
                  const SizedBox(height: 30),
                ]),
              ),
              const SizedBox(height: 30),
              BottomWhiteButton(
                icon: 'asset/images/icon_close_white.png',
                text: 'CANCEL',
                onPressed: onClose,
              )
            ],
          ),
        ));
  }

  List<DropdownMenuItem<TokenInfo>> buildCountryDropdownItemList() {
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
            Text(
              value.name,
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

  List<DropdownMenuItem<TokenInfo>> buildCountryDropdownItemLegalList() {
    List<DropdownMenuItem<TokenInfo>> list =
        tokenLegalList.map((TokenInfo value) {
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
            Text(
              value.name,
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

  Widget buildTitle() {
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
        const Text(
          'Step 1',
          style: TextStyle(
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
                fontFamily: 'MS UI Gothic',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 7),
        const Text(
          'Step 2',
          style: TextStyle(
            color: Color(0xD6999999),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );

  final OutlineInputBorder _outlineRightInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
  );

  void getCoinPrice(String name) {
    AccountService.getInstance().getCoinPrice(name).then((value) async {
      if (value.code == 1) {
        var resp = value.data as GetCoinPriceResponse;
        log(resp.price.toString());
        setState(() {
          coinPrice = resp.price;
        });
      } else {
        log(value.msg);
      }
    });
  }
}
