import 'package:flutter/material.dart';

class BottomWhiteButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const BottomWhiteButton({super.key, required this.icon, required this.text, required this.onPressed});

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
                  width: 28,
                  height: 28,
                ),
                const SizedBox(height: 20),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
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