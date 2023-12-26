import 'dart:developer';
import 'dart:io';

import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RealCardStep1 extends StatefulWidget {
  const RealCardStep1({super.key});

  @override
  State<RealCardStep1> createState() => _RealCardStep1State();
}

class _RealCardStep1State extends State<RealCardStep1> {
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _idNumController = TextEditingController();

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
          child: Column(
            children: [
              buildInputField(),
              const SizedBox(height: 30),
              BottomButton(
                icon: 'asset/images/icon_arrow_right_green.png',
                text: 'NEXT',
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  final picker = ImagePicker();
  XFile? cardImage0;
  XFile? cardImage1;
  var req = UploadRequest();

  getImage(int type) {
    picker.pickImage(source: ImageSource.gallery).then((image) async {
      req.name = image!.name;
      req.content = await image.readAsBytes();
      setState(() {
        if (type == 0) {
          cardImage0 = image;
        } else {
          cardImage1 = image;
        }
      });
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
                icon: const Icon(Icons.person_pin), maxLength: 30),
            buildSex(),
            createTextFormField(_idNumController, "姓氏拼音",
                icon: const Icon(Icons.person_pin), maxLength: 30),
            const SizedBox(height: 15),
            createTextFormField(_idNumController, "名字拼音",
                icon: const Icon(Icons.person_pin), maxLength: 30),
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
            title: Text('未婚'),
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
            title: Text('已婚'),
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
            title: Text('男'),
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
            title: Text('女'),
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
              title: const Text('中国大陆身份证'),
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
              title: const Text('港澳台及境外护照'),
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
            UserService.getInstance().uploadImage(context, req).then((resp) => {
                  if (resp.code == 1) {log("${resp.data}")}
                });
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
            UserService.getInstance().uploadImage(context, req);
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
