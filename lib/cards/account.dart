import 'package:awallet/bean/balance_in_currency_info.dart';
import 'package:awallet/bean/currency_tx_info.dart';
import 'package:awallet/cards/currency_tx_history.dart';
import 'package:awallet/cards/top_up.dart';
import 'package:awallet/component/account_balance_in_currency.dart';
import 'package:awallet/component/currency_tx_item.dart';
import 'package:awallet/component/square_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class Account extends StatefulWidget {
  Account({super.key});

  final balances = [
    BalanceInCurrencyInfo(name: "USD", icon: "\$", balance: 123),
    BalanceInCurrencyInfo(name: "SGD", icon: "\$", balance: 20),
    BalanceInCurrencyInfo(name: "CNY", icon: "￥", balance: 20),
  ];
  final txs = [
    CurrencyTxInfo(
        name: "STARBUCKS FELIZ EN VIS, HO CHI STARBUCKS FELIZ EN VIS, HO CHI",
        currencyName: "VND",
        amount: 123456789987654320,
        amountOfDollar: 160),
    CurrencyTxInfo(
        name: "STARBUCKS FELIZ EN VIS, HO CHI",
        currencyName: "VND",
        amount: 20,
        amountOfDollar: 160),
  ];

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        buildBalance(),
        buildBalanceInCurrency(),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const TxHistory()));
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
              itemCount: widget.txs.length,
              itemBuilder: (BuildContext context, int index) {
                return CurrencyTxItem(txInfo: widget.txs[index]);
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
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_top_up.png',
            text: 'Top Up',
            iconWidth: iconWidth,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const TopUp();
                  });
            }),
        SquareButton(
            icon: 'asset/images/icon_exchange.png',
            text: 'Exchange',
            iconWidth: iconWidth,
            onPressed: () {}),
        SquareButton(
            icon: 'asset/images/icon_send.png',
            text: 'Send',
            iconWidth: iconWidth,
            onPressed: () {
              // showDialog(
              //     context: context,
              //     builder: (context) {
              //       return const Send();
              //     });
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
      child: const Align(
          alignment: Alignment.centerLeft,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '\$ ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '33,821.78',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
