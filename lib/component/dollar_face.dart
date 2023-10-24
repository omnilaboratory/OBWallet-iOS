import 'dart:developer';

import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:flutter/material.dart';

class DollarFace extends StatefulWidget {
  final int faceType;
  final int amount;

  const DollarFace({super.key, required this.faceType, required this.amount});

  @override
  State<DollarFace> createState() => _DollarFaceState();
}

class _DollarFaceState extends State<DollarFace> {
  var imageUrl = "";

  @override
  void initState() {
    imageUrl =
        "http://43.138.107.248:19091/nft/${EnumDollarFace.values[widget.faceType].value}.jpg";

    AccountService.getInstance().getNftBalance(context).then((resp) {
      if (resp.code == 1) {
        List<NftToken> nftInfoList = resp.data;
        log("$nftInfoList");
        if (nftInfoList.isNotEmpty) {
          for (int i = 0; i < nftInfoList.length; i++) {
            var nftInfo = nftInfoList[i];
            if (nftInfo.tokenId == widget.amount) {
              if (mounted) {
                if (imageUrl != nftInfo.imageUrl) {
                  setState(() {
                    imageUrl = nftInfo.imageUrl;
                  });
                }
              }
              break;
            }
          }
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: Image.network(imageUrl),
        ),
        const SizedBox(height: 6),
        Text(
            "\$${EnumDollarFace.values[widget.faceType].value} x ${widget.amount}"),
      ],
    );
  }
}
