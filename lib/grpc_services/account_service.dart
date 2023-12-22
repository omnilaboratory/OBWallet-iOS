import 'dart:developer';

import 'package:awallet/bean/enum_eth_key.dart';
import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/user/account.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

List<NftToken> nftInfoListFromServer = [];

class AccountService {
  static final AccountService _instance = AccountService._internal();

  static accountClient? accountServiceClient;

  AccountService._internal();

  static var channel = CommonService.getGrpcChannel();

  static AccountService getInstance() {
    accountServiceClient ??= accountClient(channel!,
        options: CallOptions(metadata: {
          "token": CommonService.token,
          "language": GlobalParams.currLangName.toLowerCase()
        }, timeout: Duration(seconds: GlobalParams.grpcTimeout)));
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
      UserService.getInstance().setError(context, "getAccountInfo", e, ret);
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
      UserService.getInstance().setError(context, "sellCoin", e, ret);
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
      UserService.getInstance().setError(context, "buyCoin", e, ret);
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
      UserService.getInstance().setError(context, "getCoinPrice", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getSwapTxList(BuildContext context, int start, int limit,
      TrackedTx_ContractSymbol? symbol,
      {bool loadNftTokenLog = false}) async {
    var request = GetSwapTxListRequest();
    request.start = Int64.parseInt(start.toString());
    request.limit = Int64.parseInt(limit.toString());
    if (symbol != null) {
      request.symbol = symbol;
    }
    request.loadNftTokenLog = loadNftTokenLog;
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getSwapTxList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getSwapTxList", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getAccountHistory(
      BuildContext context, int start, int limit) async {
    var request = GetAccountHistoryRequest();
    request.start = Int64.parseInt(start.toString());
    request.limit = Int64.parseInt(limit.toString());
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getAccountHistory(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getAccountHistory", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getTrackedTxList(
      BuildContext context, int start, int limit) async {
    var request = GetSwapTxListRequest();
    request.start = Int64.parseInt(start.toString());
    request.limit = Int64.parseInt(limit.toString());
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getTrackedTxList(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getTrackedTxList", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getNftBalance(BuildContext context,
      {bool isAll = false}) async {
    var request = GetNftBlanceRequest();
    if (isAll) {
      request.address = GlobalParams
          .dataInNetwork[GlobalParams.currNetwork]![EnumEthKey.nftToPlatform];
    }
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getNftBlance(request);
      ret.code = 1;
      var list = resp?.items;

      if (list != null && isAll) {
        list.sort((a, b) => b.tokenId.compareTo(a.tokenId));
        nftInfoListFromServer = list;
      }
      ret.data = list;
    } catch (e) {
      UserService.getInstance().setError(context, "getNftBalance", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getNftToken(BuildContext context, Int64 tokenId) async {
    var request = GetNftTokenRequest();
    request.tokenId = tokenId;
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getNftToken(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getNftToken", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> sellNft(
      BuildContext context, SellNftRequest request) async {
    log("$request");
    var ret = GrpcResponse();
    try {
      await accountServiceClient?.sellNft(request);
      ret.code = 1;
    } catch (e) {
      UserService.getInstance().setError(context, "getNftBalance", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getDcPayUrl(BuildContext context, double amt) async {
    var request = GetDcPayUrlRequest();
    request.usdAmt = amt;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getDcPayUrl(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getDcPayUrl", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getUserSwapPrice(
      BuildContext context, GetUserSwapPriceRequest request) async {
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.getUserSwapPrice(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "getUserSwapPrice", e, ret);
    }
    return ret;
  }
}
