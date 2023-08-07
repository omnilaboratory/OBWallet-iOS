import 'package:flutter/material.dart';

class RectButton extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback onPressed;

  const RectButton({
    super.key, 
    required this.icon, 
    required this.text, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 272,
        height: 68,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 119, 119, 186),
          borderRadius: BorderRadius.circular(16)
        ),

        child: Row(
          children: [
            const SizedBox(width: 15),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                ),

                Image(
                  image: AssetImage(icon),
                  width: 30,
                  height: 30,
                ),
              ]
            ),
            
            const SizedBox(width: 15),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ]
        ),
      ),
    );
  }
}