import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/eth/ethservice.pbgrpc.dart';
import 'package:awallet/tools/local_storage.dart';
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
            timeout: Duration(seconds: LocalStorage.grpcTimeout)));
    return _instance;
  }

  factory EthGrpcService() => _instance;

  Future<GrpcResponse> ethTrackTx(String txId) async {
    var request = EthTrackTxRequest();
    request.txId = txId;

    var ret = GrpcResponse();
    try {
      var resp = await ethServiceClient?.ethTrackTx(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }
}
