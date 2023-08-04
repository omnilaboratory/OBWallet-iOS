import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RecoverWallet extends StatefulWidget {
  const RecoverWallet({super.key});

  @override
  State<RecoverWallet> createState() => _RecoverWalletState();
}

class _RecoverWalletState extends State<RecoverWallet> {
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
                    child: Text("Recover Wallet",
                        style: TextStyle(fontSize: 20)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            image: AssetImage("asset/images/icon_smile.png")),
                        SizedBox(width: 10),
                        Text("Select the source to recover",
                            style: TextStyle(fontSize: 16,color: Color(0xFF333333))),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(270, 68),
                      backgroundColor:
                          const Color.fromRGBO(193, 193, 193, 0.14),
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Image(
                                image: AssetImage(
                                    "asset/images/icon_google.png"))),
                        const SizedBox(width: 10),
                        const Text('Google Drive',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      maximumSize: const Size(270, 68),
                      backgroundColor: const Color.fromRGBO(99, 138, 193, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                            margin:
                                const EdgeInsets.only(top: 10, bottom: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Image(
                                image: AssetImage(
                                    "asset/images/icon_folder.png"))),
                        const SizedBox(width: 10),
                        const Text('Local Files',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black)),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        if (kDebugMode) {
                          print("btn_confirm");
                        }
                      },
                      child: const Image(
                        image: AssetImage("asset/images/btn_confirm.png"),
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: 40),
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Image(
                      image: AssetImage("asset/images/btn_cancel.png")))
            ],
          ),
        ));
  }
}
