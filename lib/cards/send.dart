import 'dart:developer';

import 'package:awallet/bean/enum_charge_type.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/loading_dialog.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/src/generated/user/card.pbgrpc.dart';
import 'package:awallet/tools/precision_limit_formatter.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../component/bottom_button.dart';

class Send extends StatefulWidget {
  EnumChargeType type;
  String cardNo;

  Send({super.key, this.type = EnumChargeType.withdraw, required this.cardNo});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  bool loadingVisible = false;
  String amount = '0';
  double totalBalanceUsd = 0;

  @override
  void initState() {
    _cardNumberController.text = widget.cardNo;
    getAccountBalance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
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
                        padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: size.width * 0.8,
                        height: size.height * 0.65,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 28, bottom: 20),
                                  child: createDialogTitle(widget.type == EnumChargeType.withdraw
                                      ? 'Withdraw'
                                      : 'Deposit'),
                                ),
                              ),
                              buildBalance(),
                              const SizedBox(height: 20),
                              const Text(
                                'Card Number',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 6),
                              TextField(
                                enabled: widget.type == EnumChargeType.withdraw ? true : false,
                                controller: _cardNumberController,
                                maxLines: 1,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "Card Number",
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  border: _outlineInputBorder,
                                  focusedBorder: _outlineInputBorder,
                                  enabledBorder: _outlineInputBorder,
                                  disabledBorder: _outlineInputBorder,
                                  focusedErrorBorder: _outlineInputBorder,
                                  errorBorder: _outlineInputBorder,
                                  contentPadding:
                                  const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                ),
                              ),
                              const SizedBox(height: 40),
                              const Text(
                                'Amount',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 6),
                              TextField(
                                controller: _amountController,
                                maxLines: 1,
                                inputFormatters: [PrecisionLimitFormatter(2)],
                                keyboardType: TextInputType.number,
                                // onChanged: (value) {
                                //   setState(() {
                                //     if (_amountController.text.isEmpty) {
                                //       amount = '0';
                                //     } else {
                                //       amount = _amountController.text;
                                //     }
                                //   });
                                // },
                                decoration: InputDecoration(
                                  hintText: 'Amount',
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  border: _outlineInputBorder,
                                  focusedBorder: _outlineInputBorder,
                                  enabledBorder: _outlineInputBorder,
                                  disabledBorder: _outlineInputBorder,
                                  focusedErrorBorder: _outlineInputBorder,
                                  errorBorder: _outlineInputBorder,
                                  contentPadding:
                                  const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 0),
                                ),
                              ),
                              const Spacer(),
                              BottomButton(
                                icon: 'asset/images/icon_confirm_green.png',
                                text: widget.type == EnumChargeType.withdraw
                                    ? 'WITHDRAW'
                                    : 'DEPOSIT',
                                onPressed: () {
                                  withDraw();
                                },
                              )
                            ]),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Image(
                              image: AssetImage("asset/images/btn_cancel.png")))
                    ],
                  ),
                ),
              ),
            )),
        Offstage(
          offstage: !loadingVisible,
          child: const LoadingDialog(),
        )
      ],
    );
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
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                '$totalBalanceUsd',
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Text(
            'Account Balance',
            textAlign: TextAlign.center,
            style: TextStyle(
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

  void withDraw() {
    if (_cardNumberController.value.text.toString().isEmpty) {
      showToast(Tips.emptyCardNumber.value);
      return;
    }

    if (_amountController.value.text.toString().isEmpty) {
      showToast(Tips.emptyAmount.value);
      return;
    }

    if (double.parse(_amountController.value.text.toString()) == 0) {
      showToast(Tips.zeroAmount.value, toastLength: Toast.LENGTH_SHORT);
      return;
    }

    if (double.parse(_amountController.value.text.toString()) > totalBalanceUsd) {
      showToast(Tips.maxAmount.value, toastLength: Toast.LENGTH_SHORT);
      return;
    }

    setState(() {
      loadingVisible = true;
    });
    CardService.getInstance()
        .cardWithdraw(context, _cardNumberController.text,
            double.parse(_amountController.text))
        .then((value) async {
      if (value.code == 1) {
        setState(() {
          loadingVisible = false;
        });
        var resp = value.data as CardWithdrawResponse;
        log(resp.toString());
        Navigator.pop(context);
      } else {
        setState(() {
          loadingVisible = false;
        });
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
        if(mounted){
          setState(() {});
        }
      }
    });
  }
}
