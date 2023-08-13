import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/home.dart';
import 'package:flutter/material.dart';

class ApplyCardStepTwo extends StatefulWidget {
  const ApplyCardStepTwo({super.key});

  @override
  State<ApplyCardStepTwo> createState() => _ApplyCardStepTwoState();
}

class _ApplyCardStepTwoState extends State<ApplyCardStepTwo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
              const Padding(
                padding: EdgeInsets.only(left: 27, right: 27, top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        width: 30,
                        height: 30,
                        image: AssetImage("asset/images/icon_smile.png")),
                    SizedBox(width: 13),
                    Expanded(
                      child: Text(
                        'Please continue to complete KYC advanced verification to get a new card.',
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  width: size.width * 1,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x7AAAA9DD),
                        blurRadius: 10,
                        offset: Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width * 1,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 25, top: 45),
                          child: Text(
                            'Social ID',
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 25, right: 25, top: 5),
                        child: TextField(
                          maxLines: 10,
                          minLines: 1,
                          onChanged: (text) {
                            setState(() {});
                          },
                          keyboardType: TextInputType.visiblePassword,
                          cursorColor: const Color(0xFF4A92FF),
                          style: const TextStyle(
                            color: Color(0xFF666666),
                            fontSize: 14,
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
                      SizedBox(
                        width: size.width * 1,
                        child: const Padding(
                          padding: EdgeInsets.only(left: 25, top: 37),
                          child: Text(
                            'Face Recognition',
                            style: TextStyle(
                              color: Color(0xFF999999),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      const Image(
                        width: 87,
                        height: 87,
                        image: AssetImage(
                            "asset/images/img_face_recognition.png"),
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                BottomButton(
                  icon: 'asset/images/icon_arrow_right_green.png',
                  text: 'APPLY CARD',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                )
              ]),
              const SizedBox(height: 75)
            ],
          ),
        ));
  }

  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: const BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
    borderRadius: BorderRadius.circular(8),
  );
}
