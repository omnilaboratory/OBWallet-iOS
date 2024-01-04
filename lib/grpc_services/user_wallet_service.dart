import 'dart:developer';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/protos/gen-dart/user/user_wallet.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

import 'common_service.dart';
import 'user_service.dart';

class UserWalletService {
  static final UserWalletService _instance = UserWalletService._internal();

  static uwalletClient? walletClient;

  UserWalletService._internal();

  static var channel = CommonService.getGrpcChannel();

  static UserWalletService getInstance() {
    walletClient ??= uwalletClient(channel!,
        options: CallOptions(metadata: {
          "token": CommonService.token,
          "language": GlobalParams.currLangName.toLowerCase()
        }, timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory UserWalletService() => _instance;

  Future<double> getTokenBalance(String tokenName) async {
    var request = GetTokenBalalanceRequest();
    request.tokenName = tokenName;
    log("$request");
    try {
      var resp = await walletClient?.getTokenBalalance(request)
          as GetTokenBalalanceResponse;
      log("getTokenBalance $resp");
      return resp.balanceUsd;
    } catch (e) {
      log("$e");
    }
    return 0;
  }

  Future<GrpcResponse> transferToken(
      BuildContext context, TransferTokenRequest request) async {
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await walletClient?.transferToken(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context, "transferToken", e, ret);
    }
    return ret;
  }
}
