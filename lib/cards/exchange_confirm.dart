import 'dart:developer';

import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ExchangeConfirm extends StatefulWidget {
  double fromAmt = 0;
  double toAmt = 0;
  String fromCoin;
  String toCoin;
  EnumExchangeType type;
  GetUserSwapPriceResponse priceInfo;

  ExchangeConfirm({
    super.key,
    required this.fromAmt,
    required this.toAmt,
    required this.fromCoin,
    required this.toCoin,
    required this.type,
    required this.priceInfo,
  });

  @override
  State<ExchangeConfirm> createState() => _ExchangeConfirmState();
}

class _ExchangeConfirmState extends State<ExchangeConfirm> {
  double fromPrice = 1;
  double toPrice = 1;

  onConfirm() {
    if (widget.type == EnumExchangeType.sell) {
      sellCoin();
    } else if (widget.type == EnumExchangeType.buy) {
      buyToken();
    }
  }

  onClose() {
    GlobalParams.eventBus.fire("exchange");
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();

    if (widget.type == EnumExchangeType.sell) {
      fromPrice = 1;
      toPrice = widget.priceInfo.settlePrice;
    } else if (widget.type == EnumExchangeType.buy) {
      fromPrice = widget.priceInfo.settlePrice;
      toPrice = 1;
    }

    GlobalParams.eventBus.on().listen((event) {
      if (event == "exchange_showTips") {
        if (mounted) {
          alert(S.of(context).tips_waitingBalance, context, onClose);
        }
      }
    });
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
                  createDialogTitle(S.of(context).reviewExchange_title),
                  const SizedBox(height: 25),
                  buildTitle(),
                  Padding(
                    padding: const EdgeInsets.only(top: 27),
                    child: Text(
                      S.of(context).reviewExchange_YouWillSwap,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
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
                                  ? StringTools.formatCryptoNum(widget.fromAmt)
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
                    image: AssetImage("asset/images/icon_arrow_down_gray.png"),
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
                                  ? StringTools.formatCryptoNum(widget.fromAmt)
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
                        Text(
                          fromPrice.toString(),
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
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
                              ? StringTools.formatCurrencyNum(toPrice)
                              : widget.fromCoin == 'ETH'
                                  ? StringTools.formatCryptoNum(toPrice)
                                  : StringTools.formatCurrencyNum(toPrice),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          S.of(context).reviewExchange_Slippage,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            height: 1.29,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          '0.5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          '%',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(S.of(context).reviewExchange_Fee("${widget.priceInfo.feeRate*100}%"),
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                  const SizedBox(height: 6),
                  Text(S.of(context).reviewExchange_cost(widget.priceInfo.gasFee),
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      )),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BottomButton(
                          icon: 'asset/images/icon_arrow_left_green.png',
                          text: S.of(context).common_Back.toUpperCase(),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        BottomButton(
                          icon: 'asset/images/icon_confirm_green.png',
                          text: S.of(context).common_Confirm.toUpperCase(),
                          onPressed: onConfirm,
                        )
                      ]),
                  const SizedBox(height: 30),
                ]),
              ),
              const SizedBox(height: 30),
              BottomWhiteButton(
                icon: 'asset/images/icon_close_white.png',
                text: S.of(context).common_Cancel.toUpperCase(),
                onPressed: onClose,
              )
            ],
          ),
        ));
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
        Text(
          S.of(context).exchange_Step(1),
          style: const TextStyle(
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
        Text(
          S.of(context).exchange_Step(2),
          style: const TextStyle(
            color: Color(0xFFEC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  void sellCoin() {
    var loading = showLoading(context);
    SellCoinRequest request = SellCoinRequest();
    request.coin = Utils.getContractSymbol(widget.fromCoin)!;
    request.coinAmt = widget.fromAmt;
    request.usdAmt = widget.toAmt;
    request.rate = toPrice;
    AccountService.getInstance().sellCoin(context, request).then((value) async {
      if (value.code == 1) {
        var resp = value.data as SellCoinResponse;
        log(resp.toString());
        GlobalParams.eventBus.fire("exchange_showTips");
      } else {
        showToast(value.msg);
      }
      removeLoading(loading);
    });
  }

  void buyToken() {
    var loading = showLoading(context);
    BuyCoinRequest request = BuyCoinRequest();
    request.coin = Utils.getContractSymbol(widget.fromCoin)!;
    request.coinAmt = widget.fromAmt;
    request.usdAmt = widget.toAmt;
    request.rate = toPrice;
    AccountService.getInstance().buyCoin(context, request).then((value) async {
      if (value.code == 1) {
        var resp = value.data as BuyCoinResponse;
        log(resp.toString());
        GlobalParams.eventBus.fire("exchange_showTips");
      } else {
        showToast(value.msg);
      }
      removeLoading(loading);
    });
  }
}
