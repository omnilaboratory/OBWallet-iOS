import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/credit_card_form.dart';
import 'package:awallet/component/web_view.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';

class CardDeposit extends StatefulWidget {
  String type;
  String title;
  double amt;
  String cardNo;
  String date;
  String cvc;
  int nftAmt;
  List<Int64> tokenIds = [];
  List<Int64> tokenIdValues = [];

  CardDeposit({
    super.key,
    required this.amt,
    this.type = "",
    this.title ="Pay For NFT",
    this.cardNo = "",
    this.date = "",
    this.cvc = "",
    this.nftAmt = 0,
    required this.tokenIds,
    required this.tokenIdValues,
  });

  @override
  State<CardDeposit> createState() => _CardDepositState();
}

class _CardDepositState extends State<CardDeposit> {
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
        cardHolderName = widget.amt.toString();
        cardNumber = widget.cardNo;
        expiryDate = widget.date;
        cvcCode = widget.cvc;
      });
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
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    width: size.width * 0.9,
                    height: size.height * 0.55,
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        createDialogTitle(widget.title),
                        const SizedBox(height: 30),
                        CreditCardForm(
                          formKey: formKey,
                          obscureCvv: false,
                          obscureNumber: false,
                          cardNumber: cardNumber,
                          cvvCode: cvcCode,
                          isHolderNameVisible: true,
                          isCardNumberVisible: true,
                          isExpiryDateVisible: true,
                          enableCvv: true,
                          cardHolderName: cardHolderName,
                          expiryDate: expiryDate,
                          themeColor: Colors.blue,
                          textColor: Colors.black,
                          cardHolderDecoration: buildInputDecoration(
                              S.of(context).recharge_Amount, false, Icons.attach_money),
                          cardNumberDecoration: buildInputDecoration(
                              S.of(context).recharge_CardNumber, true, Icons.credit_card),
                          expiryDateDecoration: buildInputDecoration(
                              "MM/YY", true, Icons.date_range),
                          cvvCodeDecoration: buildInputDecoration(
                              "CVV", true, Icons.credit_score),
                          onCreditCardModelChange: onCreditCardModelChange,
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        BottomButton(
                          icon: 'asset/images/icon_confirm_green.png',
                          text: S.of(context).card_card_Pay.toUpperCase(),
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
            ),
          ),
        ));
  }

  InputDecoration buildInputDecoration(
      String hintText, bool enabled, IconData iconData) {
    return InputDecoration(
      enabled: enabled,
      prefixIcon: Icon(iconData),
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      enabledBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
      errorBorder: outlineInputBorder,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
    );
  }

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
      if (widget.nftAmt > 0) {
        alert(
            "You are costing \$${StringTools.formatCurrencyNum(widget.amt)} and will get ${widget.nftAmt} NFTs.",
            context, () {
          onClickDone();
        }, showCancel: true);
      } else {
        onClickDone();
      }
    }
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

  onClickDone() async {
    await UserService.getInstance().getUserInfo(context);
    var loading = showLoading(context);
    CardRechargeRequest req = createCardRechargeRequest();
    if (widget.nftAmt > 0) {
      req.tokenIds.addAll(widget.tokenIds);
      req.values.addAll(widget.tokenIdValues);
      req.chargeForNft = true;
    }

    CardService.getInstance()
        .cardRecharge(context, req, isShowToast: false)
        .then((resp) {
      if (resp.code == 1) {
        if (widget.nftAmt > 0) {
          GlobalParams.eventBus.fire("buyNftFinish");
          alert(S.of(context).tips_buyNftSuccess, context, () {
            Navigator.pop(context);
          });
        } else {
          if (widget.type == "applyCard") {
            CardService.getInstance()
                .applyCard(context)
                .then((value) => {GlobalParams.eventBus.fire("applyCard")});
          }

          alert(S.of(context).tips_successDeposit, context, () {
            Navigator.pop(context);
            GlobalParams.eventBus.fire("closeKycPage");
          });
        }
      } else {
        alert(resp.msg, context, () {});
      }
      removeLoading(loading);
    });
  }
}
