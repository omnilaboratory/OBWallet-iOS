import 'dart:developer';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/card.pbgrpc.dart';
import 'package:awallet/protos/gen-dart/user/country.pbenum.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';

class CardService {
  static final CardService _instance = CardService._internal();

  static CardServiceClient? cardServiceClient;

  CardService._internal();

  static var channel = CommonService.getGrpcChannel();

  static CardService getInstance() {
    cardServiceClient ??= CardServiceClient(channel!,
        options: CallOptions(
            metadata: {"token": CommonService.token},
            timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory CardService() => _instance;

  Future<GrpcResponse> cardInfo(BuildContext context) async {
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardList(CardListRequest());
      ret.code = 1;
      if (resp!.items.isNotEmpty) {
        CommonService.cardInfo = resp.items[0];
      }
    } catch (e) {
      UserService.getInstance().setError(context, "cardList", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> applyCard(BuildContext context, String icNo,
      {bool isShowToast = true}) async {
    var request = ApplyCardRequest();
    request.currency = CurrencyCode.USD;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.applyCard(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance()
          .setError(context, "applyCard", e, ret, isShowToast: isShowToast);
    }
    return ret;
  }

  Future<GrpcResponse> cardHistory(
      BuildContext context, String cardNo, Int64 start, Int64 limit) async {
    var request = CardHistoryRequest();
    request.cardNo = cardNo;
    request.start = start;
    request.limit = limit;
    var now = DateTime.now();
    request.startDate =
        DateFormat("yyyy-MM-dd").format(now.add(const Duration(days: -180)));
    request.endDate = DateFormat("yyyy-MM-dd").format(now);
    // log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardHistory(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "cardHistory", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> cardExchangeInfoList(
      BuildContext context, String cardNo, Int64 start, Int64 limit) async {
    var request = CardExchangeInfoListRequest();
    request.cardNo = cardNo;
    request.start = start;
    request.limit = limit;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardExchangeInfoList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance()
          .setError(context, "cardExchangeInfoList", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> cardRecharge(
      BuildContext context, CardRechargeRequest req,
      {bool isShowToast = true}) async {
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardRecharge(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance()
          .setError(context, "cardRecharge", e, ret, isShowToast: isShowToast);
    }
    return ret;
  }

  Future<GrpcResponse> cardWithdraw(
      BuildContext context, String cardNo, double amt) async {
    var request = CardWithdrawRequest();
    request.cardNo = cardNo;
    request.amt = amt;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.cardWithdraw(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "cardWithdraw", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getWithdrawResAmt(
      BuildContext context, double amt) async {
    var request = GetWithdrawResAmtRequest();
    request.amt = amt;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.getWithdrawResAmt(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getWithdrawResAmt", e, ret);
    }
    return ret;
  }
}
