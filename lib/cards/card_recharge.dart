import 'dart:developer';

import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/credit_card_form.dart';
import 'package:awallet/component/web_view.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardRecharge extends StatefulWidget {
  String amt;
  String cardNo;
  String date;
  String cvc;
  EnumChargeType type;

  CardRecharge(
      {super.key,
      required this.amt,
      this.type = EnumChargeType.deposit,
      this.cardNo = '',
      this.date = '',
      this.cvc = ''});

  @override
  State<CardRecharge> createState() => _CardRechargeState();
}

class _CardRechargeState extends State<CardRecharge> {
  String cardNumber = '';
  String expiryDate = '';
  String cardInputAmount = '';
  String cvcCode = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double totalBalanceUsd = 0;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      setState(() {
        cardInputAmount = widget.amt;
        cardNumber = widget.cardNo;
        expiryDate = widget.date;
        cvcCode = widget.cvc;
      });
    }
    getAccountBalance();
    // updateKycState();
    GlobalParams.eventBus.on().listen((event) {
      if (event == "kyc_state") {
      }
    });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    log("card recharge  build");
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.9,
                height: size.height * 0.65,
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    createDialogTitle(widget.type == EnumChargeType.deposit
                        ? S.of(context).recharge_Title1
                        : S.of(context).recharge_Title2),
                    const SizedBox(height: 10),
                    buildBalance(),
                    const SizedBox(height: 10),
                    CreditCardForm(
                      formKey: formKey,
                      obscureCvv: false,
                      obscureNumber: false,
                      cardNumber: cardNumber,
                      cvvCode: cvcCode,
                      isHolderNameVisible: true,
                      isCardNumberVisible:
                          widget.type == EnumChargeType.deposit ? true : false,
                      isExpiryDateVisible:
                          widget.type == EnumChargeType.deposit ? true : false,
                      enableCvv:
                          widget.type == EnumChargeType.deposit ? true : false,
                      cardHolderName: cardInputAmount,
                      expiryDate: expiryDate,
                      themeColor: Colors.blue,
                      textColor: Colors.black,
                      cardHolderValidator: (String? value) {
                        if (value!.isEmpty || double.parse(value) == 0) {
                          return "Please input a valid amount";
                        }

                        // if (widget.type == EnumChargeType.deposit) {
                        //   if (double.parse(value) >= 100) {
                        //     return "Please input a valid amount: Max: 99";
                        //   }
                        // }
                        return null;
                      },
                      cardHolderDecoration: InputDecoration(
                        prefixIcon: const Icon(Icons.attach_money),
                        hintText: S.of(context).recharge_Amount,
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: _outlineInputBorder,
                        focusedBorder: _outlineInputBorder,
                        enabledBorder: _outlineInputBorder,
                        disabledBorder: _outlineInputBorder,
                        focusedErrorBorder: _outlineInputBorder,
                        errorBorder: _outlineInputBorder,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                      ),
                      cardNumberDecoration: InputDecoration(
                        enabled: widget.type == EnumChargeType.deposit
                            ? true
                            : false,
                        prefixIcon: const Icon(Icons.credit_card),
                        hintText: S.of(context).recharge_CardNumber,
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: _outlineInputBorder,
                        focusedBorder: _outlineInputBorder,
                        enabledBorder: _outlineInputBorder,
                        disabledBorder: _outlineInputBorder,
                        focusedErrorBorder: _outlineInputBorder,
                        errorBorder: _outlineInputBorder,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                      ),
                      expiryDateDecoration: InputDecoration(
                        enabled: widget.type == EnumChargeType.deposit
                            ? true
                            : false,
                        prefixIcon: const Icon(Icons.date_range),
                        hintText: 'MM/YY',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: _outlineInputBorder,
                        focusedBorder: _outlineInputBorder,
                        enabledBorder: _outlineInputBorder,
                        disabledBorder: _outlineInputBorder,
                        focusedErrorBorder: _outlineInputBorder,
                        errorBorder: _outlineInputBorder,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                      ),
                      cvvCodeDecoration: InputDecoration(
                        enabled: widget.type == EnumChargeType.deposit
                            ? true
                            : false,
                        prefixIcon: const Icon(Icons.credit_score),
                        hintText: 'CVV',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: _outlineInputBorder,
                        focusedBorder: _outlineInputBorder,
                        enabledBorder: _outlineInputBorder,
                        disabledBorder: _outlineInputBorder,
                        focusedErrorBorder: _outlineInputBorder,
                        errorBorder: _outlineInputBorder,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                      ),
                      onCreditCardModelChange: onCreditCardModelChange,
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    BottomButton(
                      icon: 'asset/images/icon_confirm_green.png',
                      text: widget.type == EnumChargeType.deposit
                          ? S.of(context).common_Deposit.toUpperCase()
                          : S.of(context).common_Withdraw.toUpperCase(),
                      onPressed: () {
                        onPay();
                      },
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
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

  Widget buildBalance() {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '\$',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 25,
                  // fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                widget.type == EnumChargeType.deposit
                    ? StringTools.formatCurrencyNum(totalBalanceUsd)
                    : StringTools.formatCurrencyNum(
                        CommonService.vCardInfo.balance),
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            widget.type == EnumChargeType.deposit
                ? S.of(context).recharge_AccountBalance
                : S.of(context).recharge_CardBalance,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF666666),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );

  void onCreditCardModelChange(CreditCardModel? creditCardModel) {
    setState(() {
      cardNumber = creditCardModel!.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardInputAmount = creditCardModel.cardHolderName;
      cvcCode = creditCardModel.cvvCode;
    });
  }

  onPay() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      if (widget.type == EnumChargeType.deposit) {
        if (cardNumber.replaceAll(' ', '') == CommonService.vCardInfo.cardNo) {
          virtualCardPay();
        } else {
          //TODO debug for all recharge 100
          if (double.parse(cardInputAmount) < 0) {
            cardRecharge();
          } else {
            GlobalParams.eventBus.fire("topup");
            getDcPayUrl(double.parse(cardInputAmount));
          }
        }
      } else {
        virtualCardPay();
      }
    } else {
      log('invalid!');
    }
  }

  void virtualCardPay() {
    if (double.parse(cardInputAmount) > CommonService.vCardInfo.balance) {
      showToast(S.of(context).tips_maxAmount, toastLength: Toast.LENGTH_SHORT);
      return;
    } else {
      cardRecharge();
    }
  }

  void cardRecharge() {
    var loading = showLoading(context);
    CardRechargeRequest request = createCardRechargeRequest();
    CardService.getInstance()
        .cardRecharge(context, request, isShowToast: false)
        .then((value) async {
      if (value.code == 1) {
        GlobalParams.eventBus.fire("topup");
        GlobalParams.eventBus.fire("exchange_showTips");
        Navigator.pop(context, true);
        if (widget.type == EnumChargeType.withdraw) {
          showToast(S.of(context).tips_successWithdraw);
        } else if (widget.type == EnumChargeType.deposit) {
          showToast(S.of(context).tips_successDeposit);
        }
        GlobalParams.eventBus.fire("updateCardBalance");
      } else {
        log(value.msg);
        alert(value.msg, context, () {});
      }
      removeLoading(loading);
    });
  }

  CardRechargeRequest createCardRechargeRequest() {
    CardRechargeRequest request = CardRechargeRequest();
    request.amt = double.parse(cardInputAmount);
    request.cardNo = cardNumber.replaceAll(' ', '');
    request.cardSecurityCode = cvcCode;
    request.cardExpireMonth = expiryDate.substring(0, expiryDate.indexOf('/'));
    request.cardExpireYear =
        '20${expiryDate.substring(expiryDate.indexOf('/') + 1, expiryDate.length)}';
    return request;
  }

  void getDcPayUrl(double amt) {
    AccountService.getInstance().getDcPayUrl(context, amt).then((value) async {
      Navigator.pop(context);
      if (value.code == 1) {
        var resp = value.data as GetDcPayUrlResponse;
        log(resp.urlPath.toString());
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    WebViewPage(url: resp.urlPath.toString())));
      } else {
        log(value.msg);
      }
    });
  }

  void getAccountBalance() {
    AccountService.getInstance().getAccountInfo(context).then((info) {
      if (info.code == 1) {
        var accountInfo = info.data as AccountInfo;
        totalBalanceUsd = accountInfo.balance;
        if (mounted) {
          setState(() {});
        }
      }
    });
  }
}
