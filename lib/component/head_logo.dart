import 'package:flutter/cupertino.dart';

class HeadLogo extends StatelessWidget {
  final String title;

  const HeadLogo({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const Image(
        //   width: 24,
        //   height: 33,
        //   image: AssetImage("asset/images/logo_head.png")
        // ),
        Text(title,
          style: const TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontWeight: FontWeight.w600,
          )
        ),
      ],
    );
  }
}
