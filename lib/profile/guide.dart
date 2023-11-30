import 'package:auto_size_text/auto_size_text.dart';
import 'package:awallet/bean/guide_info.dart';
import 'package:awallet/component/bottom_white_button.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class Guide extends StatefulWidget {
  const Guide({super.key});

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    List<GuideInfo> imageUrls = [
      GuideInfo(
          url: "asset/images/guide_1.png",
          desc: S.of(context).profile_guide_desc1),
      GuideInfo(
          url: "asset/images/guide_2.png",
          desc: S.of(context).profile_guide_desc2),
      GuideInfo(
          url: "asset/images/guide_3.png",
          desc: S.of(context).profile_guide_desc3),
      GuideInfo(
          url: "asset/images/guide_4.png",
          desc: S.of(context).profile_guide_desc4),
      GuideInfo(
          url: "asset/images/guide_5.png",
          desc: S.of(context).profile_guide_desc5),
    ];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromRGBO(18, 58, 80, 0.8),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width * 0.8,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    createDialogTitle('Guide', clr: Colors.white),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 520,
                      child: Swiper(
                        itemCount: imageUrls.length,
                        autoplay: true,
                        duration: 600,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                  height: 400,
                                  child: Image.asset(imageUrls[index].url)),
                              const SizedBox(height: 12),
                              AutoSizeText(
                                imageUrls[index].desc,
                                maxLines: 3,
                                minFontSize: 14,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          );
                        },
                        pagination: const SwiperPagination(
                            margin: EdgeInsets.only(top: 20)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              BottomWhiteButton(
                icon: 'asset/images/icon_close_white.png',
                text: S.of(context).common_Cancel,
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
