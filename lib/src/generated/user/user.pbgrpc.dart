//
//  Generated code. Do not modify.
//  source: user/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'user.pb.dart' as $0;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$signUp = $grpc.ClientMethod<$0.SignUpRequest, $0.SignUpResponse>(
      '/user.UserService/SignUp',
      ($0.SignUpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignUpResponse.fromBuffer(value));
  static final _$verifyCode = $grpc.ClientMethod<$0.VerifyCodeRequest, $0.VerifyCodeResponse>(
      '/user.UserService/VerifyCode',
      ($0.VerifyCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.VerifyCodeResponse.fromBuffer(value));
  static final _$signIn = $grpc.ClientMethod<$0.SignInRequest, $0.SignInResponse>(
      '/user.UserService/SignIn',
      ($0.SignInRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignInResponse.fromBuffer(value));
  static final _$kyc = $grpc.ClientMethod<$0.UserInfo, $0.UserInfo>(
      '/user.UserService/Kyc',
      ($0.UserInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfo.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$0.UserInfo, $0.UserInfo>(
      '/user.UserService/UpdateUser',
      ($0.UserInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserInfo.fromBuffer(value));
  static final _$upload = $grpc.ClientMethod<$0.UploadRequest, $0.UploadResponse>(
      '/user.UserService/Upload',
      ($0.UploadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UploadResponse.fromBuffer(value));
  static final _$applyCard = $grpc.ClientMethod<$0.ApplyCardRequest, $0.ApplyCardResponse>(
      '/user.UserService/ApplyCard',
      ($0.ApplyCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ApplyCardResponse.fromBuffer(value));
  static final _$getUserInfo = $grpc.ClientMethod<$0.GetUserInfoRequest, $0.GetUserInfoResponse>(
      '/user.UserService/GetUserInfo',
      ($0.GetUserInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetUserInfoResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.SignUpResponse> signUp($0.SignUpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyCodeResponse> verifyCode($0.VerifyCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignInResponse> signIn($0.SignInRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfo> kyc($0.UserInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$kyc, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserInfo> updateUser($0.UserInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.UploadResponse> upload($0.UploadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApplyCardResponse> applyCard($0.ApplyCardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyCard, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserInfoResponse> getUserInfo($0.GetUserInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserInfo, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignUpRequest, $0.SignUpResponse>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignUpRequest.fromBuffer(value),
        ($0.SignUpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyCodeRequest, $0.VerifyCodeResponse>(
        'VerifyCode',
        verifyCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyCodeRequest.fromBuffer(value),
        ($0.VerifyCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfo, $0.UserInfo>(
        'Kyc',
        kyc_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfo.fromBuffer(value),
        ($0.UserInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserInfo, $0.UserInfo>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserInfo.fromBuffer(value),
        ($0.UserInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UploadRequest, $0.UploadResponse>(
        'Upload',
        upload_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UploadRequest.fromBuffer(value),
        ($0.UploadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApplyCardRequest, $0.ApplyCardResponse>(
        'ApplyCard',
        applyCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApplyCardRequest.fromBuffer(value),
        ($0.ApplyCardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserInfoRequest, $0.GetUserInfoResponse>(
        'GetUserInfo',
        getUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserInfoRequest.fromBuffer(value),
        ($0.GetUserInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignUpResponse> signUp_Pre($grpc.ServiceCall call, $async.Future<$0.SignUpRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$0.VerifyCodeResponse> verifyCode_Pre($grpc.ServiceCall call, $async.Future<$0.VerifyCodeRequest> request) async {
    return verifyCode(call, await request);
  }

  $async.Future<$0.SignInResponse> signIn_Pre($grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.UserInfo> kyc_Pre($grpc.ServiceCall call, $async.Future<$0.UserInfo> request) async {
    return kyc(call, await request);
  }

  $async.Future<$0.UserInfo> updateUser_Pre($grpc.ServiceCall call, $async.Future<$0.UserInfo> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$0.UploadResponse> upload_Pre($grpc.ServiceCall call, $async.Future<$0.UploadRequest> request) async {
    return upload(call, await request);
  }

  $async.Future<$0.ApplyCardResponse> applyCard_Pre($grpc.ServiceCall call, $async.Future<$0.ApplyCardRequest> request) async {
    return applyCard(call, await request);
  }

  $async.Future<$0.GetUserInfoResponse> getUserInfo_Pre($grpc.ServiceCall call, $async.Future<$0.GetUserInfoRequest> request) async {
    return getUserInfo(call, await request);
  }

  $async.Future<$0.SignUpResponse> signUp($grpc.ServiceCall call, $0.SignUpRequest request);
  $async.Future<$0.VerifyCodeResponse> verifyCode($grpc.ServiceCall call, $0.VerifyCodeRequest request);
  $async.Future<$0.SignInResponse> signIn($grpc.ServiceCall call, $0.SignInRequest request);
  $async.Future<$0.UserInfo> kyc($grpc.ServiceCall call, $0.UserInfo request);
  $async.Future<$0.UserInfo> updateUser($grpc.ServiceCall call, $0.UserInfo request);
  $async.Future<$0.UploadResponse> upload($grpc.ServiceCall call, $0.UploadRequest request);
  $async.Future<$0.ApplyCardResponse> applyCard($grpc.ServiceCall call, $0.ApplyCardRequest request);
  $async.Future<$0.GetUserInfoResponse> getUserInfo($grpc.ServiceCall call, $0.GetUserInfoRequest request);
}
