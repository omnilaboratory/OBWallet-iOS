import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/crypto_receive_center.dart';
import 'package:flutter/material.dart';

class ReceiveWalletAddress extends StatefulWidget {
  const ReceiveWalletAddress({super.key});

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
        child: Column(children: [
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
                const Text(
                  'Receive',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 20),
                    child: buildChainButtons()),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: buildChainTypeButtons()),
                const SizedBox(height: 30),
                const CryptoReceiveCenter(
                    address: "0x0f6eD175150e0......ad19A6e054CB",
                    tips: "Top up to wallet address"),
              ])),
          const SizedBox(height: 30),
          BottomWhiteButton(
            icon: 'asset/images/icon_close_white.png',
            text: 'CANCEL',
            onPressed: onClose,
          )
        ]),
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
}
