import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/logins/apply_card_step_two.dart';
import 'package:flutter/material.dart';

class ApplyCardStepOne extends StatefulWidget {
  const ApplyCardStepOne({super.key});

  @override
  State<ApplyCardStepOne> createState() => _ApplyCardStepOneState();
}

class _ApplyCardStepOneState extends State<ApplyCardStepOne> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: const Row(
            children: [
              Image(
                  width: 24,
                  height: 33,
                  image: AssetImage("asset/images/logo_head.png")),
              SizedBox(width: 6),
              Text(
                'Apply Card',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width * 1,
                            height: 159,
                            decoration: ShapeDecoration(
                              color: const Color(0x23C1C1C1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 15, top: 15),
                                  child: Container(
                                    width: 102,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'asset/images/image_virtual_card_bg.png'),
                                      ),
                                    ),
                                    child: const Text(
                                      'Virtual Card',
                                      style: TextStyle(
                                        color: Color(0xFF666666),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Image(
                            width: 214,
                            height: 108,
                            image: AssetImage("asset/images/img_visa.png")),
                      )
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 25),
                child: Text(
                  'Our new virtual card allows you to：',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 17),
                child: Text(
                  '- Pay conveniently for online transactions\n- Exchange Currencies & Crypto\n- Send & Receive',
                  style: TextStyle(
                    color: Color(0xFF666666),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.82,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                BottomButton(
                  icon: 'asset/images/icon_skip_green.png',
                  text: 'SKIP',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                BottomButton(
                  icon: 'asset/images/icon_arrow_right_green.png',
                  text: 'CONTINUE',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ApplyCardStepTwo()));
                  },
                )
              ]),
              const SizedBox(height: 75)
            ],
          ),
        ));
  }
}
