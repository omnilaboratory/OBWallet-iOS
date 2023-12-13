import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String icon;
  final String text;
  Color? imageClr;
  final VoidCallback onPressed;
  final double fontSize;

  BottomButton({super.key, required this.icon, required this.text,this.imageClr ,required this.onPressed,this.fontSize = 16});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        child: Center(
          child: Column(
              children: [
                Image(
                  image: AssetImage(icon),
                  color: imageClr??imageClr,
                  width: 36,
                  height: 36,
                ),
                const SizedBox(height: 7),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4,
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}