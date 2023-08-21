import 'dart:developer';
import 'dart:io';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/logins/apply_card_step_one.dart';
import 'package:awallet/src/generated/user.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:image_picker/image_picker.dart';

class SignUpStepTwo extends StatefulWidget {
  const SignUpStepTwo({super.key});

  @override
  State<SignUpStepTwo> createState() => _SignUpStepTwoState();
}

class _SignUpStepTwoState extends State<SignUpStepTwo> {
  var countryList = ["澳大利亚", "中国", "美国", "新加坡", "英国"];
  String dropdownValue = "";

  @override
  void initState() {
    dropdownValue = countryList[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 55),
        buildTitle(),
        const SizedBox(height: 55),
        buildContentBody(),
        const SizedBox(height: 200),
        buildButtons(context)
      ])),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        automaticallyImplyLeading: false,
        title: const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image(
              width: 24,
              height: 33,
              image: AssetImage("asset/images/logo_head.png")),
          Text('Sign Up',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ))
        ]));
  }

  Row buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BottomButton(
          icon: 'asset/images/icon_arrow_left_green.png',
          text: 'BACK',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        BottomButton(
          icon: 'asset/images/icon_confirm_green.png',
          text: 'FINISH',
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ApplyCardStepOne()));
          },
        ),
      ],
    );
  }

  Container buildContentBody() {
    return Container(
      width: 320,
      height: 292,
      padding: const EdgeInsets.only(left: 24, right: 24),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Text('Country',
              style: TextStyle(
                color: Color(0xFF999999),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              )),
          const SizedBox(height: 9),
          Container(
            width: 272,
            height: 34,
            padding: const EdgeInsets.all(4),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1.0, color: Color(0xFFE6E6E6)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                isExpanded: true,
                items: buildCountryDropdownItemList(),
                onChanged: (value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Upload ID Photo',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 9),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  getImage(0);
                },
                child: cardImage0 == null
                    ? const Image(
                        image: AssetImage(
                            "asset/images/user_idCard_template1.png"),
                        width: 130,
                        height: 84,
                      )
                    : Image.file(
                        File(cardImage0!.path),
                        width: 130,
                        height: 84,
                        fit: BoxFit.fitHeight,
                      ),
              ),
              GestureDetector(
                onTap: () {
                  getImage(1);
                },
                child: cardImage1 == null
                    ? const Image(
                        image: AssetImage(
                            "asset/images/user_idCard_template2.png"),
                        width: 130,
                        height: 84,
                      )
                    : Image.file(
                        File(cardImage1!.path),
                        width: 130,
                        height: 84,
                        fit: BoxFit.fitHeight,
                      ),
              ),
            ],
          )
        ],
      ),
    );
  }

  final picker = ImagePicker();
  XFile? cardImage0;
  XFile? cardImage1;

  Future getImage(int type) async {
    var image = await picker.pickImage(source: ImageSource.gallery);

    var req = UploadRequest();
    req.name = image!.name;
    req.content = await image.readAsBytes();
    var resp = await UserService.getInstance().uploadImage(req);
    if (resp.code == 1) {
      log(resp.data.toString());
    } else {
      log(resp.msg);
    }

    setState(() {
      if (type == 0) {
        cardImage0 = image;
      } else {
        cardImage1 = image;
      }
    });
  }

  List<DropdownMenuItem<String>> buildCountryDropdownItemList() {
    List<DropdownMenuItem<String>> list = countryList.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      );
    }).toList();
    return list;
  }

  Widget buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFF06D78F),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Step 1',
          style: TextStyle(
            color: Color(0xFF06D78F),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Dash(
              direction: Axis.horizontal,
              dashLength: 4,
              length: 45,
              dashColor: Color(0xFF06D78F)),
        ),
        Container(
          width: 24,
          height: 24,
          decoration: const ShapeDecoration(
            color: Color(0xFFEC9A1E),
            shape: OvalBorder(),
          ),
          child: const Center(
            child: Text(
              '2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        const Text(
          'Step 2',
          style: TextStyle(
            color: Color(0xFFEC9A1E),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
