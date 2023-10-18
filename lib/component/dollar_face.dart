import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:flutter/material.dart';

class DollarFace extends StatelessWidget {
  final int faceType;
  final int amount;

  const DollarFace({super.key, required this.faceType, required this.amount});

  @override
  Widget build(BuildContext context) {
    EnumDollarFace currFace = EnumDollarFace.values[faceType];
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Image.network("http://43.138.107.248:19091/nft/${currFace.value}.jpg"),
        ),
        const SizedBox(height: 6),
        Text("\$${currFace.value} x $amount"),
      ],
    );
  }
}
