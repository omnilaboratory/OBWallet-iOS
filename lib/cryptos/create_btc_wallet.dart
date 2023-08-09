import 'package:awallet/bean/global_state.dart';
import 'package:flutter/material.dart';

import 'recover_wallet.dart';

class CryptoCreateBtcWallet extends StatefulWidget {
  const CryptoCreateBtcWallet({super.key});

  @override
  State<CryptoCreateBtcWallet> createState() => _CryptoCreateBtcWalletState();
}

class _CryptoCreateBtcWalletState extends State<CryptoCreateBtcWallet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
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
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const Image(image: AssetImage("asset/images/img_wallet.png")),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: InkWell(
                        onTap: () {
                          GlobalState.isExistBtcAddress = true;
                          Navigator.pop(context);
                        },
                        child: const Image(
                            image:
                                AssetImage("asset/images/btn_new_wallet.png"))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return const RecoverWallet();
                              });
                        },
                        child: const Image(
                            image: AssetImage("asset/images/btn_recover.png"))),
                  ),
                ],
              )),
          const SizedBox(height: 20),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  const Image(image: AssetImage("asset/images/btn_cancel.png")))
        ])));
  }
}
