import 'package:flutter/material.dart';

class NftDetailInfo {
  final String contractAddress;
  final String tokenId;
  final double price;
  final String tokenName;
  final String imageUrl;
  final String description;
  final TextEditingController textController;

  NftDetailInfo(this.contractAddress, this.tokenId, this.price, this.tokenName,
      this.imageUrl, this.description, this.textController);
}
