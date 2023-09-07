import 'dart:developer';

import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/credit_card_form.dart';
import 'package:awallet/component/loading_dialog.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/src/generated/user/card.pbgrpc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_model.dart';

class CardRecharge extends StatefulWidget {
  const CardRecharge({super.key});

  @override
  State<CardRecharge> createState() => _CardRechargeState();
}

class _CardRechargeState extends State<CardRecharge> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvcCode = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool loadingVisible = false;

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
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
                        createDialogTitle('Card Recharge'),
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
                          cardHolderName: cardHolderName,
                          expiryDate: expiryDate,
                          themeColor: Colors.blue,
                          textColor: Colors.black,
                          cardHolderDecoration: InputDecoration(
                            prefixIcon: const Icon(Icons.account_balance_wallet),
                            hintText: 'Amount',
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
                            prefixIcon: const Icon(Icons.date_range),
                            hintText: 'Expired Date',
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
                            prefixIcon: const Icon(Icons.credit_score),
                            hintText: 'CVC',
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
                        Container(
                          width: size.width * 0.9,
                          height: 40,
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: const Color(0xFF000000),
                              backgroundColor: const Color(0xFF4A92FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: onPay,
                            child: const Text("Pay Now",
                                style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                )),
                          ),
                        ),
                        const SizedBox(height: 50),
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
            )),
        Offstage(
          offstage: !loadingVisible,
          child: const LoadingDialog(),
        )
      ],
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
    if (formKey.currentState!.validate()) {
      setState(() {
        loadingVisible = true;
      });
      log(cardHolderName);
      log(cardNumber);
      log(cardNumber.length.toString());
      log(expiryDate);
      log(cvcCode);
      log('valid!');
      CardRechargeRequest request = CardRechargeRequest();
      request.amt = double.parse(cardHolderName);
      request.cardNo = cardNumber.replaceAll(' ', '');
      request.cardSecurityCode = cvcCode;
      request.cardExpireMonth =
          expiryDate.substring(0, expiryDate.indexOf('/'));
      request.cardExpireYear =
          '20${expiryDate.substring(expiryDate.indexOf('/') + 1, expiryDate.length)}';
      CardService.getInstance()
          .cardRecharge(context, request)
          .then((value) async {
        if (value.code == 1) {
          setState(() {
            loadingVisible = false;
          });
          var resp = value.data as CardRechargeResponse;
          log(resp.toString());
          Navigator.pop(context);
        } else {
          setState(() {
            loadingVisible = false;
          });
          log(value.msg);
        }
      });
    } else {
      log('invalid!');
    }
  }

  void getDcPayUrl(double amt, String name) {
    AccountService.getInstance()
        .getDcPayUrl(context, amt, name)
        .then((value) async {
      if (value.code == 1) {
        var resp = value.data as GetDcPayUrlResponse;
        log(resp.urlPath.toString());
      } else {
        log(value.msg);
      }
    });
  }
}