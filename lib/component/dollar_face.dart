import 'dart:developer';
import 'package:fixnum/src/int64.dart';
import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:flutter/material.dart';

import 'common.dart';

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
    if (nftInfoListFromServer.isEmpty) {
      AccountService.getInstance()
          .getNftBalance(context, isAll: true)
          .then((resp) {
        if (resp.code == 1) {
          if (nftInfoListFromServer.isNotEmpty) {
            for (int i = 0; i < nftInfoListFromServer.length; i++) {
              var nftInfo = nftInfoListFromServer[i];
              if (nftInfo.tokenId ==Int64.parseInt( EnumDollarFace.values[widget.faceType].value)) {
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
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    imageUrl =
    "http://43.138.107.248:19091/nft/${EnumDollarFace.values[widget.faceType].value}.jpg";

    if (nftInfoListFromServer.isNotEmpty) {
      for (int i = 0; i < nftInfoListFromServer.length; i++) {
        var nftInfo = nftInfoListFromServer[i];
        if (nftInfo.tokenId == Int64.parseInt(EnumDollarFace.values[widget.faceType].value)) {
          imageUrl = nftInfo.imageUrl;
          break;
        }
      }
    }
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: Image.network(imageUrl),
            ),

            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  widget.amount.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          "\$${EnumDollarFace.values[widget.faceType].value}",
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
