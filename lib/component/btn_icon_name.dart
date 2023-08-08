import 'package:awallet/bean/btn_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnIconName extends StatelessWidget {
  final BtnInfo btnInfo;

  const BtnIconName({super.key, required this.btnInfo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: btnInfo.callback,
      child: SizedBox(
        width: 20,
        height: 36,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              width: 18,
              height: 18,
              image: AssetImage(btnInfo.iconUrl),
            ),
            const SizedBox(width: 10),
            Text(
              btnInfo.name,
              style: const TextStyle(
                decoration: TextDecoration.none,
                color: Color(0xFF666666),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
