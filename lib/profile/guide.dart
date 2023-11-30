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
  List<String> imageUrls = [
    "asset/images/guide_1.png",
    "asset/images/guide_2.png",
    "asset/images/guide_3.png",
    "asset/images/guide_4.png",
    "asset/images/guide_5.png"
  ];

  @override
  Widget build(BuildContext context) {
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
                    createDialogTitle('Guide'),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 480,
                      child: Swiper(
                        itemCount: imageUrls.length,
                        autoplay: true,
                        duration: 600,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Image.asset(imageUrls[index]),
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
