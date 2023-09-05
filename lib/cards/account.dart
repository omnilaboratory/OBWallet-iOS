import 'dart:async';
import 'dart:developer';
import 'package:awallet/cards/card_recharge.dart';
import 'package:awallet/cards/currency_tx_history.dart';
import 'package:awallet/cards/exchange.dart';
import 'package:awallet/cards/send.dart';
import 'package:awallet/component/account_balance_in_currency.dart';
import 'package:awallet/component/currency_tx_item.dart';
import 'package:awallet/component/square_button.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Account extends StatefulWidget {
  Account({super.key});

  final balances = [
    // BalanceInCurrencyInfo(name: "USD", icon: "\$", balance: 123),
    // BalanceInCurrencyInfo(name: "SGD", icon: "\$", balance: 20),
    // BalanceInCurrencyInfo(name: "CNY", icon: "￥", balance: 20),
  ];

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  final txs = [
    // CurrencyTxInfo(
    //     name: "STARBUCKS FELIZ EN VIS, HO CHI STARBUCKS FELIZ EN VIS, HO CHI",
    //     currencyName: "VND",
    //     amount: 9234567891230.01,
    //     amountOfDollar: 160),
    // CurrencyTxInfo(
    //     name: "STARBUCKS FELIZ EN VIS, HO CHI",
    //     currencyName: "VND",
    //     amount: 20,
    //     amountOfDollar: 160),
  ];

  double totalBalanceUsd = 0;
  Timer? updateBalanceTimer;

  @override
  void initState() {
    updateBalance();
    updateBalanceTimer ??= Timer.periodic(const Duration(seconds: 30), (timer) {
      updateBalance();
    });

    GlobalParams.eventBus.on().listen((event) {
      if (event == "MoreMenu_setNetwork") {

        updateBalance();
      }
    });
    super.initState();
  }

  void updateBalance() {
    var address = LocalStorage.get(LocalStorage.ethAddress);
    if (address != null) {
      UserService.getInstance().updateUser(context, address).then((value) {
        if (value.code == 1) {
          log(value.data.toString());
        } else {
          log(value.msg);
        }
      });
      // EthService.getInstance().updateTokenBalances(context).then((value) {
      //   if (mounted) {
      //     setState(() {});
      //   }
      // });
    }
    AccountService.getInstance().getAccountInfo(context).then((info) {
      if (info.code == 1) {
        var accountInfo = info.data as AccountInfo;
        log("$accountInfo");
        totalBalanceUsd = accountInfo.balanceUsd;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        buildBalance(),
        txs.isNotEmpty?buildBalanceInCurrency(): const SizedBox(height: 0),
        const SizedBox(height: 30),
        buildTxButtons(),
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 25),
          child: Dash(
            dashColor: const Color(0xFFCFCFCF),
            length: MediaQuery.of(context).size.width - 40,
          ),
        ),
        Row(
          children: [
            const Text(
              'Recent Transactions',
              style: TextStyle(
                color: Color(0xFF999999),
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TxHistory()));
              },
              child: const Text(
                'View All',
                style: TextStyle(
                  color: Color(0xFF06D78F),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: txs.length,
              itemBuilder: (BuildContext context, int index) {
                return CurrencyTxItem(txInfo: txs[index]);
              }),
        )
      ],
    );
  }

  Row buildTxButtons() {
    var size = MediaQuery.sizeOf(context);
    var iconWidth = (size.width - 40) / 4;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SquareButton(
            icon: 'asset/images/icon_pay.png',
            iconWidth: iconWidth,
            text: 'Pay',
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Coming Soon...", gravity: ToastGravity.CENTER);
            }),
        SquareButton(
            icon: 'asset/images/icon_top_up.png',
            text: 'Top Up',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const CardRecharge();
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Exchange(type: EnumExchangeType.buy);
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Send',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const Send();
                  });
            }),
      ],
    );
  }

  Widget buildBalanceInCurrency() {
    return Container(
      height: 76,
      margin: const EdgeInsets.only(top: 24),
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 4, bottom: 4),
          scrollDirection: Axis.horizontal,
          itemExtent: 141,
          itemCount: widget.balances.length,
          itemBuilder: (BuildContext context, int index) {
            return BalanceInCurrency(balanceInfo: widget.balances[index]);
          }),
    );
  }

  Widget buildBalance() {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      width: double.infinity,
      height: 100,
      decoration: ShapeDecoration(
        color: const Color(0xFF638AC1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                  text: '\$ ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: StringTools.formatCurrencyNum(totalBalanceUsd),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
