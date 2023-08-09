import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/cryptos/send_confirm.dart';
import 'package:flutter/material.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  onNext() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) {
          return const SendConfirm();
        });
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
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
              child: Column(
                children: [
                  const SizedBox(height: 27),
                  const Row(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Center(
                              child: Text(
                                "Send",
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 24,
                              child: Image(
                                width: 24,
                                height: 24,
                                image: AssetImage(
                                    "asset/images/icon_scan_black.png"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 20),
                      child: buildChainButtons()),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: buildChainTypeButtons()),
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
                              padding: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                'To',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 2),
                              child: SizedBox(
                                height: 36,
                                child: TextField(
                                  maxLines: 10,
                                  minLines: 1,
                                  onChanged: (text) {
                                    setState(() {});
                                  },
                                  keyboardType: TextInputType.visiblePassword,
                                  cursorColor: const Color(0xFF4A92FF),
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(
                                    suffixIcon: const Icon(Icons.person),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 14, vertical: 7),
                                    border: _outlineInputBorder,
                                    focusedBorder: _outlineInputBorder,
                                    enabledBorder: _outlineInputBorder,
                                    disabledBorder: _outlineInputBorder,
                                    focusedErrorBorder: _outlineInputBorder,
                                    errorBorder: _outlineInputBorder,
                                  ),
                                ),
                              )),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                'Asset & Amount',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
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
                                          child: Text(
                                            "Balance: 200.00",
                                            style: TextStyle(
                                              color: Color(0xFF666666),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: Text(
                                            "MAX",
                                            style: TextStyle(
                                              color: Color(0xFF4A92FF),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                'Memo',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 5),
                            child: TextField(
                              maxLines: 10,
                              minLines: 1,
                              onChanged: (text) {
                                setState(() {});
                              },
                              keyboardType: TextInputType.visiblePassword,
                              cursorColor: const Color(0xFF4A92FF),
                              style: const TextStyle(
                                color: Color(0xFF666666),
                                fontSize: 14,
                              ),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 7),
                                isCollapsed: true,
                                border: _outlineInputBorder,
                                focusedBorder: _outlineInputBorder,
                                enabledBorder: _outlineInputBorder,
                                disabledBorder: _outlineInputBorder,
                                focusedErrorBorder: _outlineInputBorder,
                                errorBorder: _outlineInputBorder,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                'Miner Fee',
                                style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                                padding: EdgeInsets.only(left: 25, top: 0),
                                child: Row(
                                  children: [
                                    Text(
                                      'Estimated range',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Image(
                                      width: 14,
                                      height: 14,
                                      image: AssetImage(
                                          "asset/images/icon_refresh_small_black.png"),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Refresh in 5s',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: size.width * 0.8,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 25, top: 0),
                              child: Text(
                                '\$100.00',
                                style: TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                              padding:
                              EdgeInsets.only(left: 25, right: 25, top: 0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Stack(
                                      alignment:
                                      AlignmentDirectional.centerStart,
                                      children: [
                                        Positioned(
                                          child: Text(
                                            "0.0001234 BTC",
                                            style: TextStyle(
                                              color: Color(0xFF666666),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          child: Row(
                                            children: [
                                              Text(
                                                "Standard",
                                                style: TextStyle(
                                                  color: Color(0xFF4A92FF),
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(width: 7),
                                              Image(
                                                width: 6,
                                                height: 12,
                                                image: AssetImage(
                                                    "asset/images/icon_arrow_right_small_balck.png"),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BottomButton(
                          icon: 'asset/images/icon_arrow_right_green.png',
                          text: 'NEXT',
                          onPressed: onNext,
                        ),
                      ],
                    ),
                  ),
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
      ),
    );
  }

  var chainBgClrs = <Color>[Colors.white, Colors.transparent];
  var chainFgClrs = [const Color(0xFF4A92FF), const Color(0xFF000000)];
  var currChainBtnIndex = 0;

  Widget buildChainButtons() {
    return Container(
      height: 40,
      padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: chainFgClrs[currChainBtnIndex == 0 ? 0 : 1],
              backgroundColor: chainBgClrs[currChainBtnIndex == 0 ? 0 : 1],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text("Ethereum", style: TextStyle(fontSize: 14)),
            onPressed: () {
              if (currChainBtnIndex != 0) {
                currChainBtnIndex = 0;
                setState(() {});
              }
            },
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: chainFgClrs[currChainBtnIndex == 1 ? 0 : 1],
              backgroundColor: chainBgClrs[currChainBtnIndex == 1 ? 0 : 1],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Text("Bitcoin", style: TextStyle(fontSize: 14)),
            onPressed: () {
              if (currChainBtnIndex != 1) {
                currChainBtnIndex = 1;
                setState(() {});
              }
            },
          ),
        ),
      ]),
    );
  }

  var chainTypeBgClrs = <Color>[const Color(0xFF4A92FF), Colors.transparent];
  var chainTypeFgClrs = [const Color(0xFFFFFFFF), const Color(0xFF999999)];
  var currChainTypeBtnIndex = 0;

  Widget buildChainTypeButtons() {
    return Container(
      height: 34,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor:
                  chainTypeFgClrs[currChainTypeBtnIndex == 0 ? 0 : 1],
              backgroundColor:
                  chainTypeBgClrs[currChainTypeBtnIndex == 0 ? 0 : 1],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Wallet Address", style: TextStyle(fontSize: 14)),
            onPressed: () {
              if (currChainTypeBtnIndex != 0) {
                currChainTypeBtnIndex = 0;
                setState(() {});
              }
            },
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor:
                  chainTypeFgClrs[currChainTypeBtnIndex == 1 ? 0 : 1],
              backgroundColor:
                  chainTypeBgClrs[currChainTypeBtnIndex == 1 ? 0 : 1],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text("Lightning Invoice",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 14)),
            onPressed: () {
              if (currChainTypeBtnIndex != 1) {
                currChainTypeBtnIndex = 1;
                setState(() {});
              }
            },
          ),
        ),
      ]),
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

  final OutlineInputBorder _outlineLeftInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
  );
}
