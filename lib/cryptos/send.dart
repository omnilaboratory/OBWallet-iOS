import 'package:awallet/bean/token_info.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/cryptos/send_confirm.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/protos/gen-dart/user/account.pb.dart';
import 'package:awallet/services/token_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/precision_limit_formatter.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Send extends StatefulWidget {
  String name;
  NetWork network;

  Send({super.key, required this.name, required this.network});

  @override
  State<Send> createState() => _SendState();
}

class _SendState extends State<Send> {
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  List<TokenInfo> tokenList = [];
  late TokenInfo dropdownValue;
  late NetWork selectedNetwork = NetWork.ETH;
  int num = 6;
  late bool canClick;

  @override
  void initState() {
    GlobalParams.eventBus.on().listen((event) {
      if (event == "SendConfirm_Close") {
        setState(() {
          onClose();
        });
      }
    });

    tokenList =
        TokenService.getInstance().getTokenList(network: widget.network);

    dropdownValue = tokenList[0];
    if (dropdownValue.balance == 0) {
      canClick = false;
    } else {
      canClick = true;
    }

    super.initState();
  }

  onNext() {
    if (_addressController.value.text.toString().trim().isEmpty) {
      showToast(S.of(context).tips_emptyAddress);
      return;
    }

    if (!Utils.validateAddress(_addressController.value.text.trim())) {
      showToast(S.of(context).tips_invalidAddress);
      return;
    }

    if (_amountController.value.text.toString().isEmpty) {
      showToast(S.of(context).tips_emptyAmount);
      return;
    }

    if (double.parse(_amountController.value.text.toString()) == 0) {
      showToast(S.of(context).tips_zeroAmount, toastLength: Toast.LENGTH_SHORT);
      return;
    }

    if (double.parse(_amountController.value.text) > dropdownValue.balance!) {
      showToast(S.of(context).tips_maxAmount);
      return;
    }

    FocusScope.of(context).unfocus();
    showDialog(
        context: context,
        builder: (context) {
          return SendConfirm(
            name: dropdownValue.name,
            address: _addressController.value.text.toString(),
            amount: _amountController.value.text.toString(),
            network: selectedNetwork,
          );
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
                  Row(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            Center(
                              child: createDialogTitle(
                                  S.of(context).crypto_send_title),
                            ),
                            const Positioned(
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
                  Center(
                      child: Text(widget.network == NetWork.POLYGON.name
                          ? '(Polygon Asset)'
                          : '')),
                  const SizedBox(height: 20),
                  Expanded(
                    flex: 1000,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      reverse: false,
                      child: Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 25, top: 15),
                              child: Text(
                                S.of(context).nftExchange_To,
                                style: const TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
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
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 20, bottom: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).nftExchange_Chain,
                                  style: const TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Container(
                                  padding: const EdgeInsets.only(right: 10),
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 0.50,
                                          color: Color(0xFFE6E6E6)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<NetWork>(
                                      icon: const Image(
                                          width: 24,
                                          height: 24,
                                          image: AssetImage(
                                              "asset/images/icon_arrow_down_black.png")),
                                      value: selectedNetwork,
                                      isExpanded: true,
                                      items:
                                          buildChainNetworkDropdownItemList(),
                                      onChanged: (value) {
                                        selectedNetwork = value!;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 4,
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
                                  flex: 3,
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
                                        items: buildTokenDropdownItemList(),
                                        onChanged: (value) {
                                          setState(() {
                                            _amountController.text = '';
                                            dropdownValue = value!;
                                            if (dropdownValue.name == 'ETH') {
                                              num = 6;
                                            } else {
                                              num = 2;
                                            }
                                            if (dropdownValue.balance == 0) {
                                              canClick = false;
                                            } else {
                                              canClick = true;
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
                                            Text(
                                              S.of(context).crypto_send_Balance,
                                              style: const TextStyle(
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
                                              onTap: canClick
                                                  ? () {
                                                      setState(() {
                                                        dropdownValue.name ==
                                                                'ETH'
                                                            ? _amountController
                                                                    .text =
                                                                StringTools.formatCryptoNum(
                                                                    dropdownValue
                                                                        .balance)
                                                            : _amountController
                                                                    .text =
                                                                StringTools.formatCurrencyNum(
                                                                    dropdownValue
                                                                        .balance);
                                                        // _amountController.text =
                                                        //     StringTools
                                                        //         .formatCryptoNum(
                                                        //             dropdownValue
                                                        //                 .balance);
                                                      });
                                                    }
                                                  : null,
                                              child: Text(
                                                S.of(context).exchange_Max,
                                                style: TextStyle(
                                                  color: canClick
                                                      ? const Color(0xFF4A92FF)
                                                      : const Color(0xFF999999),
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
                          text: S.of(context).common_Next.toUpperCase(),
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
              text: S.of(context).common_Cancel.toUpperCase(),
              onPressed: onClose,
            )
          ],
        ),
      ),
    );
  }

  List<DropdownMenuItem<NetWork>> buildChainNetworkDropdownItemList() {
    List<DropdownMenuItem<NetWork>> list = [];
    NetWork.values.forEach((element) {
      if (element == NetWork.UnKownNetWork || element == NetWork.ACOUNT) {
        return;
      }
      list.add(DropdownMenuItem<NetWork>(
        value: element,
        child: Row(
          children: [
            const SizedBox(width: 7),
            Text(
              element.name,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ));
    });
    return list;
  }

  List<DropdownMenuItem<TokenInfo>> buildTokenDropdownItemList() {
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
            child: Text(S.of(context).receiveWallet_WalletAddress,
                style: const TextStyle(fontSize: 14)),
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
            child: Text(S.of(context).receiveWallet_LightningInvoice,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14)),
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
}
