import 'package:awallet/cards/real_card_step3.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:flutter/material.dart';

class RealCardStep2 extends StatefulWidget {
  const RealCardStep2({super.key});

  @override
  State<RealCardStep2> createState() => _RealCardStep2State();
}

class _RealCardStep2State extends State<RealCardStep2> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _cityCodeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 42,
          titleSpacing: 0,
          title: HeadLogo(title: S.of(context).realCard_Step2_title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildInputField(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomButton(
                    icon: 'asset/images/icon_arrow_left_green.png',
                    text: S.of(context).common_Back.toUpperCase(),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  BottomButton(
                    icon: 'asset/images/icon_arrow_right_green.png',
                    text: S.of(context).common_Next,
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const RealCardStep3()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  late int selectedCardType = 0;

  Widget buildInputField() {
    return Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            const SizedBox(height: 15),
            buildAddressType(),
            const SizedBox(height: 25),
            createTextFormField(
                _phoneController, S.of(context).realCard_Step2_phone,
                icon: const Icon(Icons.person_pin), maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(
                _cityController, S.of(context).realCard_Step2_city,
                icon: const Icon(Icons.person_pin), maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(
                _cityCodeController, S.of(context).realCard_Step2_cityCode,
                icon: const Icon(Icons.person_pin), maxLength: 10),
            const SizedBox(height: 15),
            createTextFormField(
                _addressController, S.of(context).realCard_Step2_address,
                maxLength: 60, maxLines: 3),
            const SizedBox(height: 15),
          ],
        ));
  }


  Widget buildAddressType() {
    return SizedBox(
      height: 50,
      child: Row(
        children: <Widget>[
          Flexible(
            child: RadioListTile<int>(
              value: 0,
              title: const Text('中国大陆'),
              groupValue: selectedCardType,
              onChanged: (value) {
                setState(() {
                  selectedCardType = value!;
                });
              },
            ),
          ),
          Flexible(
            child: RadioListTile<int>(
              value: 1,
              title: const Text('中国香港'),
              groupValue: selectedCardType,
              onChanged: (value) {
                setState(() {
                  selectedCardType = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
