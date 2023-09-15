import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/tips.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/utils.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../component/bottom_button.dart';

class Kyc extends StatefulWidget {
  const Kyc({super.key});

  @override
  State<Kyc> createState() => _KycState();
}

class _KycState extends State<Kyc> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _address1Controller = TextEditingController();
  final TextEditingController _address2Controller = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalController = TextEditingController();
  Country? selectedCountry = CountryService().findByCode("SG");
  Country? selectedPhoneCountry = CountryService().findByCode("SG");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: size.width * 0.8,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 28, bottom: 20),
                          child: createDialogTitle('KYC'),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: createTextFormField(
                                        _firstNameController,
                                        "First Name",
                                        false,maxLength: 20)),
                                const SizedBox(width: 20),
                                Expanded(
                                    child: createTextFormField(
                                        _lastNameController,
                                        "Last Name",
                                        false,maxLength: 20)),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                InkWell(
                                    onTap: () {
                                      showCountryPicker(
                                        context: context,
                                        showPhoneCode: true,
                                        useSafeArea: true,
                                        onSelect: (Country country) {
                                          selectedPhoneCountry = country;
                                          setState(() {});
                                        },
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(left: 6,right: 6),
                                      width: 92,
                                      height: 48,
                                      decoration: ShapeDecoration(
                                        shape: outlineInputBorder,
                                      ),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SizedBox(
                                              width: 52,
                                                child: Text("+${selectedPhoneCountry!.phoneCode}")),
                                            const SizedBox(width:20,child: Icon(Icons.keyboard_arrow_down_sharp))
                                          ],
                                        ),
                                      ),
                                    )),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: createTextFormField(
                                      _mobileNumberController,
                                      "Mobile Number",
                                      false,keyboardType: TextInputType.phone),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            createTextFormField(_dateOfBirthController,
                                "Date of birth (DD-MM-YYYY)", false,maxLength: 10,
                                icon: const Icon(Icons.date_range)),
                            const SizedBox(height: 16),
                            createTextFormField(
                                _address1Controller, "Address Line", false),
                            const SizedBox(height: 16),
                            createTextFormField(_address2Controller,
                                "Address Line 2(Optional)", false,
                                needCheck: false),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Expanded(
                                    child: createTextFormField(_stateController,
                                        "State/Region", false)),
                                const SizedBox(width: 20),
                                Expanded(
                                    child: createTextFormField(
                                        _cityController, "City", false)),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    child: createTextFormField(
                                        _postalController,
                                        "Postal/Zip Code",
                                        false,maxLength: 6)),
                                const SizedBox(width: 20),
                                InkWell(
                                    onTap: () {
                                      showCountryPicker(
                                        context: context,
                                        showPhoneCode: false,
                                        useSafeArea: true,
                                        onSelect: (Country country) {
                                          selectedCountry = country;
                                          setState(() {});
                                        },
                                      );
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 6),
                                      width: 135,
                                      height: 48,
                                      decoration: ShapeDecoration(
                                        shape: outlineInputBorder,
                                      ),
                                      child: Center(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 100,
                                              child: AutoSizeText(
                                                selectedCountry!.name,
                                                maxLines: 2,
                                                minFontSize: 10,
                                                maxFontSize: 16,
                                              ),
                                            ),
                                            const Icon(Icons.keyboard_arrow_down_sharp)
                                          ],
                                        ),
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomButton(
                              icon: 'asset/images/x.png',
                              text: 'CANCEL',
                              imageClr: Colors.grey,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            BottomButton(
                              icon: 'asset/images/icon_confirm_green.png',
                              text: 'DONE',
                              onPressed: () {
                                if ((_formKey.currentState as FormState)
                                    .validate()) {
                                  kyc();
                                }
                              },
                            )
                          ]),
                    ]),
              ),
            ),
          )),
    );
  }

  void kyc() {
    if (selectedCountry == null) {
      showToast(Tips.selectCountry.value);
      return;
    }
    UserService.getInstance().getUserInfo(context).then((userInfoResp) {
      if (userInfoResp.code == 1) {
        var userInfo = userInfoResp.data as GetUserInfoResponse;
        CommonService.userInfo = userInfo.user;
        UserInfo info = userInfo.user;
        info.firstName = _firstNameController.value.text.trim();
        info.lastName = _lastNameController.value.text.trim();
        info.mobile = selectedPhoneCountry!.phoneCode +
            _mobileNumberController.value.text.trim();
        info.dob = _dateOfBirthController.value.text.trim();
        info.address1 = _address1Controller.value.text.trim();
        info.address2 = _address2Controller.value.text.trim();
        info.state = _stateController.value.text.trim();
        info.city = _cityController.value.text.trim();
        info.postCode = _postalController.value.text.trim();
        info.countryCode =
            Utils.getCountryCodeByCode(selectedCountry!.countryCode);
        UserService.getInstance().kyc(context, info).then((value) async {
          if (value.code == 1) {
            var resp = value.data as UserInfo;
            CommonService.userInfo = resp;
            GlobalParams.eventBus.fire("kyc_state");
            Navigator.pop(context);
          } else {
            log(value.msg);
          }
        });
      }
    });
  }
}
