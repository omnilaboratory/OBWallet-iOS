import 'dart:developer';

import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/enum_kyc_status.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/cards/buy_nft.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/credit_card_form.dart';
import 'package:awallet/component/web_view.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/src/generated/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'kyc.dart';

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
      required this.cardNo,
      required this.date,
      required this.cvc});

  @override
  State<CardRecharge> createState() => _CardRechargeState();
}

class _CardRechargeState extends State<CardRecharge> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvcCode = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double totalBalanceUsd = 0;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      setState(() {
        cardHolderName = widget.amt;
        cardNumber = widget.cardNo;
        expiryDate = widget.date;
        cvcCode = widget.cvc;
      });
    }
    getAccountBalance();
    updateKycState();
    GlobalParams.eventBus.on().listen((event) {
      if (event == "kyc_state") {
        updateKycState();
      }
    });
  }

  updateKycState() {
    if (CommonService.userInfo!.kycStatus == EnumKycStatus.pending.value ||
        CommonService.userInfo!.kycStatus == EnumKycStatus.passed.value) {
      if (cardHolderName.isNotEmpty) {
        getDcPayUrl(double.parse(cardHolderName));
      }
    }
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
                        ? 'Deposit'
                        : 'Withdraw'),
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
                      cardHolderName: cardHolderName,
                      expiryDate: expiryDate,
                      themeColor: Colors.blue,
                      textColor: Colors.black,
                      cardHolderValidator: (String? value) {
                        if (value!.isEmpty || double.parse(value) == 0) {
                          return "Please input a valid amount";
                        }

                        if(widget.type == EnumChargeType.deposit){
                          if(double.parse(value) >= 100){
                            return "Please input a valid amount: Max: 99";
                          }
                        }
                        return null;
                      },
                      cardHolderDecoration: InputDecoration(
                        prefixIcon: const Icon(Icons.attach_money),
                        hintText: 'Amount(Max: \$99)',
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
                        hintText: 'Card Number',
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
                          ? 'DEPOSIT'
                          : 'WITHDRAW',
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
                text: 'CANCEL',
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
                        CommonService.cardInfo.balance),
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            widget.type == EnumChargeType.deposit
                ? 'Account Balance'
                : 'Card Balance',
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
      cardHolderName = creditCardModel.cardHolderName;
      cvcCode = creditCardModel.cvvCode;
    });
  }

  onPay() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      if (widget.type == EnumChargeType.deposit) {
        if (cardNumber.replaceAll(' ', '') == CommonService.cardInfo.cardNo) {
          virtualCardPay();
        } else {
          if (double.parse(cardHolderName) < 100) {
            cardRecharge();
          } else {
            var kycStatus = CommonService.userInfo!.kycStatus;
            if (kycStatus.isNotEmpty) {
              if (kycStatus == "passed") {
                GlobalParams.eventBus.fire("topup");
                // Navigator.pop(context);
                // getDcPayUrl(double.parse(cardHolderName));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BuyNft(rechargeRequest: createCardRechargeRequest())),
                );
              }
            } else {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const Kyc();
                  });
            }
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
    if (double.parse(cardHolderName) > CommonService.cardInfo.balance) {
      showToast(Tips.maxAmount.value, toastLength: Toast.LENGTH_SHORT);
      return;
    } else {
      cardRecharge();
    }
  }

  void cardRecharge() {
    var loading = showLoading(context);
    log(cardHolderName);
    log(cardNumber);
    log(cardNumber.length.toString());
    log(expiryDate);
    log(cvcCode);
    log('valid!');
    CardRechargeRequest request = createCardRechargeRequest();
    CardService.getInstance()
        .cardRecharge(context, request)
        .then((value) async {
      if (value.code == 1) {
        GlobalParams.eventBus.fire("topup");
        Navigator.pop(context, true);
        if (widget.type == EnumChargeType.withdraw) {
          showToast(Tips.successWithdraw.value);
        } else if (widget.type == EnumChargeType.deposit) {
          showToast(Tips.successDeposit.value);
        }
      } else {
        log(value.msg);
        if (widget.type == EnumChargeType.withdraw) {
          showToast(Tips.failWithdraw.value);
        } else if (widget.type == EnumChargeType.deposit) {
          showToast(Tips.failDeposit.value);
        }
      }
      loading.remove();
    });
  }

  CardRechargeRequest createCardRechargeRequest() {
    CardRechargeRequest request = CardRechargeRequest();
    request.amt = double.parse(cardHolderName);
    request.cardNo = cardNumber.replaceAll(' ', '');
    request.cardSecurityCode = cvcCode;
    request.cardExpireMonth = expiryDate.substring(0, expiryDate.indexOf('/'));
    request.cardExpireYear =
        '20${expiryDate.substring(expiryDate.indexOf('/') + 1, expiryDate.length)}';
    return request;
  }

  void getDcPayUrl(double amt) {
    AccountService.getInstance().getDcPayUrl(context, amt).then((value) async {
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
        log("$accountInfo");
        totalBalanceUsd = accountInfo.balanceUsd;
        if (mounted) {
          setState(() {});
        }
      }
    });
  }
}
