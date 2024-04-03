import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AccountTransferToCard extends StatefulWidget {
  const AccountTransferToCard({super.key});

  @override
  State<AccountTransferToCard> createState() => _AccountTransferToCardState();
}

class _AccountTransferToCardState extends State<AccountTransferToCard> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _amountController = TextEditingController();

  late String currSelectedCard = "";
  String amount = '0';
  double totalBalanceUsd = 0;

  List<String> cardNoList = [];

  @override
  void initState() {
    getAccountBalance();
    if (CommonService.vCardInfo.cardNo.isNotEmpty) {
      cardNoList.add(CommonService.vCardInfo.cardNo);
      currSelectedCard = cardNoList[0];
    }
    getCardList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    Container(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      width: size.width * 0.8,
                      height: size.height * 0.68,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 28, bottom: 20),
                                child: createDialogTitle(
                                    S.of(context).send_title1),
                              ),
                            ),
                            buildBalance(),
                            const SizedBox(height: 20),
                            Text(
                              S.of(context).recharge_CardNumber,
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              height: 48,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 6),
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: Color(0xFFE6E6E6)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  icon: const Image(
                                      width: 24,
                                      height: 24,
                                      image: AssetImage(
                                          "asset/images/icon_arrow_down_black.png")),
                                  value: currSelectedCard,
                                  isExpanded: true,
                                  items: buildCardList(),
                                  onChanged: (value) {
                                    currSelectedCard = value!;
                                    setState(() {});
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: 40),
                            Text(
                              S.of(context).recharge_Amount,
                              style: const TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 6),
                            createTextFormField(_amountController,
                                S.of(context).recharge_Amount,
                                keyboardType: TextInputType.number,
                                validator: (v) {
                              if (v == null || v.trim().isEmpty) {
                                return S.of(context).tips_emptyAmount;
                              }

                              double currentValue = double.tryParse(v) ?? 0;
                              if (currentValue > totalBalanceUsd) {
                                return S.of(context).tips_maxAmount;
                              }
                              if (currentValue <= 0) {
                                return S.of(context).tips_zeroAmount;
                              }
                              return null;
                            }, onChanged: (value) {
                              double currentValue = double.tryParse(value) ?? 0;
                              if (currentValue > totalBalanceUsd) {
                                _amountController.text =
                                    totalBalanceUsd.toString();
                                setState(() {});
                                currentValue = totalBalanceUsd;
                              }
                              getWithdrawResAmt(currentValue);
                            }),
                            const SizedBox(height: 20),
                            Text(
                              S.of(context).tips_WithdrawResult(
                                  withdrawResAmtResponse.amt,
                                  withdrawResAmtResponse.fee),
                              style: const TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              S.of(context).send_tips,
                              style: const TextStyle(
                                  color: Colors.black54,
                                  fontStyle: FontStyle.italic),
                            ),
                            const Spacer(),
                            BottomButton(
                              icon: 'asset/images/icon_confirm_green.png',
                              text: S.of(context).send_Deposit.toUpperCase(),
                              onPressed: () {
                                if ((_formKey.currentState as FormState)
                                    .validate()) {
                                  withDraw();
                                }
                              },
                            )
                          ]),
                    ),
                    const SizedBox(height: 20),
                    BottomWhiteButton(
                      icon: 'asset/images/icon_close_white.png',
                      text: S.of(context).common_Cancel.toUpperCase(),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
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
                StringTools.formatCurrencyNum(totalBalanceUsd),
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            S.of(context).send_AccountBalance,
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

  void withDraw() {
    if (_amountController.value.text.toString().isEmpty) {
      showToast(S.of(context).tips_emptyAmount);
      return;
    }

    if (double.parse(_amountController.value.text.toString()) == 0) {
      showToast(S.of(context).tips_zeroAmount, toastLength: Toast.LENGTH_SHORT);
      return;
    }

    if (double.parse(_amountController.value.text.toString()) >
        totalBalanceUsd) {
      showToast(S.of(context).tips_maxAmount, toastLength: Toast.LENGTH_SHORT);
      return;
    }

    var loading = showLoading(context);

    CardService.getInstance()
        .cardWithdraw(
            context, currSelectedCard, double.parse(_amountController.text))
        .then((resp) async {
      if (resp.code == 1) {
        showToast(S.of(context).tips_successWithdraw);
        GlobalParams.eventBus.fire("updateCardBalance");
        Navigator.pop(context, true);
      } else {
        showToast(S.of(context).tips_failWithdraw);
      }
      removeLoading(loading);
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

  void getCardList() {
    CardService.getInstance()
        .cardList(context, withoutBalance: true)
        .then((info) {
      if (info.code == 1) {
        cardNoList = [];
        if (CommonService.vCardInfo.cardNo.isNotEmpty) {
          cardNoList.add(CommonService.vCardInfo.cardNo);
        }

        var items = info.data;
        for (int i = 0; i < items.length; i++) {
          var item = items[i] as CardInfo;
          if (item.isVcard == false && item.pcardStatus == 1) {
            cardNoList.add(item.cardNo);
          }
        }
        if (cardNoList.isNotEmpty) {
          currSelectedCard = cardNoList[0];
          if (mounted) {
            setState(() {});
          }
        }
      }
    });
  }

  List<DropdownMenuItem<String>> buildCardList() {
    List<DropdownMenuItem<String>> list = cardNoList.isNotEmpty
        ? cardNoList.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: AutoSizeText(
                value,
                maxLines: 1,
                minFontSize: 12,
                style: const TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            );
          }).toList()
        : [];
    return list;
  }

  late GetWithdrawResAmtResponse withdrawResAmtResponse =
      GetWithdrawResAmtResponse();

  void getWithdrawResAmt(double amount) {
    if (amount == 0) {
      withdrawResAmtResponse = GetWithdrawResAmtResponse();
      if (mounted) {
        setState(() {});
      }
      return;
    }

    CardService.getInstance().getWithdrawResAmt(context, amount).then((info) {
      if (info.code == 1) {
        withdrawResAmtResponse = info.data as GetWithdrawResAmtResponse;
        if (mounted) {
          setState(() {});
        }
      }
    });
  }
}
