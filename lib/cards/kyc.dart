import 'dart:developer';

import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/home.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:flutter/material.dart';

import '../component/bottom_button.dart';

class Kyc extends StatefulWidget {
  const Kyc({super.key});

  @override
  State<Kyc> createState() => _KycState();
}

class _KycState extends State<Kyc> {
  final TextEditingController _address1Controller = TextEditingController();
  final TextEditingController _address2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 80),
                Container(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  width: size.width * 0.8,
                  height: size.height * 0.65,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 28, bottom: 20),
                            child: Text("KYC", style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                  width: 30,
                                  height: 30,
                                  image: AssetImage(
                                      "asset/images/icon_smile.png")),
                              SizedBox(width: 10),
                              Text("KYC address verification",
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF333333))),
                            ],
                          ),
                        ),
                        const Text(
                          'Address 1',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextField(
                          controller: _address1Controller,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: "Address 1",
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        const Text(
                          'Address 2',
                          style: TextStyle(
                            color: Color(0xFF999999),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextField(
                          controller: _address2Controller,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: "Address 2",
                            contentPadding:
                                EdgeInsets.only(left: 10, top: 10, bottom: 10),
                            border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        // const Text(
                        //   'Address 3',
                        //   style: TextStyle(
                        //     color: Color(0xFF999999),
                        //     fontSize: 14,
                        //     fontWeight: FontWeight.w400,
                        //   ),
                        // ),
                        // const SizedBox(height: 6),
                        // const TextField(
                        //   maxLines: 1,
                        //   keyboardType: TextInputType.number,
                        //   decoration: InputDecoration(
                        //     hintText: "Address 3",
                        //     contentPadding:
                        //         EdgeInsets.only(left: 10, top: 10, bottom: 10),
                        //     border: OutlineInputBorder(
                        //       borderSide:
                        //           BorderSide(color: Colors.black, width: 1.0),
                        //     ),
                        //   ),
                        // ),
                        const Spacer(),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BottomButton(
                                icon: 'asset/images/icon_skip_green.png',
                                text: 'SKIP',
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              BottomButton(
                                icon: 'asset/images/icon_confirm_green.png',
                                text: 'DONE',
                                onPressed: () {
                                  kyc();
                                },
                              )
                            ]),
                      ]),
                ),
                const SizedBox(height: 20),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Image(
                        image: AssetImage("asset/images/btn_cancel.png")))
              ],
            ),
          ),
        ));
  }

  Widget buildBalance() {
    return const SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$',
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "50000",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            'Balance',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF666666),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }

  void kyc() {
    var address1 = _address1Controller.value.text.trim();
    var address2 = _address2Controller.value.text.trim();
    UserService.getInstance().getUserInfo(context).then((userInfoResp) {
      if (userInfoResp.code == 1) {
        var userInfo = userInfoResp.data as GetUserInfoResponse;
        CommonService.userInfo = userInfo.user;
        UserService.getInstance().kyc(context,address1, address2).then((value) async {
          if (value.code == 1) {
            var resp = value.data as UserInfo;
            log(resp.toString());

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const HomePage()));
          } else {
            log(value.msg);
          }
        });
      }
    });
  }
}
