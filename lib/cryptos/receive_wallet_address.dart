import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ReceiveWalletAddress extends StatefulWidget {
  NetWork network;

  ReceiveWalletAddress({super.key, required this.network});

  @override
  State<ReceiveWalletAddress> createState() => _ReceiveWalletAddressState();
}

class _ReceiveWalletAddressState extends State<ReceiveWalletAddress> {
  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
                padding: const EdgeInsets.only(top: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                height: 400,
                child: Column(children: [
                  createDialogTitle(S.of(context).ethereumPage_Receive),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 12),
                        const Text("Ether: ",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                        const SizedBox(height: 6),
                        Text(CommonService.userInfo!.walletAddress,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                        const SizedBox(height: 40),
                        const Text("Tron: ",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400)),
                        const SizedBox(height: 6),
                        Text(CommonService.userInfo!.tronAddress,
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BottomButton(
                            icon: 'asset/images/icon_copy_green.png',
                            text: 'Ether',
                            onPressed: () {
                              showToast(S.of(context).tips_addressIsOnClipboard);
                              Clipboard.setData(ClipboardData(text: CommonService.userInfo!.walletAddress));
                            },
                          ),
                          BottomButton(
                            icon: 'asset/images/icon_copy_green.png',
                            text: 'Tron',
                            onPressed: () {
                              showToast(S.of(context).tips_addressIsOnClipboard);
                              Clipboard.setData(ClipboardData(text: CommonService.userInfo!.tronAddress));
                            },
                          )
                        ]),
                  ),
                ])),
            const SizedBox(height: 30),
            BottomWhiteButton(
              icon: 'asset/images/icon_close_white.png',
              text: S.of(context).common_Cancel.toUpperCase(),
              onPressed: onClose,
            )
          ]),
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
}
