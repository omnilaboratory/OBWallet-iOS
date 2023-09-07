import 'dart:developer';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class AccountService {
  static final AccountService _instance = AccountService._internal();

  static accountClient? accountServiceClient;

  AccountService._internal();

  static var channel = CommonService.getGrpcChannel();

  static AccountService getInstance() {
    accountServiceClient ??= accountClient(channel!,
        options: CallOptions(
            metadata: {"token": CommonService.token},
            timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory AccountService() => _instance;

  Future<GrpcResponse> getAccountInfo(BuildContext context) async {
    var request = GetAccountInfoRequest();
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getAccountInfo(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> sellCoin(
      BuildContext context, SellCoinRequest req) async {
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.sellCoin(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> buyCoin(BuildContext context, BuyCoinRequest req) async {
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.buyCoin(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getCoinPrice(BuildContext context, String name) async {
    var request = GetCoinPriceRequest();
    if (name == 'ETH') {
      request.symbol = TrackedTx_ContractSymbol.ETH;
    } else if (name == 'USDT') {
      request.symbol = TrackedTx_ContractSymbol.USDT;
    } else if (name == 'USDC') {
      request.symbol = TrackedTx_ContractSymbol.USDC;
    }

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getCoinPrice(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getSwapTxList(BuildContext context) async {
    var request = GetSwapTxListRequest();

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getSwapTxList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getTrackedTxList(
    BuildContext context,
  ) async {
    var request = GetSwapTxListRequest();

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getTrackedTxList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getDcPayUrl(
      BuildContext context, double amt, String name) async {
    var request = GetDcPayUrlRequest();
    request.usdAmt = amt;
    if (name == 'ETH') {
      request.coin = TrackedTx_ContractSymbol.ETH;
    } else if (name == 'USDT') {
      request.coin = TrackedTx_ContractSymbol.USDT;
    } else if (name == 'USDC') {
      request.coin = TrackedTx_ContractSymbol.USDC;
    } else if (name == 'USD') {
      request.coin = TrackedTx_ContractSymbol.USD;
    }

    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getDcPayUrl(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, e, ret);
    }
    return ret;
  }
}
