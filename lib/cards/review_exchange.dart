import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/loading_dialog.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/eth_grpc_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'exchange.dart';

class ReviewExchange extends StatefulWidget {
  double fromAmt = 0;
  double toAmt = 0;
  String fromCoin;
  String toCoin;
  EnumExchangeType type;

  ReviewExchange({
    super.key,
    required this.fromAmt,
    required this.toAmt,
    required this.fromCoin,
    required this.toCoin,
    required this.type,
  });

  @override
  State<ReviewExchange> createState() => _ReviewExchangeState();
}

class _ReviewExchangeState extends State<ReviewExchange> {
  double coinPrice = 0;
  bool loadingVisible = false;

  onConfirm() {
    setState(() {
      loadingVisible = true;
    });
    if (widget.type == EnumExchangeType.sell) {
      if (widget.fromCoin == 'ETH') {
        Eth.sendEthTo(
                '0xD271f9d231b8107cB03F69e3a7Ca6234CAf96347', widget.fromAmt)
            .then((value) {
          try {
            if (value.isNotEmpty) {
              log('txId: $value');
              EthGrpcService.getInstance().ethTrackTx(context,value);
              sellCoin(value);
            }
          } catch (e) {
            setState(() {
              loadingVisible = false;
            });
          }
        });
      } else if (widget.fromCoin == 'USDT') {
        Eth.sendUsdtTo(
                '0xD271f9d231b8107cB03F69e3a7Ca6234CAf96347', widget.fromAmt)
            .then((value) {
          try {
            if (value.isNotEmpty) {
              log('txId: $value');
              EthGrpcService.getInstance().ethTrackTx(context,value);
              sellCoin(value);
            }
          } catch (e) {
            setState(() {
              loadingVisible = false;
            });
          }
        });
      } else if (widget.fromCoin == 'USDC') {
        Eth.sendUsdcTo(
                '0xD271f9d231b8107cB03F69e3a7Ca6234CAf96347', widget.fromAmt)
            .then((value) {
          try {
            if (value.isNotEmpty) {
              log('txId: $value');
              EthGrpcService.getInstance().ethTrackTx(context,value);
              sellCoin(value);
            }
          } catch (e) {
            setState(() {
              loadingVisible = false;
            });
          }
        });
      }
    } else if (widget.type == EnumExchangeType.buy) {
      buyCoin();
    }
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    getCoinPrice(widget.fromCoin);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
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
                        'Review Exchange',
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
                      const Padding(
                        padding: EdgeInsets.only(top: 27),
                        child: Text(
                          'You will swap',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 23),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.type == EnumExchangeType.sell
                                  ? widget.fromCoin == 'ETH'
                                      ? StringTools.formatCryptoNum(
                                          widget.fromAmt)
                                      : StringTools.formatCurrencyNum(
                                          widget.fromAmt)
                                  : StringTools.formatCurrencyNum(widget.toAmt),
                              style: const TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                widget.type == EnumExchangeType.sell
                                    ? widget.fromCoin
                                    : widget.toCoin,
                                style: const TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Image(
                        width: 22,
                        height: 22,
                        image:
                            AssetImage("asset/images/icon_arrow_down_gray.png"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.type == EnumExchangeType.sell
                                  ? StringTools.formatCurrencyNum(widget.toAmt)
                                  : widget.fromCoin == 'ETH'
                                      ? StringTools.formatCryptoNum(
                                          widget.fromAmt)
                                      : StringTools.formatCurrencyNum(
                                          widget.fromAmt),
                              style: const TextStyle(
                                color: Color(0xFF333333),
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                widget.type == EnumExchangeType.sell
                                    ? widget.toCoin
                                    : widget.fromCoin,
                                style: const TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                  ? widget.fromCoin
                                  : widget.toCoin,
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
                                  : widget.fromCoin == 'ETH'
                                  ? StringTools.formatCryptoNum(1 / coinPrice)
                                  : StringTools.formatCurrencyNum(1 / coinPrice),
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
                                  ? widget.toCoin
                                  : widget.fromCoin,
                              style: const TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.29,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Slippage',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.29,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              '0.5',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 1.29,
                              ),
                            ),
                            SizedBox(width: 2),
                            Text(
                              '%',
                              textAlign: TextAlign.center,
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
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomButton(
                              icon: 'asset/images/icon_arrow_left_green.png',
                              text: 'BACK',
                              onPressed: () {
                                Navigator.pop(context);
                                // showDialog(
                                //     context: context,
                                //     builder: (context) {
                                //       return Exchange(type: widget.type);
                                //     });
                              },
                            ),
                            BottomButton(
                              icon: 'asset/images/icon_confirm_green.png',
                              text: 'CONFIRM',
                              onPressed: onConfirm,
                            )
                          ]),
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
            )),
        Offstage(
          offstage: !loadingVisible,
          child: const LoadingDialog(),
        )
      ],
    );
  }

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFF06D78F),
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
            color: Color(0xFF06D78F),
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
              dashColor: Color(0xFF06D78F)),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFFEC9A1E),
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
        const Text(
          'Step 2',
          style: TextStyle(
            color: Color(0xFFEC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  void getCoinPrice(name) {
    AccountService.getInstance().getCoinPrice(context,name).then((value) async {
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

  void sellCoin(String value) {
    SellCoinRequest request = SellCoinRequest();
    request.txid = value;
    if (widget.fromCoin == 'ETH') {
      request.coin = TrackedTx_ContractSymbol.ETH;
    } else if (widget.fromCoin == 'USDT') {
      request.coin = TrackedTx_ContractSymbol.USDT;
    } else if (widget.fromCoin == 'USDC') {
      request.coin = TrackedTx_ContractSymbol.USDC;
    }
    request.coinAmt = widget.fromAmt;
    request.usdAmt = widget.toAmt;
    request.rate = coinPrice;
    AccountService.getInstance().sellCoin(context,request).then((value) async {
      if (value.code == 1) {
        setState(() {
          loadingVisible = false;
        });
        var resp = value.data as SellCoinResponse;
        log(resp.toString());
        GlobalParams.eventBus.fire("exchange");
        Navigator.pop(context);
        Fluttertoast.showToast(
            msg: "Please waiting for a while to see the balance on the Card page",
            gravity: ToastGravity.CENTER);
      } else {
        setState(() {
          loadingVisible = false;
        });
        log(value.msg);
      }
    });
  }

  void buyCoin() {
    BuyCoinRequest request = BuyCoinRequest();
    if (widget.fromCoin == 'ETH') {
      request.coin = TrackedTx_ContractSymbol.ETH;
    } else if (widget.fromCoin == 'USDT') {
      request.coin = TrackedTx_ContractSymbol.USDT;
    } else if (widget.fromCoin == 'USDC') {
      request.coin = TrackedTx_ContractSymbol.USDC;
    }
    request.coinAmt = widget.fromAmt;
    request.usdAmt = widget.toAmt;
    request.rate = coinPrice;
    AccountService.getInstance().buyCoin(context,request).then((value) async {
      if (value.code == 1) {
        setState(() {
          loadingVisible = false;
        });
        var resp = value.data as BuyCoinResponse;
        log(resp.toString());
        GlobalParams.eventBus.fire("exchange");
        Navigator.pop(context);
        Fluttertoast.showToast(
            msg: "Please waiting for a while to see the balance on the Crypto page",
            gravity: ToastGravity.CENTER);
      } else {
        setState(() {
          loadingVisible = false;
        });
        log(value.msg);
      }
    });
  }
}
