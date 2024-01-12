import 'dart:developer';
import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/cards/real_card_step2.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/card_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

PcardApplyInfo applyInfo = PcardApplyInfo();

class RealCardStep1 extends StatefulWidget {
  const RealCardStep1({super.key});

  @override
  State<RealCardStep1> createState() => _RealCardStep1State();
}

class _RealCardStep1State extends State<RealCardStep1> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _idNumController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  void initState() {
    applyInfo = PcardApplyInfo();
    super.initState();
  }

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
          title: HeadLogo(title: S.of(context).realCard_title),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                buildInputField(),
                const SizedBox(height: 30),
                BottomButton(
                  icon: 'asset/images/icon_arrow_right_green.png',
                  text: S.of(context).common_Next,
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (applyInfo.idImage1.isEmpty ||
                        applyInfo.idImage2.isEmpty) {
                      alert(S.of(context).realCard_tips_uploadImage, context,
                          () {});
                      return;
                    }

                    if ((_formKey.currentState as FormState).validate() ==
                        false) {
                      return;
                    }

                    applyInfo.idType = selectedCardType + 1;
                    applyInfo.idName = _unameController.text.trim();
                    applyInfo.idNo = _idNumController.text.trim();
                    applyInfo.gender = (selectedSex + 1).toString();
                    applyInfo.firstName = _firstNameController.text.trim();
                    applyInfo.lastName = _lastNameController.text.trim();
                    applyInfo.maritalStatus = (selectedMarry + 1).toString();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RealCardStep2()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final picker = ImagePicker();
  XFile? cardImage0;
  XFile? cardImage1;

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
              applyInfo.idImage1 = resp.data;
            }
            if (type == 1) {
              applyInfo.idImage2 = resp.data;
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

  late int selectedCardType = 0;
  late int selectedSex = 0;
  late int selectedMarry = 0;

  Widget buildInputField() {
    return Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            const SizedBox(height: 15),
            buildCardType(),
            const SizedBox(height: 25),
            buildImagePicker(),
            const SizedBox(height: 30),
            createTextFormField(_unameController, S.of(context).realCard_name,
                icon: const Icon(Icons.person_pin), maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(
                _idNumController, S.of(context).realCard_idCardNum,
                icon: const Icon(Icons.card_membership), maxLength: 30),
            buildSex(),
            createTextFormField(
                _firstNameController, S.of(context).realCard_firstName,
                icon: const Icon(Icons.drive_file_rename_outline),
                maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(
                _lastNameController, S.of(context).realCard_lastName,
                icon: const Icon(Icons.drive_file_rename_outline),
                maxLength: 30),
            buildMarry(),
          ],
        ));
  }

  Row buildMarry() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile<int>(
            value: 0,
            title: Text(S.of(context).realCard_marry_no),
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
            title: Text(S.of(context).realCard_marry_yes),
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

  Row buildSex() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile<int>(
            value: 0,
            title: Text(S.of(context).realCard_gender_male),
            contentPadding: EdgeInsets.zero,
            groupValue: selectedSex,
            onChanged: (value) {
              setState(() {
                selectedSex = value!;
              });
            },
          ),
        ),
        Flexible(
          child: RadioListTile<int>(
            value: 1,
            title: Text(S.of(context).realCard_gender_female),
            contentPadding: EdgeInsets.zero,
            groupValue: selectedSex,
            onChanged: (value) {
              setState(() {
                selectedSex = value!;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget buildCardType() {
    return SizedBox(
      height: 50,
      child: Row(
        children: <Widget>[
          Flexible(
            child: RadioListTile<int>(
              value: 0,
              title: AutoSizeText(
                S.of(context).realCard_chinaIdCard,
                maxLines: 2,
                minFontSize: 10,
                maxFontSize: 16,
              ),
              groupValue: selectedCardType,
              onChanged: (value) {
                setState(() {
                  selectedCardType = value!;
                  cardImage0 = null;
                  cardImage1 = null;
                });
              },
            ),
          ),
          Flexible(
            child: RadioListTile<int>(
              value: 1,
              title: AutoSizeText(
                S.of(context).realCard_otherIdCard,
                maxLines: 2,
                minFontSize: 8,
                maxFontSize: 16,
              ),
              groupValue: selectedCardType,
              onChanged: (value) {
                setState(() {
                  selectedCardType = value!;
                  cardImage0 = null;
                  cardImage1 = null;
                });
              },
            ),
          ),
        ],
      ),
    );
  }

  Row buildImagePicker() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
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
        ),
        GestureDetector(
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
        ),
      ],
    );
  }
}
