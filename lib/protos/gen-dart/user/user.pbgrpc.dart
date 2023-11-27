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

import 'user.pb.dart' as $2;

export 'user.pb.dart';

@$pb.GrpcServiceName('user.UserService')
class UserServiceClient extends $grpc.Client {
  static final _$signUp = $grpc.ClientMethod<$2.SignUpRequest, $2.SignUpResponse>(
      '/user.UserService/SignUp',
      ($2.SignUpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SignUpResponse.fromBuffer(value));
  static final _$verifyCode = $grpc.ClientMethod<$2.VerifyCodeRequest, $2.VerifyCodeResponse>(
      '/user.UserService/VerifyCode',
      ($2.VerifyCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.VerifyCodeResponse.fromBuffer(value));
  static final _$verifyImage = $grpc.ClientMethod<$2.VerifyImageRequest, $2.VerifyImageResponse>(
      '/user.UserService/VerifyImage',
      ($2.VerifyImageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.VerifyImageResponse.fromBuffer(value));
  static final _$signIn = $grpc.ClientMethod<$2.SignInRequest, $2.SignInResponse>(
      '/user.UserService/SignIn',
      ($2.SignInRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SignInResponse.fromBuffer(value));
  static final _$updatePwd = $grpc.ClientMethod<$2.UpdatePwdRequest, $2.UpdatePwdResponse>(
      '/user.UserService/UpdatePwd',
      ($2.UpdatePwdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdatePwdResponse.fromBuffer(value));
  static final _$verifyPwd = $grpc.ClientMethod<$2.SignInRequest, $2.SignInResponse>(
      '/user.UserService/VerifyPwd',
      ($2.SignInRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.SignInResponse.fromBuffer(value));
  static final _$forgetPwd = $grpc.ClientMethod<$2.ForgetPwdRequest, $2.ForgetPwdResponse>(
      '/user.UserService/ForgetPwd',
      ($2.ForgetPwdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ForgetPwdResponse.fromBuffer(value));
  static final _$kyc = $grpc.ClientMethod<$2.UserInfo, $2.UserInfo>(
      '/user.UserService/Kyc',
      ($2.UserInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserInfo.fromBuffer(value));
  static final _$updateUser = $grpc.ClientMethod<$2.UserInfo, $2.UserInfo>(
      '/user.UserService/UpdateUser',
      ($2.UserInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UserInfo.fromBuffer(value));
  static final _$upload = $grpc.ClientMethod<$2.UploadRequest, $2.UploadResponse>(
      '/user.UserService/Upload',
      ($2.UploadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UploadResponse.fromBuffer(value));
  static final _$getUserInfo = $grpc.ClientMethod<$2.GetUserInfoRequest, $2.GetUserInfoResponse>(
      '/user.UserService/GetUserInfo',
      ($2.GetUserInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetUserInfoResponse.fromBuffer(value));
  static final _$listInvitedUser = $grpc.ClientMethod<$2.ListInvitedUserRequest, $2.ListInvitedUserResponse>(
      '/user.UserService/ListInvitedUser',
      ($2.ListInvitedUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListInvitedUserResponse.fromBuffer(value));
  static final _$listReward = $grpc.ClientMethod<$2.ListRewardRequest, $2.ListRewardResponse>(
      '/user.UserService/ListReward',
      ($2.ListRewardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ListRewardResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.SignUpResponse> signUp($2.SignUpRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signUp, request, options: options);
  }

  $grpc.ResponseFuture<$2.VerifyCodeResponse> verifyCode($2.VerifyCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyCode, request, options: options);
  }

  $grpc.ResponseFuture<$2.VerifyImageResponse> verifyImage($2.VerifyImageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyImage, request, options: options);
  }

  $grpc.ResponseFuture<$2.SignInResponse> signIn($2.SignInRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePwdResponse> updatePwd($2.UpdatePwdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePwd, request, options: options);
  }

  $grpc.ResponseFuture<$2.SignInResponse> verifyPwd($2.SignInRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyPwd, request, options: options);
  }

  $grpc.ResponseFuture<$2.ForgetPwdResponse> forgetPwd($2.ForgetPwdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgetPwd, request, options: options);
  }

  $grpc.ResponseFuture<$2.UserInfo> kyc($2.UserInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$kyc, request, options: options);
  }

  $grpc.ResponseFuture<$2.UserInfo> updateUser($2.UserInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.UploadResponse> upload($2.UploadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$upload, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetUserInfoResponse> getUserInfo($2.GetUserInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserInfo, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListInvitedUserResponse> listInvitedUser($2.ListInvitedUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInvitedUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListRewardResponse> listReward($2.ListRewardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listReward, request, options: options);
  }
}

@$pb.GrpcServiceName('user.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.SignUpRequest, $2.SignUpResponse>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SignUpRequest.fromBuffer(value),
        ($2.SignUpResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VerifyCodeRequest, $2.VerifyCodeResponse>(
        'VerifyCode',
        verifyCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VerifyCodeRequest.fromBuffer(value),
        ($2.VerifyCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.VerifyImageRequest, $2.VerifyImageResponse>(
        'VerifyImage',
        verifyImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.VerifyImageRequest.fromBuffer(value),
        ($2.VerifyImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SignInRequest, $2.SignInResponse>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SignInRequest.fromBuffer(value),
        ($2.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePwdRequest, $2.UpdatePwdResponse>(
        'UpdatePwd',
        updatePwd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdatePwdRequest.fromBuffer(value),
        ($2.UpdatePwdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SignInRequest, $2.SignInResponse>(
        'VerifyPwd',
        verifyPwd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SignInRequest.fromBuffer(value),
        ($2.SignInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ForgetPwdRequest, $2.ForgetPwdResponse>(
        'ForgetPwd',
        forgetPwd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ForgetPwdRequest.fromBuffer(value),
        ($2.ForgetPwdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserInfo, $2.UserInfo>(
        'Kyc',
        kyc_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserInfo.fromBuffer(value),
        ($2.UserInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UserInfo, $2.UserInfo>(
        'UpdateUser',
        updateUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UserInfo.fromBuffer(value),
        ($2.UserInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UploadRequest, $2.UploadResponse>(
        'Upload',
        upload_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UploadRequest.fromBuffer(value),
        ($2.UploadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetUserInfoRequest, $2.GetUserInfoResponse>(
        'GetUserInfo',
        getUserInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetUserInfoRequest.fromBuffer(value),
        ($2.GetUserInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListInvitedUserRequest, $2.ListInvitedUserResponse>(
        'ListInvitedUser',
        listInvitedUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListInvitedUserRequest.fromBuffer(value),
        ($2.ListInvitedUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListRewardRequest, $2.ListRewardResponse>(
        'ListReward',
        listReward_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListRewardRequest.fromBuffer(value),
        ($2.ListRewardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.SignUpResponse> signUp_Pre($grpc.ServiceCall call, $async.Future<$2.SignUpRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$2.VerifyCodeResponse> verifyCode_Pre($grpc.ServiceCall call, $async.Future<$2.VerifyCodeRequest> request) async {
    return verifyCode(call, await request);
  }

  $async.Future<$2.VerifyImageResponse> verifyImage_Pre($grpc.ServiceCall call, $async.Future<$2.VerifyImageRequest> request) async {
    return verifyImage(call, await request);
  }

  $async.Future<$2.SignInResponse> signIn_Pre($grpc.ServiceCall call, $async.Future<$2.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$2.UpdatePwdResponse> updatePwd_Pre($grpc.ServiceCall call, $async.Future<$2.UpdatePwdRequest> request) async {
    return updatePwd(call, await request);
  }

  $async.Future<$2.SignInResponse> verifyPwd_Pre($grpc.ServiceCall call, $async.Future<$2.SignInRequest> request) async {
    return verifyPwd(call, await request);
  }

  $async.Future<$2.ForgetPwdResponse> forgetPwd_Pre($grpc.ServiceCall call, $async.Future<$2.ForgetPwdRequest> request) async {
    return forgetPwd(call, await request);
  }

  $async.Future<$2.UserInfo> kyc_Pre($grpc.ServiceCall call, $async.Future<$2.UserInfo> request) async {
    return kyc(call, await request);
  }

  $async.Future<$2.UserInfo> updateUser_Pre($grpc.ServiceCall call, $async.Future<$2.UserInfo> request) async {
    return updateUser(call, await request);
  }

  $async.Future<$2.UploadResponse> upload_Pre($grpc.ServiceCall call, $async.Future<$2.UploadRequest> request) async {
    return upload(call, await request);
  }

  $async.Future<$2.GetUserInfoResponse> getUserInfo_Pre($grpc.ServiceCall call, $async.Future<$2.GetUserInfoRequest> request) async {
    return getUserInfo(call, await request);
  }

  $async.Future<$2.ListInvitedUserResponse> listInvitedUser_Pre($grpc.ServiceCall call, $async.Future<$2.ListInvitedUserRequest> request) async {
    return listInvitedUser(call, await request);
  }

  $async.Future<$2.ListRewardResponse> listReward_Pre($grpc.ServiceCall call, $async.Future<$2.ListRewardRequest> request) async {
    return listReward(call, await request);
  }

  $async.Future<$2.SignUpResponse> signUp($grpc.ServiceCall call, $2.SignUpRequest request);
  $async.Future<$2.VerifyCodeResponse> verifyCode($grpc.ServiceCall call, $2.VerifyCodeRequest request);
  $async.Future<$2.VerifyImageResponse> verifyImage($grpc.ServiceCall call, $2.VerifyImageRequest request);
  $async.Future<$2.SignInResponse> signIn($grpc.ServiceCall call, $2.SignInRequest request);
  $async.Future<$2.UpdatePwdResponse> updatePwd($grpc.ServiceCall call, $2.UpdatePwdRequest request);
  $async.Future<$2.SignInResponse> verifyPwd($grpc.ServiceCall call, $2.SignInRequest request);
  $async.Future<$2.ForgetPwdResponse> forgetPwd($grpc.ServiceCall call, $2.ForgetPwdRequest request);
  $async.Future<$2.UserInfo> kyc($grpc.ServiceCall call, $2.UserInfo request);
  $async.Future<$2.UserInfo> updateUser($grpc.ServiceCall call, $2.UserInfo request);
  $async.Future<$2.UploadResponse> upload($grpc.ServiceCall call, $2.UploadRequest request);
  $async.Future<$2.GetUserInfoResponse> getUserInfo($grpc.ServiceCall call, $2.GetUserInfoRequest request);
  $async.Future<$2.ListInvitedUserResponse> listInvitedUser($grpc.ServiceCall call, $2.ListInvitedUserRequest request);
  $async.Future<$2.ListRewardResponse> listReward($grpc.ServiceCall call, $2.ListRewardRequest request);
}
