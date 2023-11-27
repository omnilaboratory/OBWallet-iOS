import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/grpc_services/user_service.dart';
import 'package:awallet/protos/gen-dart/eth/ethservice.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc.dart';

class EthGrpcService {
  static final EthGrpcService _instance = EthGrpcService._internal();

  static ethClient? ethServiceClient;

  EthGrpcService._internal();

  static var channel = CommonService.getGrpcChannel();

  static EthGrpcService getInstance() {
    ethServiceClient ??= ethClient(channel!,
        options: CallOptions(
            metadata: {"token": CommonService.token},
            timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory EthGrpcService() => _instance;

  Future<GrpcResponse> ethTrackTx(BuildContext context, String txId) async {
    var request = EthTrackTxRequest();
    request.txId = txId;

    var ret = GrpcResponse();
    try {
      var resp = await ethServiceClient?.ethTrackTx(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context,"ethTrackTx",e, ret);
    }
    return ret;
  }
  Future<GrpcResponse> ethGetAppConf(BuildContext context) async {
    var request = ETHGetAppConfRequest();
    var ret = GrpcResponse();
    try {
      var resp = await ethServiceClient?.eTHGetAppConf(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      UserService.getInstance().setError(context,"ethTrackTx",e, ret);
    }
    return ret;
  }
}
