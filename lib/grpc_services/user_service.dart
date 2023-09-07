import 'dart:developer';
import 'dart:io';

import 'package:awallet/bean/grpc_response.dart';
import 'package:awallet/component/common.dart';
import 'package:awallet/grpc_services/common_service.dart';
import 'package:awallet/logins/login.dart';
import 'package:awallet/src/generated/user/user.pbgrpc.dart';
import 'package:awallet/tools/global_params.dart';
import 'package:awallet/tools/local_storage.dart';
import 'package:awallet/utils.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
      setError(context, e, ret);
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
      CommonService.token = resp!.token;
      LocalStorage.save("userToken", resp.token);
      userServiceClient = null;
    } catch (e) {
      setError(context, e, ret);
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
      setError(context, e, ret);
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
      CommonService.token = resp!.token;
      userServiceClient = null;
    } catch (e) {
      setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> getUserInfo(
    BuildContext context,
  ) async {
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.getUserInfo(GetUserInfoRequest());
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, e, ret);
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
      setError(context, e, ret);
    }
    return ret;
  }

  Future<GrpcResponse> kyc(
      BuildContext context, String address1, String address2) async {
    var request = CommonService.userInfo;
    request?.address1 = address1;
    request?.address2 = address2;
    // request.id = Int64(9);
    // request.userName = 'hahaha';
    // request.updatedAt = Int64(1692602216);
    // request.createdAt = Int64(1692602216);
    // request.idNum = '130429198903091012';
    // request.firstName = '哈';
    // request.lastName = '哈哈';
    // request.email = 'healergyl@126.com';
    // request.mobile = '15116920267';
    // request.dob = '1996-06-06';
    // request.address1 = 'address1';
    // request.address2 = 'address2';
    // request.city = 'beijing';
    // request.state = 'pending';
    // request.postCode = '1';
    // request.countryCode = CountryCode.CN;
    log("$request");
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.kyc(request!);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, e, ret);
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
      setError(context, e, ret);
    }
    return ret;
  }

  void setError(BuildContext context, Object e, GrpcResponse<dynamic> ret) {
    log("$e");
    GrpcError error = e as GrpcError;
    ret.msg = error.message.toString();
    showToast(ret.msg);
    if (e.code == 16) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    }
  }

  Future<GrpcResponse> updateUser(BuildContext context, String address) async {
    CommonService.userInfo?.ethAddress = address;
    var ret = GrpcResponse();
    try {
      var resp = await userServiceClient?.updateUser(CommonService.userInfo!);
      ret.code = 1;
      ret.data = resp;
    } catch (e) {
      setError(context, e, ret);
    }
    return ret;
  }
}
