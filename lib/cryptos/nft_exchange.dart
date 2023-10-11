import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/dollar_face_info.dart';
import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/component/dollar_face.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NftExchange extends StatefulWidget {
  final DollarFaceInfo faceInfo;

  const NftExchange({super.key, required this.faceInfo});

  @override
  State<NftExchange> createState() => _NftExchangeState();
}

class _NftExchangeState extends State<NftExchange> {
  final TextEditingController _amountNftController = TextEditingController();
  final TextEditingController _amountDollarController = TextEditingController();
  late DollarFaceInfo currSelectedFace = widget.faceInfo;

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
          title: const HeadLogo(title: "NFT Exchange"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              DollarFace(
                  faceType: currSelectedFace.faceType,
                  amount: currSelectedFace.amount),
              const SizedBox(height: 40),
              buildNftPart(EnumDollarFace.values[currSelectedFace.faceType]),
              const SizedBox(height: 40),
              buildDollarPart(),
              const SizedBox(height: 40),
              Row(
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
                    text: 'DONE',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getDollarAmount(EnumDollarFace enumDollarFace) {
    _amountDollarController.text = _amountNftController.text;
    int? amount = int.tryParse(_amountNftController.text);
    if (amount != null) {
      _amountDollarController.text =
          (amount * double.parse(enumDollarFace.value)).toString();
    } else {
      _amountDollarController.text = "";
    }
  }

  Widget buildNftPart(EnumDollarFace enumDollarFace) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'From',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: createTextField(_amountNftController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                  int? amount = int.tryParse(value);
                  if (amount != null) {
                    if (amount > currSelectedFace.amount) {
                      _amountNftController.text =
                          currSelectedFace.amount.toString();
                      getDollarAmount(enumDollarFace);
                    } else {
                      getDollarAmount(enumDollarFace);
                    }
                  } else {
                    getDollarAmount(enumDollarFace);
                  }
                }),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 48,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<DollarFaceInfo>(
                      icon: const Image(
                          width: 24,
                          height: 24,
                          image: AssetImage(
                              "asset/images/icon_arrow_down_black.png")),
                      isExpanded: true,
                      value: currSelectedFace,
                      items: buildNftDropdownItemList(),
                      onChanged: (value) {
                        setState(() {
                          currSelectedFace = value!;
                          _amountDollarController.text = "";
                          _amountNftController.text = "";
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Balance: ${currSelectedFace.amount} NFTs',
                style: const TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  _amountNftController.text =
                      currSelectedFace.amount.toString();
                  getDollarAmount(enumDollarFace);
                },
                child: const Text(
                  'MAX',
                  style: TextStyle(
                    color: Color(0xFF4A92FF),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  List<DropdownMenuItem<DollarFaceInfo>> buildNftDropdownItemList() {
    List<DropdownMenuItem<DollarFaceInfo>> list =
        CommonService.nftInfoList.map((DollarFaceInfo value) {
      return DropdownMenuItem<DollarFaceInfo>(
        value: value,
        child: Row(
          children: [
            const SizedBox(width: 7),
            AutoSizeText(
              EnumDollarFace.values[value.faceType].name,
              maxLines: 1,
              minFontSize: 12,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }).toList();
    return list;
  }

  Widget buildDollarPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'To',
            style: TextStyle(
              color: Color(0xFF999999),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: createTextField(
                  _amountDollarController,
                  keyboardType: TextInputType.number,
                  enabled: false,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 48,
                  decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFE6E6E6)),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'USD',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
