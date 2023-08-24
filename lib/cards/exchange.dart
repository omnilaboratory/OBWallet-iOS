import 'dart:async';
import 'dart:math';

import 'package:awallet/cards/review_exchange.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

import '../component/number_controller_widget.dart';

class Exchange extends StatefulWidget {
  const Exchange({super.key});

  @override
  State<Exchange> createState() => _ExchangeState();
}

class _ExchangeState extends State<Exchange> {
  late Timer _timer;
  int _countdownTime = 30;

  void startCountdownTimer() {
    const oneSec = Duration(seconds: 1);
    callback(timer) => {
          setState(() {
            if (_countdownTime <= 0) {
              _countdownTime = 30;
            } else {
              _countdownTime = _countdownTime - 1;
            }
          })
        };
    _timer = Timer.periodic(oneSec, callback);
  }

  @override
  void initState() {
    super.initState();
    startCountdownTimer();
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) {
      _timer.cancel();
    }
  }

  onNext() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return const ReviewExchange();
        });
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
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 80),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                height: size.height * 0.65,
                child: Column(children: [
                  const SizedBox(height: 25),
                  const Text(
                    'Exchange',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4,
                    ),
                  ),
                  const SizedBox(height: 25),
                  buildTitle(),
                  Expanded(
                    flex: 1000,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      reverse: false,
                      child: Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 25),
                              child: Text(
                                'From',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    height: 34,
                                    child: TextField(
                                      maxLines: 10,
                                      minLines: 1,
                                      onChanged: (text) {
                                        setState(() {});
                                      },
                                      keyboardType: TextInputType.number,
                                      cursorColor: const Color(0xFF4A92FF),
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 7),
                                        border: _outlineRightInputBorder,
                                        focusedBorder: _outlineRightInputBorder,
                                        enabledBorder: _outlineRightInputBorder,
                                        disabledBorder:
                                            _outlineRightInputBorder,
                                        focusedErrorBorder:
                                            _outlineRightInputBorder,
                                        errorBorder: _outlineRightInputBorder,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 34,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFE6E6E6)),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8)),
                                      ),
                                    ),
                                    child: const Stack(
                                      alignment: AlignmentDirectional.centerEnd,
                                      children: [
                                        Positioned(
                                          left: 5,
                                          child: Image(
                                            width: 20,
                                            height: 20,
                                            image: AssetImage(
                                                "asset/images/icon_tether_logo.png"),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            "USDT",
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 2,
                                          child: Image(
                                            width: 24,
                                            height: 24,
                                            image: AssetImage(
                                                "asset/images/icon_arrow_down_black.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                              padding:
                                  EdgeInsets.only(left: 25, right: 25, top: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      alignment:
                                          AlignmentDirectional.centerStart,
                                      children: [
                                        Positioned(
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Balance: ",
                                                style: TextStyle(
                                                  color: Color(0xFF666666),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.29,
                                                ),
                                              ),
                                              Text(
                                                "200.00",
                                                style: TextStyle(
                                                  color: Color(0xFF666666),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.29,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: Text(
                                            "MAX",
                                            style: TextStyle(
                                              color: Color(0xFF4A92FF),
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              height: 1.29,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          const SizedBox(height: 25),
                          const Image(
                            width: 22,
                            height: 22,
                            image: AssetImage(
                                "asset/images/icon_arrow_down_gray.png"),
                          ),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                'To',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: SizedBox(
                                    height: 34,
                                    child: TextField(
                                      maxLines: 10,
                                      minLines: 1,
                                      onChanged: (text) {
                                        setState(() {});
                                      },
                                      keyboardType: TextInputType.number,
                                      cursorColor: const Color(0xFF4A92FF),
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      decoration: InputDecoration(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 14, vertical: 7),
                                        border: _outlineRightInputBorder,
                                        focusedBorder: _outlineRightInputBorder,
                                        enabledBorder: _outlineRightInputBorder,
                                        disabledBorder:
                                            _outlineRightInputBorder,
                                        focusedErrorBorder:
                                            _outlineRightInputBorder,
                                        errorBorder: _outlineRightInputBorder,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    height: 34,
                                    decoration: const ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            width: 0.50,
                                            color: Color(0xFFE6E6E6)),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8)),
                                      ),
                                    ),
                                    child: const Stack(
                                      alignment: AlignmentDirectional.centerEnd,
                                      children: [
                                        Positioned(
                                          left: 5,
                                          child: Image(
                                            width: 20,
                                            height: 20,
                                            image: AssetImage(
                                                "asset/images/icon_tether_logo.png"),
                                          ),
                                        ),
                                        Center(
                                          child: Text(
                                            "USDT",
                                            style: TextStyle(
                                              color: Color(0xFF333333),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 2,
                                          child: Image(
                                            width: 24,
                                            height: 24,
                                            image: AssetImage(
                                                "asset/images/icon_arrow_down_black.png"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Padding(
                              padding:
                                  EdgeInsets.only(left: 25, right: 25, top: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "Balance: ",
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  Text(
                                    "200.00",
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25, top: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '1',
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    'USD',
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    '=',
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    '1.00126',
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    'USDC',
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  const SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: CircularProgressIndicator(
                                      color: Color(0xFF666666),
                                      strokeWidth: 2,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    '$_countdownTime''s',
                                    style: const TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 1.29,
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                                padding: EdgeInsets.only(left: 25, top: 30),
                                child: Text(
                                  'Maximum Slippage(%)',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 7),
                            child: GestureDetector(
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                              child: NumberControllerWidget(
                                numText: '0',
                                addValueChanged: (number) {
                                  log(number);
                                },
                                removeValueChanged: (number) {
                                  log(number);
                                },
                                updateValueChanged: (number) {},
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 25, right: 25, top: 7),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Receive at least",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "98.12",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "USDC",
                                  style: TextStyle(
                                    color: Color(0xFF666666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    height: 1.29,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  BottomButton(
                    icon: 'asset/images/icon_arrow_right_green.png',
                    text: 'NEXT',
                    onPressed: onNext,
                  ),
                  const SizedBox(height: 30),
                ]),
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

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFFEC9A1E),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 7),
        const Text(
          'Step 1',
          style: TextStyle(
            color: Color(0xD6EC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Dash(
              direction: Axis.horizontal,
              dashLength: 2,
              length: 45,
              dashColor: Color(0xFF999999)),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFF999999),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'MS UI Gothic',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 7),
        const Text(
          'Step 2',
          style: TextStyle(
            color: Color(0xD6999999),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );

  final OutlineInputBorder _outlineRightInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
  );
}
