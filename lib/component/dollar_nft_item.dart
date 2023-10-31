import 'package:awallet/bean/enum_dollar_face.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/account_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';

import '../tools/global_params.dart';

class DollarNftItem extends StatefulWidget {
  final int faceType;
  final int amount;
  final TextEditingController textController;

  const DollarNftItem(
      {super.key,
      required this.faceType,
      required this.amount,
      required this.textController});

  @override
  State<DollarNftItem> createState() => _DollarNftItemState();
}

class _DollarNftItemState extends State<DollarNftItem> {
  var imageUrl = "";

  int amount = 0;

  @override
  void initState() {
    if (nftInfoList.isEmpty) {
      AccountService.getInstance()
          .getNftBalance(context, isAll: true)
          .then((resp) {
        if (resp.code == 1) {
          List<NftToken> tempList = resp.data;
          if (tempList.isNotEmpty) {
            nftInfoList = tempList;
            for (int i = 0; i < nftInfoList.length; i++) {
              var nftInfo = nftInfoList[i];
              if (nftInfo.tokenId ==
                  Int64.parseInt(
                      EnumDollarFace.values[widget.faceType].value)) {
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

    GlobalParams.eventBus.on().listen((event) {
      if (event == "buyNftFinish") {
        if(mounted){
          amount = 0;
          widget.textController.text = amount.toString();
          setState(() {});
        }
      }
    });

    widget.textController.text = amount.toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    imageUrl =
        "http://43.138.107.248:19091/nft/${EnumDollarFace.values[widget.faceType].value}.jpg";

    if (nftInfoList.isNotEmpty) {
      for (int i = 0; i < nftInfoList.length; i++) {
        var nftInfo = nftInfoList[i];
        if (nftInfo.tokenId ==
            Int64.parseInt(EnumDollarFace.values[widget.faceType].value)) {
          imageUrl = nftInfo.imageUrl;
          break;
        }
      }
    }
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Column(
        children: [
          Container(
            width: 110,
            height: 100,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
            child: Image.network(imageUrl),
          ),
          // Text("\$${EnumDollarFace.values[widget.faceType].value}"),
          const SizedBox(height: 10),
          SizedBox(
            width: 110,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      if (amount > 0) {
                        amount--;
                        amount = amount < 0 ? 0 : amount;
                        setState(() {
                          widget.textController.text = amount.toString();
                        });
                        GlobalParams.eventBus.fire("nftAmountChange");
                      }
                    },
                    child: const Icon(Icons.remove_circle_outline)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: SizedBox(
                      width: 50,
                      height: 30,
                      child: createTextField2(
                        widget.textController,
                        keyboardType: TextInputType.number, 
                        onChanged: (v) {
                        amount = int.parse(v);
                        widget.textController.text = amount.toString();
                        GlobalParams.eventBus.fire("nftAmountChange");
                      })),
                ),
                InkWell(
                    onTap: () {
                      amount++;
                      setState(() {
                        widget.textController.text = amount.toString();
                      });
                      GlobalParams.eventBus.fire("nftAmountChange");
                    },
                    child: const Icon(Icons.add_circle_outline)),
              ],
            ),
          ),
          const SizedBox(height: 15)
        ],
      ),
    );
  }
}
