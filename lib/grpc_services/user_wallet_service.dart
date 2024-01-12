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
          "language": GlobalParams.currLangName
        }, timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory UserWalletService() => _instance;

  Future<GetTokenBalalanceResponse?> getAllTokenBalance() async {
    var request = GetTokenBalalanceRequest();
    try {
      var resp = await walletClient?.getTokenBalalance(request)
          as GetTokenBalalanceResponse;
      log("getAllTokenBalance $resp");
      return resp;
    } catch (e) {
      log("$e");
    }
    return null;
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
