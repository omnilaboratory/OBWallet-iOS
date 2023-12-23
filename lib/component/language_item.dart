import 'package:awallet/bean/language_info.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:flutter/material.dart';

class LanguageItem extends StatelessWidget {
  final LanguageInfo languageInfo;

  const LanguageItem({super.key, required this.languageInfo});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];
    list.add(Text(languageInfo.name,
        style: TextStyle(
          color: (LocalStorage.get("currLangName") ?? "en") == languageInfo.key
              ? Colors.indigoAccent
              : Colors.black.withOpacity(0.6),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        )));
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: list,
            ),
          ),
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Colors.black.withOpacity(0.2),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
