import 'package:awallet/bean/card_item_info.dart';
import 'package:awallet/component/bottom_button.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/card_item.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';

import '../protos/gen-dart/user/user.pbgrpc.dart';

List<CardItemInfo> cardItemInfoArr = [
  CardItemInfo(
    country: "Hong Kong",
    iconUrl: "asset/images/icon_master.png",
  ),
  // CardItemInfo(
  //   country: "Singapore",
  //   iconUrl: "asset/images/icon_visa.png",
  // )
];

class SelectCardType extends StatefulWidget {
  final UserInfo userInfo;

  const SelectCardType({super.key, required this.userInfo});

  @override
  State<SelectCardType> createState() => _SelectCardTypeState();
}

class _SelectCardTypeState extends State<SelectCardType> {
  int currSelected = 0;

  onClickDone() {
    OverlayEntry entry = showLoading(context);
    UserService.getInstance().kyc(context, widget.userInfo).then((value) async {
      if (value.code == 1) {
        var resp = value.data as UserInfo;
        CommonService.userInfo = resp;
        GlobalParams.eventBus.fire("kyc_state");
        alert(S.of(context).tips_waitForReview, context, () {
          Navigator.pop(context, true);
          Navigator.pop(context, true);
        });
      }
      entry.remove();
    });
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
                    height: 200 + 160.0 * cardItemInfoArr.length,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 28, bottom: 10),
                              child: createDialogTitle(S.of(context).selectCard_title),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Expanded(
                            child: ListView.separated(
                              itemCount: cardItemInfoArr.length,
                              itemBuilder: (BuildContext context, int index) {
                                if (index < cardItemInfoArr.length) {
                                  return GestureDetector(
                                    onTap: () {
                                      currSelected = index;
                                      setState(() {});
                                    },
                                    child: CardItem(
                                      cardItemInfo: cardItemInfoArr[index],
                                      type: 1,
                                      selected: currSelected == index,
                                    ),
                                  );
                                }
                                return null;
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(height: 10);
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              BottomButton(
                                icon: 'asset/images/icon_arrow_left_green.png',
                                text: S.of(context).common_Back.toUpperCase(),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              BottomButton(
                                icon: 'asset/images/icon_confirm_green.png',
                                text: S.of(context).common_Done.toUpperCase(),
                                onPressed: () {
                                  onClickDone();
                                },
                              ),
                            ],
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
}
