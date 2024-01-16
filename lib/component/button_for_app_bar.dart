import 'package:flutter/material.dart';

class ButtonForAppBarAction extends StatelessWidget {
  final String imageUrl;
  final GestureTapCallback onTap;

  const ButtonForAppBarAction({
    super.key,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: onTap,
          child: Image(width: 24, height: 24, image: AssetImage(imageUrl))),
    );
  }
}
