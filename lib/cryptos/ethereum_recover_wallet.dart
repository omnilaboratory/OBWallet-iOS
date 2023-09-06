import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EthereumRecoverWallet extends StatefulWidget {
  const EthereumRecoverWallet({super.key});

  @override
  State<EthereumRecoverWallet> createState() => _EthereumRecoverWalletState();
}

class _EthereumRecoverWalletState extends State<EthereumRecoverWallet> {

  final TextEditingController _wifController = TextEditingController();
  onConfirm(BuildContext context) {

    String wif = _wifController.value.text;
    if(wif.isEmpty){
      Fluttertoast.showToast(
          msg: "empty wif");
      return;
    }

    bool right = EthService.getInstance().recoverWallet(context,wif);

    if(!right){
      Fluttertoast.showToast(
          msg: "wrong wif");
      return;
    }

    Navigator.pop(context,true);
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
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 60),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              width: size.width * 0.8,
              height: size.height * 0.5,
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Import WIF',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.8,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 25, top: 20),
                      child: Text(
                        'WIF',
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
                    child: TextField(
                      controller: _wifController,
                      maxLines: 10,
                      minLines: 1,
                      cursorColor: const Color(0xFF4A92FF),
                      style: const TextStyle(
                        color: Color(0xFF666666),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
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
                  const Spacer(
                    // flex: 1,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BottomButton(
                          icon: 'asset/images/icon_confirm_green.png',
                          text: 'CONFIRM',
                          onPressed: (){
                            onConfirm(context);
                          },
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
          ]),
        ),
      ),
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}