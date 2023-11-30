import 'dart:developer';
import 'dart:io';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/logins/login.dart';
import 'package:awallet/protos/gen-dart/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:fixnum/src/int64.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class UserService {
  static final UserService _instance = UserService._internal();

  static UserServiceClient? userServiceClient;

  UserService._internal();

  static var channel = CommonService.getGrpcChannel();

  static UserService getInstance() {
    userServiceClient ??= UserServiceClient(channel!,
        options: CallOptions(
            metadata: {"token": CommonService.token},
            timeout: Duration(seconds: GlobalParams.grpcTimeout)));
    return _instance;
  }

  factory UserService() => _instance;

  Future<GrpcResponse> verifyCode(BuildContext context, String email) async {
    var request = VerifyCodeRequest();
    request.email = email;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.verifyCode(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "verifyCode", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> login(BuildContext context, SignInRequest req) async {
    req.password = Utils.generateMd5(req.password);
    req.os = Platform.operatingSystem;
    await setDeviceInfo(req);
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.signIn(req);
      ret.code = 1;
      ret.data = resp;
      log("$resp");
      resetServices();
      CommonService.token = resp!.token;
      LocalStorage.save("userToken", resp.token);
    } catch (e) {
      setError(context, "signIn", e, ret);
    }
    return ret;
  }

  Future<void> setDeviceInfo(SignInRequest req) async {
    if (Platform.isAndroid) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      req.osVersion = androidInfo.version.codename;
      req.deviceId = androidInfo.device.toString();
    }

    if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo info = await deviceInfo.iosInfo;
      req.osVersion = info.systemVersion;
      req.deviceId = info.model;
    }
  }

  Future<GrpcResponse> verifyImage(BuildContext context) async {
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.verifyImage(VerifyImageRequest());
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "verifyImage", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> signUp(BuildContext context, SignUpRequest req) async {
    log("$req");
    req.password = Utils.generateMd5(req.password);
    req.confirmPassword = Utils.generateMd5(req.confirmPassword);
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.signUp(req);
      ret.code = 1;
      ret.data = resp;
      resetServices();
      CommonService.token = resp!.token;
    } catch (e) {
      setError(context, "signUp", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> forgetPwd(
      BuildContext context, ForgetPwdRequest req) async {
    req.password = Utils.generateMd5(req.password);
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.forgetPwd(req);
      ret.code = 1;
      ret.data = resp;
      resetServices();
    } catch (e) {
      setError(context, "forgetPwd", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> updatePwd(
      BuildContext context, UpdatePwdRequest req) async {
    req.oldPassword = Utils.generateMd5(req.oldPassword);
    req.newPassword = Utils.generateMd5(req.newPassword);
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.updatePwd(req);
      ret.code = 1;
      ret.data = resp;
      resetServices();
    } catch (e) {
      setError(context, "updatePwd", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getUserInfo(
    BuildContext context,
  ) async {
    var ret = GrpcResponse();
    try {
      log("getUserInfo ${CommonService.token} ${CommonService.userInfo?.email}");
      var resp = await userServiceClient?.getUserInfo(GetUserInfoRequest());
      ret.code = 1;
      ret.data = resp;
      var userInfo = resp as GetUserInfoResponse;
      CommonService.userInfo = userInfo.user;
      log("getUserInfo cardCount ${userInfo.user}");
      CommonService.userId = userInfo.user.id.toString();
    } catch (e) {
      setError(context, "getUserInfo", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> uploadImage(
      BuildContext context, UploadRequest req) async {
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.upload(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "uploadImage", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> kyc(BuildContext context, UserInfo req) async {
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.kyc(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "kyc", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> verifyPwd(
      BuildContext context, String username, String password) async {
    var request = SignInRequest();
    request.userName = username;
    request.password = Utils.generateMd5(password);
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.verifyPwd(request);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "verifyPwd", e, ret);
    }
    return ret;
  }

  void setError(BuildContext context, String funcName, Object? e,
      GrpcResponse<dynamic> ret,
      {bool isShowToast = true}) {
    if (e == null) {
      return;
    }
    log("$funcName $e");
    try {
      GrpcError error = e as GrpcError;
      ret.msg = error.message.toString();
      if (isShowToast) {
        showToast(ret.msg);
      }
      if (e.code == 16) {
        LocalStorage.remove(LocalStorage.userToken);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Login()),
        );
      }
    } catch (e) {}
  }

  Future<GrpcResponse> updateUser(BuildContext context, String address) async {
    CommonService.userInfo?.ethAddress = address;
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.updateUser(CommonService.userInfo!);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "updateUser", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> listInvitedUser(
      BuildContext context, int start, int limit) async {
    var req = ListInvitedUserRequest();
    req.start = Int64.parseInt(start.toString());
    req.limit = Int64.parseInt(limit.toString());
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.listInvitedUser(req);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, "listInvitedUser", e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> listReward(
      BuildContext context, int start, int limit) async {
    var req = ListRewardRequest();
    req.start = Int64.parseInt(start.toString());
    req.limit = Int64.parseInt(limit.toString());
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.listReward(req);
      ret.code = 1;
      ret.data = resp;
      log("$resp");
    } catch (e) {
      setError(context, "listReward", e, ret);
    }
    return ret;
  }
  Future<GrpcResponse> listRewardWithUser(
      BuildContext context,Int64 dateSec, int start, int limit) async {
    var req = ListRewardWithUserRequest();
    req.dateSec = dateSec;
    req.start = Int64.parseInt(start.toString());
    req.limit = Int64.parseInt(limit.toString());
    log("$req");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.listRewardWithUser(req);
      ret.code = 1;
      ret.data = resp;
      log("$resp");
    } catch (e) {
      setError(context, "listReward", e, ret);
    }
    return ret;
  }
}
