import 'package:awallet/cards/exchange.dart';
import 'package:awallet/cards/send.dart';
import 'package:awallet/logins/apply_card_step_one.dart';
import 'package:awallet/bean/enum_exchange_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import '../bean/balance_in_currency_info.dart';
import '../bean/currency_tx_info.dart';
import '../component/account_balance_in_currency.dart';
import '../component/bottom_button.dart';
import '../component/currency_tx_item.dart';
import '../component/square_button.dart';
import '../cryptos/tx_history.dart';
import 'top_up.dart';

class CardPart extends StatefulWidget {
  CardPart({super.key});

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
  State<CardPart> createState() => _CardPartState();
}

class _CardPartState extends State<CardPart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 25),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width,
                                  height: 159,
                                  decoration: ShapeDecoration(
                                    color: const Color(0x23C1C1C1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15, top: 15),
                                        child: Container(
                                          width: 102,
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'asset/images/image_virtual_card_bg.png'),
                                            ),
                                          ),
                                          child: const Text(
                                            'Virtual Card',
                                            style: TextStyle(
                                              color: Color(0xFF666666),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Image(
                                  width: 214,
                                  height: 108,
                                  image:
                                      AssetImage("asset/images/img_visa.png")),
                            ),
                            const Visibility(
                                visible: false,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 15, bottom: 30),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: 6),
                                        Text(
                                          '500,000.00',
                                          style: TextStyle(
                                            color: Color(0xFF333333),
                                            fontSize: 32,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ))),
                          ],
                        )),
                    Visibility(
                        visible: false,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const ApplyCardStepOne()));
                            },
                            child: const Image(
                                width: 24,
                                height: 24,
                                image: AssetImage(
                                    "asset/images/icon_add_round_green.png")),
                          ),
                        ))
                  ],
                )),
            Visibility(
              visible: true,
              child: Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 0, top: 25),
                        child: Text(
                          'Our new virtual card allows you to：',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 0, top: 17),
                        child: Text(
                          '- Pay conveniently for online transactions\n- Exchange Currencies & Crypto\n- Send & Receive',
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.82,
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 1,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BottomButton(
                              icon: 'asset/images/icon_arrow_right_green.png',
                              text: 'APPLY CARD',
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const ApplyCardStepOne()));
                              },
                            )
                          ]),
                      const SizedBox(height: 75)
                    ],
                  )),
            ),
            Visibility(
                visible: false,
                child: Expanded(
                    flex: 1,
                    child: Column(
                      children: [
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TxHistory()));
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
                                return CurrencyTxItem(
                                    txInfo: widget.txs[index]);
                              }),
                        ),
                      ],
                    )))
          ],
        ),
      ),
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
}
