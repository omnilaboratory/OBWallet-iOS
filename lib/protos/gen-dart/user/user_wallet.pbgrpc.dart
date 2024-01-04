//
//  Generated code. Do not modify.
//  source: user/user_wallet.proto
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

import 'user_wallet.pb.dart' as $3;

export 'user_wallet.pb.dart';

@$pb.GrpcServiceName('user.uwallet')
class uwalletClient extends $grpc.Client {
  static final _$getTokenBalalance = $grpc.ClientMethod<$3.GetTokenBalalanceRequest, $3.GetTokenBalalanceResponse>(
      '/user.uwallet/GetTokenBalalance',
      ($3.GetTokenBalalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetTokenBalalanceResponse.fromBuffer(value));
  static final _$transferToken = $grpc.ClientMethod<$3.TransferTokenRequest, $3.TransferTokenResponse>(
      '/user.uwallet/TransferToken',
      ($3.TransferTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.TransferTokenResponse.fromBuffer(value));

  uwalletClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetTokenBalalanceResponse> getTokenBalalance($3.GetTokenBalalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTokenBalalance, request, options: options);
  }

  $grpc.ResponseFuture<$3.TransferTokenResponse> transferToken($3.TransferTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$transferToken, request, options: options);
  }
}

@$pb.GrpcServiceName('user.uwallet')
abstract class uwalletServiceBase extends $grpc.Service {
  $core.String get $name => 'user.uwallet';

  uwalletServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetTokenBalalanceRequest, $3.GetTokenBalalanceResponse>(
        'GetTokenBalalance',
        getTokenBalalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetTokenBalalanceRequest.fromBuffer(value),
        ($3.GetTokenBalalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.TransferTokenRequest, $3.TransferTokenResponse>(
        'TransferToken',
        transferToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.TransferTokenRequest.fromBuffer(value),
        ($3.TransferTokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetTokenBalalanceResponse> getTokenBalalance_Pre($grpc.ServiceCall call, $async.Future<$3.GetTokenBalalanceRequest> request) async {
    return getTokenBalalance(call, await request);
  }

  $async.Future<$3.TransferTokenResponse> transferToken_Pre($grpc.ServiceCall call, $async.Future<$3.TransferTokenRequest> request) async {
    return transferToken(call, await request);
  }

  $async.Future<$3.GetTokenBalalanceResponse> getTokenBalalance($grpc.ServiceCall call, $3.GetTokenBalalanceRequest request);
  $async.Future<$3.TransferTokenResponse> transferToken($grpc.ServiceCall call, $3.TransferTokenRequest request);
}
