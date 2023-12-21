import 'dart:developer';

import 'package:awallet/bean/language_info.dart';
import 'package:awallet/component/head_logo.dart';
import 'package:awallet/component/language_item.dart';
import 'package:awallet/generated/l10n.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List<LanguageInfo> dataList = [
    LanguageInfo(key: "en", name: "English"),
    LanguageInfo(key: "zh_TW", name: "繁体中文")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 42,
        titleSpacing: 0,
        title: HeadLogo(title: S.of(context).profile_language_title),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            if (index < dataList.length) {
              return GestureDetector(
                onTap: () {
                  if (dataList[index].key != (LocalStorage.get("currLangName") ?? "en")) {
                    LocalStorage.save("currLangName", dataList[index].key);
                    GlobalParams.eventBus.fire("changeLang");
                    setState(() {});
                  }
                },
                child: LanguageItem(
                  languageInfo: dataList[index],
                ),
              );
            }
            return null;
          }),
    );
  }
}
