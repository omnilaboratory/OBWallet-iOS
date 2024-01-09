import 'dart:developer';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/enum_kyc_status.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/utils.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../component/bottom_button.dart';
import 'card_deposit.dart';

showKycTips(BuildContext context) {
  if (CommonService.userInfo!.kycStatus == EnumKycStatus.passed.value) {
    alert(S.of(context).tips_kycPassed, context, () {});
    return;
  }
  if (CommonService.userInfo!.kycStatus == EnumKycStatus.pending.value) {
    alert(S.of(context).tips_kycPending, context, () {});
    return;
  }
  if (CommonService.userInfo!.kycStatus == '') {
    showDialog(
        context: context,
        builder: (context) {
          return Kyc();
        });
    return;
  }
  if (CommonService.userInfo!.kycStatus == EnumKycStatus.rejected.value) {
    alert(S.of(context).tips_kycRejected, context, () {
      showDialog(
          context: context,
          builder: (context) {
            return Kyc();
          });
    });
    return;
  }
}

class Kyc extends StatefulWidget {
  String type;

  Kyc({super.key, this.type = ""});

  @override
  State<Kyc> createState() => _KycState();
}

class _KycState extends State<Kyc> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  final TextEditingController _socialIdController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _address1Controller = TextEditingController();
  final TextEditingController _address2Controller = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalController = TextEditingController();
  Country? selectedCountry = CountryService().findByCode("SG");
  Country? selectedPhoneCountry = CountryService().findByCode("SG");

  final List<DateTime?> _dates = [];
  var dateOfBirthTips = "";

  @override
  void initState() {
    super.initState();
    GlobalParams.eventBus.on().listen((event) {
      if (event == "closeKycPage") {
        if (mounted) {
          Navigator.pop(context);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if(dateOfBirthTips.isEmpty){
      dateOfBirthTips = S.of(context).kyc_dateOfBirth;
    }
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
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
                              padding:
                                  const EdgeInsets.only(top: 28, bottom: 10),
                              child: createDialogTitle(S.of(context).kyc_title),
                            ),
                          ),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Image(
                                          width: 30,
                                          height: 30,
                                          image: AssetImage(
                                              "asset/images/icon_smile.png")),
                                      const SizedBox(width: 8),
                                      SizedBox(
                                        child: Text(
                                          S.of(context).kyc_tips1,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            color: Color(0xFF999999),
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            height: 1.47,
                                          ),
                                        ),
                                      ),
                                    ]),
                                const SizedBox(height: 16),
                                createTextFormField(
                                    _socialIdController, S.of(context).kyc_IdentityId,
                                    maxLength: 30,
                                    icon: const Icon(Icons.credit_card)),
                                Row(
                                  children: [
                                    Expanded(
                                        child: createTextFormField(
                                            _firstNameController, S.of(context).kyc_FirstName,
                                            maxLength: 20)),
                                    const SizedBox(width: 20),
                                    Expanded(
                                        child: createTextFormField(
                                            _lastNameController, S.of(context).kyc_LastName,
                                            maxLength: 20)),
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
                                          padding: const EdgeInsets.only(
                                              left: 6, right: 6),
                                          width: 92,
                                          height: 48,
                                          decoration: ShapeDecoration(
                                            shape: outlineInputBorder,
                                          ),
                                          child: Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                SizedBox(
                                                    width: 52,
                                                    child: Text(
                                                        "+${selectedPhoneCountry!.phoneCode}")),
                                                const SizedBox(
                                                    width: 20,
                                                    child: Icon(Icons
                                                        .keyboard_arrow_down_sharp))
                                              ],
                                            ),
                                          ),
                                        )),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: createTextFormField(
                                          _mobileNumberController,
                                          S.of(context).kyc_MobileNumber,
                                          keyboardType: TextInputType.phone),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  height: 48,
                                  padding: const EdgeInsets.only(left: 6),
                                  decoration: ShapeDecoration(
                                    shape: outlineInputBorder,
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.date_range),
                                      const SizedBox(width: 10),
                                      GestureDetector(
                                          onTap: () async {
                                            var results =
                                                await showCalendarDatePicker2Dialog(
                                              context: context,
                                              config:
                                                  CalendarDatePicker2WithActionButtonsConfig(),
                                              dialogSize: const Size(325, 400),
                                              value: _dates,
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            );
                                            if (results != null &&
                                                results.isNotEmpty) {
                                              dateOfBirthTips =
                                                  DateFormat("yyyy-MM-dd")
                                                      .format(results[0]!);
                                              setState(() {});
                                            }
                                          },
                                          child: Text(dateOfBirthTips)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16),
                                createTextFormField(
                                    _address1Controller, S.of(context).kyc_AddressLine),
                                const SizedBox(height: 16),
                                createTextFormField(_address2Controller,
                                    S.of(context).kyc_AddressLine2,
                                    needCheck: false),
                                const SizedBox(height: 16),
                                Row(
                                  children: [
                                    Expanded(
                                        child: createTextFormField(
                                            _stateController, S.of(context).kyc_StateRegion)),
                                    const SizedBox(width: 20),
                                    Expanded(
                                        child: createTextFormField(
                                            _cityController, S.of(context).kyc_City)),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: createTextFormField(
                                            _postalController,
                                            S.of(context).kyc_PostalZipCode,
                                            maxLength: 6,
                                            keyboardType:
                                                TextInputType.number)),
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
                                          padding:
                                              const EdgeInsets.only(left: 6),
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
                                                const Icon(Icons
                                                    .keyboard_arrow_down_sharp)
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
                          BottomButton(
                            icon: 'asset/images/icon_confirm_green.png',
                            text: S.of(context).common_Done.toUpperCase(),
                            onPressed: () {
                              if ((_formKey.currentState as FormState)
                                  .validate()) {
                                onKyc();
                              }
                            },
                          ),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BottomWhiteButton(
                    icon: 'asset/images/icon_close_white.png',
                    text: S.of(context).common_Cancel.toUpperCase(),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }

  void onKyc() {
    if (selectedCountry == null) {
      showToast(S.of(context).tips_selectCountry);
      return;
    }

    if (dateOfBirthTips == S.of(context).kyc_dateOfBirth) {
      showToast(S.of(context).tips_selectDateOfBirth);
      return;
    }

    FocusScope.of(context).requestFocus(FocusNode());
    UserService.getInstance().getUserInfo(context).then((userInfoResp) {
      if (userInfoResp.code == 1) {
        var userInfo = userInfoResp.data as GetUserInfoResponse;
        CommonService.userInfo = userInfo.user;
        UserInfo info = userInfo.user;
        info.socialId = _socialIdController.value.text.trim();
        info.idNum = info.socialId;
        info.firstName = _firstNameController.value.text.trim();
        info.lastName = _lastNameController.value.text.trim();
        info.mobile = selectedPhoneCountry!.phoneCode +
            _mobileNumberController.value.text.trim();
        info.dob = dateOfBirthTips;
        info.address1 = _address1Controller.value.text.trim();
        info.address2 = _address2Controller.value.text.trim();
        info.state = _stateController.value.text.trim();
        info.city = _cityController.value.text.trim();
        info.postCode = _postalController.value.text.trim();
        info.countryCode =
            Utils.getCountryCodeByCode(selectedCountry!.countryCode);

        OverlayEntry entry = showLoading(context);
        UserService.getInstance().kyc(context, info).then((value) async {
          log("${widget.type} ${value.code}");
          if (value.code == 1) {
            var resp = value.data as UserInfo;
            CommonService.userInfo = resp;
            GlobalParams.eventBus.fire("kyc_state");
            if (widget.type == "applyCard") {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CardDeposit(
                      type: "applyCard",
                      title: "Deposit",
                      amt: 5,
                      tokenIds: const [],
                      tokenIdValues: const [],
                    );
                  });
            } else {
              alert(S.of(context).tips_waitForReview, context, () {
                Navigator.pop(context, true);
              });
            }
          }
          entry.remove();
        });
      }
    });
  }
}
