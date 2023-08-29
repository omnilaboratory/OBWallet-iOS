import 'dart:developer';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/eth.dart';
import 'package:awallet/grpc_services/eth_grpc_service.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/tools/string_tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class SendConfirm extends StatefulWidget {
  final String address;
  final String amount;
  final String name;

  const SendConfirm(
      {super.key,
      required this.address,
      required this.amount,
      required this.name});

  @override
  State<SendConfirm> createState() => _SendConfirmState();
}

class _SendConfirmState extends State<SendConfirm> {
  onConfirm() async {
    if (widget.name == 'ETH') {
      Eth.sendEthTo(widget.address, double.parse(widget.amount)).then((value) {
        if (value.isNotEmpty) {
          log('txId: $value');
          EthGrpcService.getInstance().ethTrackTx(value);
          Navigator.pop(context);
        }
      });
    } else if (widget.name == 'USDT') {
      Eth.sendUsdtTo(widget.address, double.parse(widget.amount)).then((value) {
        if (value.isNotEmpty) {
          log('txId: $value');
          EthGrpcService.getInstance().ethTrackTx(value);
          Navigator.pop(context);
        }
      });
    } else if (widget.name == 'USDC') {
      Eth.sendUsdcTo(widget.address, double.parse(widget.amount)).then((value) {
        if (value.isNotEmpty) {
          log('txId: $value');
          EthGrpcService.getInstance().ethTrackTx(value);
          Navigator.pop(context);
        }
      });
    }
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
                child: Column(children: [
                  const SizedBox(height: 30),
                  const Text('Send',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )),
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
                        const Text('Payment Details',
                            textAlign: TextAlign.center,
                            style: TextStyle(
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
                                padding:
                                    const EdgeInsets.only(left: 15, top: 10),
                                child: Row(children: [
                                  const Text('To: ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text(
                                      StringTools.starString(widget.address,
                                          maxLength: 30),
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        Visibility(
                            visible: true,
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 10, bottom: 15),
                                child: Row(children: [
                                  const Text('From: ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text(
                                      StringTools.starString(
                                          LocalStorage.get(
                                              LocalStorage.ethAddress),
                                          maxLength: 30),
                                      style: const TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        const Visibility(
                            visible: false,
                            child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 10),
                                child: Row(children: [
                                  Text('Memo: ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text('- -',
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
                                    left: 15, top: 10, bottom: 15),
                                child: Row(children: [
                                  Text('Miner Fee:',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  SizedBox(width: 6),
                                  Text('\$100.00',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  SizedBox(width: 6),
                                  Text('0.0001234 BTC',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ))
                                ]))),
                        const Visibility(
                            visible: false,
                            child: Padding(
                                padding: EdgeInsets.only(left: 15, top: 15),
                                child: Row(children: [
                                  Text('Expiration: ',
                                      style: TextStyle(
                                        color: Color(0xFF999999),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      )),
                                  Text('24hours',
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
                  BottomButton(
                    icon: 'asset/images/icon_confirm_green.png',
                    text: 'CONFIRM',
                    onPressed: onConfirm,
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
}
