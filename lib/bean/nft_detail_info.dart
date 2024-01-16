import 'package:flutter/material.dart';
import 'package:fixnum/src/int64.dart';

class NftDetailInfo {
  final String contractAddress;
  final Int64 tokenId;
  final double price;
  String tokenName;
  final String imageUrl;
  String description;
  final TextEditingController textController;

  NftDetailInfo(this.contractAddress, this.tokenId, this.price, this.tokenName,
      this.imageUrl, this.description, this.textController);
}
