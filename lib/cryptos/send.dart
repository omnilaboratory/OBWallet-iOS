import 'package:awallet/bean/token_info.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/cryptos/send_confirm.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/precision_limit_formatter.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Send extends StatefulWidget {
  const Send({super.key});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  var tokenList = EthService.getInstance().getTokenList();
  late TokenInfo dropdownValue;
  int num = 6;

  @override
  void initState() {
    dropdownValue = tokenList[0];
    GlobalParams.eventBus.on().listen((event) {
      if (event == "SendConfirm_Close") {
        onClose();
      }
    });
    super.initState();
  }

  onNext() {
    if (_addressController.value.text.toString().trim().isEmpty) {
      showToast("The address cannot be empty");
      return;
    }

    if (!Eth.validateAddress(_addressController.value.text.trim())) {
      showToast("invalid address");
      return;
    }

    if (_amountController.value.text.toString().isEmpty) {
      showToast("The amount cannot be empty");
      return;
    }

    if (double.parse(_amountController.value.text.toString()) == 0) {
      showToast("The amount must be greater than 0",toastLength:Toast.LENGTH_SHORT);
      return;
    }

    if (double.parse(_amountController.value.text) > dropdownValue.balance!) {
      showToast("The amount cannot exceed the maximum");
      return;
    }

    showDialog(
        context: context,
        builder: (context) {
          return SendConfirm(
              name: dropdownValue.name,
              address: _addressController.value.text.toString(),
              amount: _amountController.value.text.toString());
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
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
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
                  Visibility(
                    visible: false,
                    child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 15),
                        child: buildChainTypeButtons()),
                  ),
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
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 25, right: 25),
                          //   child: createTextFormField(_addressController,"address",false,icon: const Icon(Icons.person)),
                          // ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 2),
                              child: SizedBox(
                                height: 68,
                                child: TextField(
                                  controller: _addressController,
                                  maxLines: 1,
                                  maxLength: 42,
                                  keyboardType: TextInputType.visiblePassword,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[a-zA-Z0-9]')),
                                  ],
                                  cursorColor: const Color(0xFF4A92FF),
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  decoration: InputDecoration(
                                    // suffixIcon: const Icon(Icons.person),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 0),
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
                                      controller: _amountController,
                                      maxLines: 10,
                                      minLines: 1,
                                      inputFormatters: [
                                        PrecisionLimitFormatter(num)
                                      ],
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              decimal: true),
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
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<TokenInfo>(
                                        icon: const Image(
                                            width: 24,
                                            height: 24,
                                            image: AssetImage(
                                                "asset/images/icon_arrow_down_black.png")),
                                        value: dropdownValue,
                                        isExpanded: true,
                                        items: buildCountryDropdownItemList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _amountController.text = '';
                                            dropdownValue = value!;
                                            if (dropdownValue.name == 'ETH') {
                                              num = 6;
                                            } else {
                                              num = 2;
                                            }
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  left: 25, right: 25, top: 5),
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
                                            const Text(
                                              "Balance: ",
                                              style: TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.29,
                                              ),
                                            ),
                                            Text(
                                              dropdownValue.name == 'ETH'
                                                  ? StringTools.formatCryptoNum(
                                                      dropdownValue.balance)
                                                  : StringTools
                                                      .formatCurrencyNum(
                                                          dropdownValue
                                                              .balance),
                                              style: const TextStyle(
                                                color: Color(0xFF666666),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                height: 1.29,
                                              ),
                                            ),
                                          ],
                                        )),
                                        Positioned(
                                            right: 0,
                                            child: GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _amountController.text =
                                                      StringTools
                                                          .formatCryptoNum(
                                                              dropdownValue
                                                                  .balance);
                                                });
                                              },
                                              child: const Text(
                                                "MAX",
                                                style: TextStyle(
                                                  color: Color(0xFF4A92FF),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.29,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Visibility(
                            visible: false,
                            child: SizedBox(
                              width: size.width * 0.8,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 25, top: 15),
                                child: Text(
                                  'Memo',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: false,
                            child: Padding(
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
                          ),
                          Visibility(
                            visible: false,
                            child: SizedBox(
                              width: size.width * 0.8,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 25, top: 15),
                                child: Text(
                                  'Miner Fee',
                                  style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: false,
                            child: SizedBox(
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
                                          fontWeight: FontWeight.w400,
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
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                          Visibility(
                            visible: false,
                            child: SizedBox(
                              width: size.width * 0.8,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 25, top: 0),
                                child: Text(
                                  '\$100.00',
                                  style: TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Visibility(
                            visible: false,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 25, right: 25, top: 0),
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
                                                fontWeight: FontWeight.w400,
                                                height: 1.29,
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
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.29,
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
                          ),
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

  List<DropdownMenuItem<TokenInfo>> buildCountryDropdownItemList() {
    List<DropdownMenuItem<TokenInfo>> list = tokenList.map((TokenInfo value) {
      return DropdownMenuItem<TokenInfo>(
        value: value,
        child: Row(
          children: [
            const SizedBox(width: 7),
            Image(
              width: 20,
              height: 20,
              image: AssetImage(value.iconUrl),
            ),
            const SizedBox(width: 7),
            Text(
              value.name,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }).toList();
    return list;
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
