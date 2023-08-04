import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';

import 'cryptos/recover_wallet.dart';

class CryptoPage extends StatefulWidget {
  const CryptoPage({super.key});

  @override
  State<CryptoPage> createState() => _CryptoPageState();
}

class _CryptoPageState extends State<CryptoPage> {

  late Timer _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 164),
            const Image(image: AssetImage("asset/images/img_wallet.png")),
            Padding(
              padding: const EdgeInsets.only(top: 80,bottom: 20),
              child: InkWell(
                onTap: (){
                  log("onTap btn_new_wallet");
                },
                child: const Image(image: AssetImage("asset/images/btn_new_wallet.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 20),
              child: InkWell(
                onTap: (){
                  log("onTap btn_recover");
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const RecoverWallet();
                      }
                  );

                },
                child: const Image(image: AssetImage("asset/images/btn_recover.png"))),
            ),
          ]
        )
      )
    );
  }
}
