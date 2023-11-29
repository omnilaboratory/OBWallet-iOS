import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/services/eth_service.dart';
import 'package:flutter/material.dart';

class EthereumRecoverWallet extends StatefulWidget {
  const EthereumRecoverWallet({super.key});

  @override
  State<EthereumRecoverWallet> createState() => _EthereumRecoverWalletState();
}

class _EthereumRecoverWalletState extends State<EthereumRecoverWallet> {
  final TextEditingController _wifController = TextEditingController();

  onConfirm(BuildContext context) {
    String wif = _wifController.value.text;
    if (wif.isEmpty) {
      showToast(S.of(context).tips_emptyWif);
      return;
    }
    bool right = EthService.getInstance().recoverWallet(context, wif);
    if (!right) {
      showToast(S.of(context).tips_emptyWif);
      return;
    }
    Navigator.pop(context, true);
  }

  onClose() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                height: 360,
                child: Column(
                  children: [
                    const SizedBox(height: 25),
                    createDialogTitle('Import WIF'),
                    const SizedBox(height: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'WIF',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 4),
                        TextField(
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
                      ],
                    ),
                    const Spacer(
                        // flex: 1,
                        ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BottomButton(
                            icon: 'asset/images/icon_confirm_green.png',
                            text: 'CONFIRM',
                            onPressed: () {
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
      ),
    );
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}
