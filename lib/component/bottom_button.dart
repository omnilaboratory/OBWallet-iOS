import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const BottomButton({super.key, required this.icon, required this.text, required this.onPressed});

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
                  width: 36,
                  height: 36,
                ),
                const SizedBox(height: 7),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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