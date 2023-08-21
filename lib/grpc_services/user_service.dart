import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/src/generated/user.pbgrpc.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:grpc/grpc.dart';

class UserService {
  static final UserService _instance = UserService._internal();

  static UserServiceClient? userServiceClient;

  UserService._internal();

  static var channel = CommonService.getGrpcChannel();

  static UserService getInstance() {
    userServiceClient ??= UserServiceClient(channel!,
        options: CallOptions(metadata: {"token": CommonService.token}));
    return _instance;
  }

  factory UserService() => _instance;

  Future<GrpcResponse> verifyCode(String email) async {
    var request = VerifyCodeRequest();
    request.email = email;
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.verifyCode(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> signIn(String username, String password) async {
    var request = SignInRequest();
    request.userName = username;
    request.password = Utils.generateMd5(password);

    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.signIn(request);
      ret.code = 1;
      ret.data = resp;
      CommonService.token = resp!.token;
      LocalStorage.save("userToken", resp.token);
      userServiceClient = null;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> signUp(SignUpRequest req) async {
    req.password = Utils.generateMd5(req.password);
    req.confirmPassword = Utils.generateMd5(req.confirmPassword);
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.signUp(req);
      ret.code = 1;
      ret.data = resp;
      CommonService.token = resp!.token;
      userServiceClient = null;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> getUserInfo() async {
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.getUserInfo(GetUserInfoRequest());
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }

  Future<GrpcResponse> uploadImage(UploadRequest req) async {
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.upload(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
    }
    return ret;
  }
}
