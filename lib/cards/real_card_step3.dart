import 'package:awallet/cards/real_card_step1.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

class RealCardStep3 extends StatefulWidget {
  const RealCardStep3({super.key});

  @override
  State<RealCardStep3> createState() => _RealCardStep3State();
}

class _RealCardStep3State extends State<RealCardStep3> {
  final _formKey = GlobalKey<FormState>();
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
          title: HeadLogo(title: S.of(context).realCard_Step3_title),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                      icon: 'asset/images/icon_confirm_green.png',
                      text: S.of(context).common_Done,
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        // if ((_formKey.currentState as FormState).validate() ==
                        //     false) {
                        //   return;
                        // }
                        applyInfo.foreignCity = _cityController.text.trim();
                        applyInfo.foreignPostcode = _cityCodeController.text.trim();
                        applyInfo.foreignAddress = _addressController.text.trim();

                        CardService.getInstance().applyRealCard(context, applyInfo).then((resp) {
                          if(resp.code==1){
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            GlobalParams.eventBus.fire("applyRealCard_Finish");
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField() {
    return Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  S.of(context).realCard_Step3_note,
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 25),
            createTextFormField(
                _cityController, S.of(context).realCard_Step2_city,
                icon: const Icon(Icons.location_city), maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(
                _cityCodeController, S.of(context).realCard_Step2_cityCode,
                icon: const Icon(Icons.local_post_office), maxLength: 10),
            const SizedBox(height: 15),
            createTextFormField(
                _addressController, S.of(context).realCard_Step2_address,
                maxLength: 60, maxLines: 3),
            const SizedBox(height: 15),
          ],
        ));
  }
}
