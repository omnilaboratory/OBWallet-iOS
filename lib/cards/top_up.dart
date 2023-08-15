import 'dart:developer';

import 'package:awallet/bean/bank_card_info.dart';
import 'package:awallet/component/bank_card_item.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:flutter/material.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  State<TopUp> createState() => _TopUpState();
}

class _TopUpState extends State<TopUp> {
  final cards = [
    BankCardInfo(
        symbol: "VISA",
        name: "Debit Card",
        account: "4561 **** **** 8721",
        amount: 50000),
    BankCardInfo(
        symbol: "VISA",
        name: "Debit Card",
        account: "4561 **** **** 8721",
        amount: 5000),
    BankCardInfo(
        symbol: "VISA",
        name: "Debit Card",
        account: "4561 **** **** 8721",
        amount: 60000),
  ];
  final ScrollController _scrollController = ScrollController();
  var cardIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      int currIndex = cardIndex;
      for (var i = 0; i < cards.length; i++) {
        if (_scrollController.offset > 0 &&
            _scrollController.offset < 200 * i + 125) {
          currIndex = i;
          break;
        }
      }

      if (cardIndex != currIndex) {
        cardIndex = currIndex;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: Center(
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
                  height: size.height * 0.70,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTitle(),
                        buildCards(),
                        const SizedBox(height: 18),
                        buildNewCard(),
                        buildBalance(),
                        const Text(
                          'Input Top Up Amount',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const TextField(
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Amount",
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                            ),
                          ),
                        ),
                        const Spacer(),
                        BottomButton(
                          icon: 'asset/images/icon_top_up_green.png',
                          text: 'Top Up',
                          onPressed: () {
                            log("onTap");
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
        ));
  }

  SizedBox buildBalance() {
    return SizedBox(
      height: 120,
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
              Text(
                cards[cardIndex].amount.toString(),
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
            'Balance',
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

  Row buildNewCard() {
    return Row(
      children: [
        Image(
          image: const AssetImage("asset/images/icon_plus.png"),
          color: Colors.green[400],
          width: 24,
          height: 24,
        ),
        const Text(
          'Bind New Card',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  Widget buildCards() {
    return SizedBox(
      height: 118,
      child: ListView.builder(
          controller: _scrollController,
          itemExtent: 250,
          itemCount: cards.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return BankCardItem(
                cardInfo: cards[index], isSelected: cardIndex == index);
          }),
    );
  }

  Widget buildTitle() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.only(top: 28, bottom: 20),
        child: Text("Top Up", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
