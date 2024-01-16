import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/user_wallet_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pb.dart';
import 'package:awallet/protos/gen-dart/user/user_wallet.pb.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:awallet/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class SendConfirm extends StatefulWidget {
  final String address;
  final String amount;
  final String name;
  final NetWork network;

  const SendConfirm({
    super.key,
    required this.address,
    required this.amount,
    required this.name,
    required this.network,
  });

  @override
  State<SendConfirm> createState() => _SendConfirmState();
}

class _SendConfirmState extends State<SendConfirm> {
  onConfirm() async {
    var loading = showLoading(context);
    TransferTokenRequest request = TransferTokenRequest();
    request.network = widget.network;
    request.token = Utils.getContractSymbol(widget.name)!;
    request.to = widget.address;
    request.amt = double.parse(widget.amount);
    UserWalletService.getInstance()
        .transferToken(context, request)
        .then((resp) {

      Navigator.pop(context);
      removeLoading(loading);
      GlobalParams.eventBus.fire("SendConfirm_Close");
    });
  }

  onBack() {
    Navigator.pop(context);
  }

  onClose() {
    GlobalParams.eventBus.fire("SendConfirm_Close");
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
                child: Column(children: [
                  const SizedBox(height: 30),
                  createDialogTitle(S.of(context).crypto_sendConfirm_title),
                  const SizedBox(height: 30),
                  Container(
                    width: 272,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x7AABAADD),
                              offset: Offset(2.0, 2.0),
                              blurRadius: 10.0)
                        ]),
                    child: Column(
                      children: [
                        const SizedBox(height: 14),
                        Text(S.of(context).crypto_sendConfirm_PaymentDetails,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.amount,
                                style: const TextStyle(
                                  color: Color(0xFF333333),
                                  fontSize: 26,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 3),
                              Padding(
                                  padding: const EdgeInsets.only(top: 6),
                                  child: Text(widget.name,
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )))
                            ]),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.only(left: 0, right: 0),
                          child: Dash(
                              direction: Axis.horizontal,
                              dashLength: 4,
                              length: 240,
                              dashColor: Color(0xFFCFCFCF)),
                        ),
                        Visibility(
                            visible: true,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, right: 10),
                                child: Row(children: [
                                  Text(S.of(context).crypto_sendConfirm_To,
                                      style: const TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  AutoSizeText(
                                      StringTools.starString2(widget.address),
                                      maxLines: 1,
                                      maxFontSize: 12,
                                      minFontSize: 10,
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        Visibility(
                            visible: true,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 15, right: 15),
                                child: Row(children: [
                                  Text(S.of(context).crypto_sendConfirm_From,
                                      style: const TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  AutoSizeText(
                                      StringTools.starString2(
                                          LocalStorage.getEthAddress()),
                                      maxLines: 1,
                                      maxFontSize: 12,
                                      minFontSize: 10,
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        Visibility(
                            visible: false,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 10),
                                child: Row(children: [
                                  Text(S.of(context).crypto_sendConfirm_Memo,
                                      style: const TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  const Text('- -',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        Visibility(
                            visible: false,
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15, top: 10, bottom: 15),
                                child: Row(children: [
                                  Text(S.of(context).crypto_send_MinerFee,
                                      style: const TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  const SizedBox(width: 6),
                                  const Text('\$100.00',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  const SizedBox(width: 6),
                                  const Text('0.0001234 BTC',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        Visibility(
                            visible: false,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 15),
                                child: Row(children: [
                                  Text(S.of(context).crypto_send_Expiration,
                                      style: const TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  const Text('24hours',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        const Visibility(
                            visible: false,
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 15, top: 10, bottom: 25),
                                child: Row(children: [
                                  Text('Memo: ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text('This is a memo',
                                      style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        BottomButton(
                          icon: 'asset/images/icon_arrow_left_green.png',
                          text: S.of(context).common_Back.toUpperCase(),
                          onPressed: onBack,
                        ),
                        BottomButton(
                          icon: 'asset/images/icon_confirm_green.png',
                          text: S.of(context).common_Confirm.toUpperCase(),
                          onPressed: onConfirm,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ]),
              ),
              const SizedBox(height: 30),
              BottomWhiteButton(
                icon: 'asset/images/icon_close_white.png',
                text: S.of(context).common_Cancel.toUpperCase(),
                onPressed: onClose,
              )
            ],
          ),
        ));
  }
}
