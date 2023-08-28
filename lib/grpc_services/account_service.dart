import 'dart:developer';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/user/account.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class AccountService {
  static final AccountService _instance = AccountService._internal();

  static accountClient? accountServiceClient;

  AccountService._internal();

  static var channel = CommonService.getGrpcChannel();

  static AccountService getInstance() {
    accountServiceClient ??= accountClient(channel!,
        options: CallOptions(metadata: {"token": CommonService.token}));
    return _instance;
  }

  factory AccountService() => _instance;

  Future<GrpcResponse> getAccountInfo() async {
    var request = GetAccountInfoRequest();
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getAccountInfo(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> sellCoin() async {
    var request = SellCoinRequest();

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.sellCoin(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> buyCoin() async {
    var request = BuyCoinRequest();

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.buyCoin(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> getCoinPrice() async {
    var request = GetCoinPriceRequest();

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getCoinPrice(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> getSwapTxList() async {
    var request = GetSwapTxListRequest();

    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getSwapTxList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }
}