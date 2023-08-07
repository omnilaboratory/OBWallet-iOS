import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const SquareButton({super.key, required this.icon, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 90,
        height: 67,
        child: Center(
          child: Column(
            children: [
              Image(
                image: AssetImage(icon),
                width: 32,
                height: 32,
              ),
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}