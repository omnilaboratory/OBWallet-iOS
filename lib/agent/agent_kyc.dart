import 'dart:developer';
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/grpc_services/eth_grpc_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pb.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/country.pbenum.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/utils.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../component/bottom_button.dart';

class AgentKyc extends StatefulWidget {
  const AgentKyc({super.key});

  @override
  State<AgentKyc> createState() => _AgentKycState();
}

class _AgentKycState extends State<AgentKyc> {
  final GlobalKey _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _socialIdController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _address1Controller = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _postalController = TextEditingController();
  Country? selectedCountry = CountryService().findByCode("HK");
  Country? selectedCountryForAddress = CountryService().findByCode("HK");
  Country? selectedPhoneCountry = CountryService().findByCode("HK");

  final List<DateTime?> _dates = [];
  var dateOfBirthTips = "";
  bool _postalFieldEnable = true;

  @override
  void initState() {
    super.initState();
    _postalController.text = "999077";
    _postalFieldEnable = false;

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
    if (dateOfBirthTips.isEmpty) {
      dateOfBirthTips = S.of(context).kyc_dateOfBirth;
    }
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 42,
            titleSpacing: 0,
            title: HeadLogo(title: S.of(context).agent_kyc),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              const SizedBox(height: 6),
                              buildCardType(),
                              const SizedBox(height: 6),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Text(
                                        selectedCardType == 1
                                            ? S.of(context).kyc_id_tips_china
                                            : S
                                                .of(context)
                                                .kyc_id_tips_otherArea,
                                        style: const TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          height: 1.47,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 6),
                              buildImagePicker(),
                              const SizedBox(height: 6),
                              createTextFormField(
                                  _socialIdController,
                                  selectedCardType == 1
                                      ? S.of(context).kyc_IdentityId
                                      : S.of(context).kyc_PassportId,
                                  maxLength: 30,
                                  icon: const Icon(Icons.credit_card)),
                              Row(
                                children: [
                                  Expanded(
                                      child: createTextFormField(
                                          _firstNameController,
                                          S.of(context).kyc_FirstName,
                                          onChanged: (v) {
                                    _firstNameController.text =
                                        _firstNameController.text.toUpperCase();
                                  }, maxLength: 20)),
                                  const SizedBox(width: 20),
                                  Expanded(
                                      child: createTextFormField(
                                          _lastNameController,
                                          S.of(context).kyc_LastName,
                                          onChanged: (v) {
                                    _lastNameController.text =
                                        _lastNameController.text.toUpperCase();
                                  }, maxLength: 20)),
                                ],
                              ),
                              const SizedBox(height: 6),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(S.of(context).kyc_country,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      )),
                                  // const SizedBox(width: 6),
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
                                        padding: const EdgeInsets.only(left: 6),
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
                                      )),
                                ],
                              ),
                              buildGender(),
                              buildMarry(),
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
                              createTextFormField(
                                  _emailController, S.of(context).common_Email,
                                  icon: const Icon(Icons.email),
                                  maxLength: 50, validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return S.of(context).common_Wrong +
                                      S.of(context).common_Email;
                                }
                                bool emailValid =
                                    RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                        .hasMatch(value);
                                if (!emailValid) {
                                  return S.of(context).common_Wrong +
                                      S.of(context).common_Email;
                                }
                                return null;
                              }, keyboardType: TextInputType.emailAddress),
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
                              buildAddressType(),
                              createTextFormField(_address1Controller,
                                  S.of(context).kyc_AddressLine),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                      child: createTextFormField(
                                          _stateController,
                                          S.of(context).kyc_StateRegion)),
                                  const SizedBox(width: 20),
                                  Expanded(
                                      child: createTextFormField(
                                          _cityController,
                                          S.of(context).kyc_City)),
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
                                          enabled: _postalFieldEnable,
                                          keyboardType: TextInputType.number)),
                                  const SizedBox(width: 20),
                                  InkWell(
                                      onTap: () {
                                        showCountryPicker(
                                          context: context,
                                          showPhoneCode: false,
                                          countryFilter: ["CN", "HK"],
                                          useSafeArea: true,
                                          onSelect: (Country country) {
                                            selectedCountryForAddress = country;
                                            CountryCode code =
                                                Utils.getCountryCodeByCode(
                                                    selectedCountryForAddress!
                                                        .countryCode);
                                            _postalFieldEnable = true;
                                            if (code == CountryCode.HK) {
                                              _postalController.text = "999077";
                                              _postalFieldEnable = false;
                                            }else{
                                              _postalController.text = "";
                                            }
                                            setState(() {});
                                          },
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 6),
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
                                                  selectedCountryForAddress!
                                                      .name,
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

  checkBalance() {
    AccountService.getInstance().getAccountInfo(context).then((info) {
      if (info.code == 1) {
        var accountInfo = info.data as AccountInfo;
        if (accountInfo.balance < createPcardFee) {
          alert(S.of(context).realCard_open_balance_not_enough(createPcardFee),
              context, () {});
        } else {
          onKyc();
        }
      }
    });
  }

  void onKyc() {
    if (selectedCountryForAddress == null) {
      showToast(S.of(context).tips_selectCountry);
      return;
    }

    if (dateOfBirthTips == S.of(context).kyc_dateOfBirth) {
      showToast(S.of(context).tips_selectDateOfBirth);
      return;
    }

    // china
    if (selectedCardType == 1) {
      if (idImage1.isEmpty || idImage2.isEmpty) {
        alert(S.of(context).realCard_tips_uploadImage, context, () {});
        return;
      }
    }
    // out china
    if (selectedCardType == 2) {
      if (idImage1.isEmpty) {
        alert(S.of(context).realCard_tips_uploadImage, context, () {});
        return;
      }
    }

    FocusScope.of(context).requestFocus(FocusNode());
    UserService.getInstance().getUserInfo(context).then((userInfoResp) {
      if (userInfoResp.code == 1) {
        var info = AgentKycInfo();
        info.idType = (selectedCardType).toString();
        info.id1 = idImage1;
        if (selectedCardType == 1) {
          info.id2 = idImage2;
        }
        info.marState = selectedMarry.toString();
        info.gender = selectedGender == 0 ? "M" : "F";
        info.addressType = selectedAddressType.toString();

        info.socialId = _socialIdController.value.text.trim();
        info.idNum = info.socialId;
        info.firstName = _firstNameController.value.text.trim().toUpperCase();
        info.lastName = _lastNameController.value.text.trim().toUpperCase();
        info.country = Utils.getCountryCodeByCode(selectedCountry!.countryCode);

        info.areaCode = selectedPhoneCountry!.phoneCode;
        if (!info.areaCode.startsWith("+")) {
          info.areaCode = "+${info.areaCode}";
        }
        info.email = _emailController.value.text.trim();
        info.mobile = _mobileNumberController.value.text.trim();
        info.dob = dateOfBirthTips;
        info.address1 = _address1Controller.value.text.trim();
        info.state = _stateController.value.text.trim();
        info.city = _cityController.value.text.trim();
        info.postCode = _postalController.value.text.trim();
        info.countryCode =
            Utils.getCountryCodeByCode(selectedCountryForAddress!.countryCode);

        OverlayEntry entry = showLoading(context);
        UserService.getInstance()
            .agentKycForCard(context, info)
            .then((resp) async {
          if (resp.code == 1) {
            GlobalParams.eventBus.fire("agent_kyc_finish");
            Navigator.of(context).pop();
          } else {
            alert(resp.msg, context, () {});
          }
          removeLoading(entry);
        });
      }
    });
  }

  late int selectedCardType = 2;
  late int selectedGender = 0;
  late int selectedMarry = 0;
  late int selectedAddressType = 0;

  Widget buildCardType() {
    return SizedBox(
      // height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: RadioListTile<int>(
              value: 2,
              title: AutoSizeText(
                S.of(context).realCard_otherIdCard,
                maxLines: 1,
                minFontSize: 10,
                maxFontSize: 14,
              ),
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
              title: AutoSizeText(
                S.of(context).realCard_chinaIdCard,
                maxLines: 1,
                minFontSize: 10,
                maxFontSize: 14,
              ),
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

  Widget buildGender() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile<int>(
            value: 0,
            title: Text(S.of(context).realCard_gender_male,
                style: const TextStyle(fontSize: 12)),
            contentPadding: EdgeInsets.zero,
            groupValue: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value!;
              });
            },
          ),
        ),
        Flexible(
          child: RadioListTile<int>(
            value: 1,
            title: Text(S.of(context).realCard_gender_female,
                style: const TextStyle(fontSize: 12)),
            contentPadding: EdgeInsets.zero,
            groupValue: selectedGender,
            onChanged: (value) {
              setState(() {
                selectedGender = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget buildMarry() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile<int>(
            value: 0,
            title: Text(S.of(context).realCard_marry_no,
                style: const TextStyle(fontSize: 12)),
            groupValue: selectedMarry,
            contentPadding: EdgeInsets.zero,
            onChanged: (value) {
              setState(() {
                selectedMarry = value!;
              });
            },
          ),
        ),
        Flexible(
          child: RadioListTile<int>(
            value: 1,
            title: Text(S.of(context).realCard_marry_yes,
                style: const TextStyle(fontSize: 12)),
            groupValue: selectedMarry,
            contentPadding: EdgeInsets.zero,
            onChanged: (value) {
              setState(() {
                selectedMarry = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget buildAddressType() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile<int>(
            value: 0,
            title: Text(S.of(context).realCard_shipAddress_home,
                style: const TextStyle(fontSize: 12)),
            groupValue: selectedAddressType,
            contentPadding: EdgeInsets.zero,
            onChanged: (value) {
              setState(() {
                selectedAddressType = value!;
              });
            },
          ),
        ),
        Flexible(
          child: RadioListTile<int>(
            value: 1,
            title: Text(S.of(context).realCard_shipAddress_company,
                style: const TextStyle(fontSize: 12)),
            groupValue: selectedAddressType,
            contentPadding: EdgeInsets.zero,
            onChanged: (value) {
              setState(() {
                selectedAddressType = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  Row buildImagePicker() {
    List<Widget> children = [];
    children.add(GestureDetector(
      onTap: () {
        getImage(0);
      },
      child: cardImage0 == null
          ? const Image(
              image: AssetImage("asset/images/user_idCard_template1.png"),
              width: 130,
              height: 84,
            )
          : Image.file(
              File(cardImage0!.path),
              width: 130,
              height: 84,
              fit: BoxFit.fitHeight,
            ),
    ));
    if (selectedCardType == 1) {
      children.add(const SizedBox(width: 10));
      children.add(GestureDetector(
        onTap: () {
          getImage(1);
        },
        child: cardImage1 == null
            ? const Image(
                image: AssetImage("asset/images/user_idCard_template2.png"),
                width: 130,
                height: 84,
              )
            : Image.file(
                File(cardImage1!.path),
                width: 130,
                height: 84,
                fit: BoxFit.fitHeight,
              ),
      ));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children,
    );
  }

  final picker = ImagePicker();
  XFile? cardImage0;
  XFile? cardImage1;
  late String idImage1;
  late String idImage2;

  getImage(int type) {
    picker.pickImage(source: ImageSource.gallery).then((image) async {
      if (image != null) {
        UserUploadRequest req = UserUploadRequest();
        req.fileName = image.name;
        req.fileBytes = await image.readAsBytes();
        CardService.getInstance().uploadImage(context, req).then((resp) {
          if (resp.code == 1) {
            log("${resp.data}");
            if (type == 0) {
              idImage1 = resp.data;
            }
            if (type == 1) {
              idImage2 = resp.data;
            }
          }
        });

        setState(() {
          if (type == 0) {
            cardImage0 = image;
          } else {
            cardImage1 = image;
          }
        });
      }
    });
  }
}
