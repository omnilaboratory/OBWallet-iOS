import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/user.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class UserService {
  static late final UserService _instance = UserService._internal();

  static late UserServiceClient userServiceClient;

  UserService._internal() {}

  static Future<UserService> getInstance() async {
    var channel = await CommonService.getGrpcChannel();
    userServiceClient = UserServiceClient(channel);
    return _instance;
  }

  factory UserService() => _instance;

  Future<GrpcResponse<String>> verifyCode(String email) async {
    var request = VerifyCodeRequest();
    request.email = email;
    var ret = GrpcResponse(data: "");
    try {
      var resp = await userServiceClient.verifyCode(request);
      ret.code = 1;
      ret.data = resp.verifyCodeId;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }
}
