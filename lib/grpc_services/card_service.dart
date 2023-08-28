import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/user/card.pbgrpc.dart';
import 'package:awallet/src/generated/user/country.pbenum.dart';
import 'package:grpc/grpc.dart';

class CardService {
  static final CardService _instance = CardService._internal();

  static CardServiceClient? cardServiceClient;

  CardService._internal();

  static var channel = CommonService.getGrpcChannel();

  static CardService getInstance() {
    cardServiceClient ??= CardServiceClient(channel!,
        options: CallOptions(metadata: {"token": CommonService.token}));
    return _instance;
  }

  factory CardService() => _instance;

  Future<GrpcResponse> applyCard() async {
    var request = ApplyCardRequest();
    request.icNo = '130429198903091012';
    request.currency = CurrencyCode.CNY;

    var ret = GrpcResponse();
    try {
      var resp = await cardServiceClient?.applyCard(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }
}