import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../component/rect_button.dart';

class RecoverWallet extends StatefulWidget {
  const RecoverWallet({super.key});

  @override
  State<RecoverWallet> createState() => _RecoverWalletState();
}

class _RecoverWalletState extends State<RecoverWallet> {

  onGoogleDrive() {
    log('onGoogleDrive');
  }

  onLocalFiles() {
    log('onLocalFiles');
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
                const Padding(
                  padding: EdgeInsets.only(top: 28, bottom: 50),
                  child: Text("Recover Wallet", style: TextStyle(fontSize: 20)),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("asset/images/icon_smile.png")),
                      SizedBox(width: 10),
                      Text("Select the source to recover",
                          style: TextStyle(fontSize: 16,color: Color(0xFF333333))),
                    ],
                  ),
                ),

                RectButton(
                  icon: 'asset/images/icon_google.png', 
                  text: 'Google Drive', 
                  onPressed: onGoogleDrive
                ),

                const SizedBox(height: 30),
                RectButton(
                  icon: 'asset/images/icon_folder.png', 
                  text: 'Local Files', 
                  onPressed: onLocalFiles
                ),
              ]),
            ),

            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Image(image: AssetImage("asset/images/btn_cancel.png"))
            )
          ],
        ),
      )
    );
  }
}
