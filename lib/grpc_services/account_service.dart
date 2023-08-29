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

  Future<GrpcResponse> sellCoin(SellCoinRequest req) async {
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.sellCoin(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> buyCoin(BuyCoinRequest req) async {
    var ret = GrpcResponse();
    try {
      var resp = await accountServiceClient?.buyCoin(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> getCoinPrice(String name) async {
    var request = GetCoinPriceRequest();
    if(name == 'ETH'){
      request.symbol = TrackedTx_ContractSymbol.ETH;
    }else if(name == 'USDT'){
      request.symbol = TrackedTx_ContractSymbol.USDT;
    }else if(name == 'USDC'){
      request.symbol = TrackedTx_ContractSymbol.USDC;
    }

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