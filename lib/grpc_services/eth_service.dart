import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/eth.dart';

class EthService {
  static final EthService _instance = EthService._internal();

  EthService._internal();

  static EthService getInstance() {
    return _instance;
  }

  factory EthService() => _instance;

  /// Generate a new eth address
  Future<GrpcResponse> genEthAddress() async {
    var ret = GrpcResponse();
    try {
      var resp = await Eth.genEthAddress();
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      ret.msg = 'genEthAddress -> error: $e';
    }
    return ret;
  }

  /// Get balance of an Eth Address
  Future<GrpcResponse> getBalanceOfEthAddress(String address) async {
    var ret = GrpcResponse();
    try {
      var resp = await Eth.getBalanceOfEthAddress(address);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      ret.msg = 'getBalanceOfEthAddress -> error: $e';
    }
    return ret;
  }
}
