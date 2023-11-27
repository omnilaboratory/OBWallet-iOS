//
//  Generated code. Do not modify.
//  source: eth/ethservice.proto
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

import '../user/account.pb.dart' as $0;
import 'ethservice.pb.dart' as $1;

export 'ethservice.pb.dart';

@$pb.GrpcServiceName('lnrpc.eth')
class ethClient extends $grpc.Client {
  static final _$eTHGetAddress = $grpc.ClientMethod<$1.ETHGetAddressRequest, $1.ETHGetAddressResponse>(
      '/lnrpc.eth/ETHGetAddress',
      ($1.ETHGetAddressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ETHGetAddressResponse.fromBuffer(value));
  static final _$eTHGetAppConf = $grpc.ClientMethod<$1.ETHGetAppConfRequest, $0.AppConfig>(
      '/lnrpc.eth/ETHGetAppConf',
      ($1.ETHGetAppConfRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AppConfig.fromBuffer(value));
  static final _$updateSwapDiscount = $grpc.ClientMethod<$0.AppConfig, $1.UpdateSwapDiscountResponse>(
      '/lnrpc.eth/UpdateSwapDiscount',
      ($0.AppConfig value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UpdateSwapDiscountResponse.fromBuffer(value));
  static final _$ethGetTokenBalalance = $grpc.ClientMethod<$1.EthGetTokenBalalanceRequest, $1.EthGetTokenBalalanceResponse>(
      '/lnrpc.eth/EthGetTokenBalalance',
      ($1.EthGetTokenBalalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EthGetTokenBalalanceResponse.fromBuffer(value));
  static final _$ethGetBalalance = $grpc.ClientMethod<$1.EthGetBalalanceRequest, $1.EthGetBalalanceResponse>(
      '/lnrpc.eth/EthGetBalalance',
      ($1.EthGetBalalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EthGetBalalanceResponse.fromBuffer(value));
  static final _$ethAddToken = $grpc.ClientMethod<$1.EthToken, $1.EthToken>(
      '/lnrpc.eth/EthAddToken',
      ($1.EthToken value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EthToken.fromBuffer(value));
  static final _$ethListHistory = $grpc.ClientMethod<$1.EthListHistoryRequest, $1.EthListHistoryResponse>(
      '/lnrpc.eth/EthListHistory',
      ($1.EthListHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EthListHistoryResponse.fromBuffer(value));
  static final _$ethGetAllToken = $grpc.ClientMethod<$1.EthGetAllTokenRequest, $1.EthGetAllTokenResponse>(
      '/lnrpc.eth/EthGetAllToken',
      ($1.EthGetAllTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EthGetAllTokenResponse.fromBuffer(value));
  static final _$stateTest = $grpc.ClientMethod<$1.StateTestRequest, $1.StateTestResponse>(
      '/lnrpc.eth/StateTest',
      ($1.StateTestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.StateTestResponse.fromBuffer(value));
  static final _$ethTrackTx = $grpc.ClientMethod<$1.EthTrackTxRequest, $1.EthTrackTxResponse>(
      '/lnrpc.eth/EthTrackTx',
      ($1.EthTrackTxRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.EthTrackTxResponse.fromBuffer(value));

  ethClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.ETHGetAddressResponse> eTHGetAddress($1.ETHGetAddressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$eTHGetAddress, request, options: options);
  }

  $grpc.ResponseFuture<$0.AppConfig> eTHGetAppConf($1.ETHGetAppConfRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$eTHGetAppConf, request, options: options);
  }

  $grpc.ResponseFuture<$1.UpdateSwapDiscountResponse> updateSwapDiscount($0.AppConfig request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSwapDiscount, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthGetTokenBalalanceResponse> ethGetTokenBalalance($1.EthGetTokenBalalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethGetTokenBalalance, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthGetBalalanceResponse> ethGetBalalance($1.EthGetBalalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethGetBalalance, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthToken> ethAddToken($1.EthToken request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethAddToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthListHistoryResponse> ethListHistory($1.EthListHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethListHistory, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthGetAllTokenResponse> ethGetAllToken($1.EthGetAllTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethGetAllToken, request, options: options);
  }

  $grpc.ResponseFuture<$1.StateTestResponse> stateTest($1.StateTestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stateTest, request, options: options);
  }

  $grpc.ResponseFuture<$1.EthTrackTxResponse> ethTrackTx($1.EthTrackTxRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethTrackTx, request, options: options);
  }
}

@$pb.GrpcServiceName('lnrpc.eth')
abstract class ethServiceBase extends $grpc.Service {
  $core.String get $name => 'lnrpc.eth';

  ethServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ETHGetAddressRequest, $1.ETHGetAddressResponse>(
        'ETHGetAddress',
        eTHGetAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ETHGetAddressRequest.fromBuffer(value),
        ($1.ETHGetAddressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ETHGetAppConfRequest, $0.AppConfig>(
        'ETHGetAppConf',
        eTHGetAppConf_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ETHGetAppConfRequest.fromBuffer(value),
        ($0.AppConfig value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AppConfig, $1.UpdateSwapDiscountResponse>(
        'UpdateSwapDiscount',
        updateSwapDiscount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AppConfig.fromBuffer(value),
        ($1.UpdateSwapDiscountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EthGetTokenBalalanceRequest, $1.EthGetTokenBalalanceResponse>(
        'EthGetTokenBalalance',
        ethGetTokenBalalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EthGetTokenBalalanceRequest.fromBuffer(value),
        ($1.EthGetTokenBalalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EthGetBalalanceRequest, $1.EthGetBalalanceResponse>(
        'EthGetBalalance',
        ethGetBalalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EthGetBalalanceRequest.fromBuffer(value),
        ($1.EthGetBalalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EthToken, $1.EthToken>(
        'EthAddToken',
        ethAddToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EthToken.fromBuffer(value),
        ($1.EthToken value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EthListHistoryRequest, $1.EthListHistoryResponse>(
        'EthListHistory',
        ethListHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EthListHistoryRequest.fromBuffer(value),
        ($1.EthListHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EthGetAllTokenRequest, $1.EthGetAllTokenResponse>(
        'EthGetAllToken',
        ethGetAllToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EthGetAllTokenRequest.fromBuffer(value),
        ($1.EthGetAllTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StateTestRequest, $1.StateTestResponse>(
        'StateTest',
        stateTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StateTestRequest.fromBuffer(value),
        ($1.StateTestResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.EthTrackTxRequest, $1.EthTrackTxResponse>(
        'EthTrackTx',
        ethTrackTx_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.EthTrackTxRequest.fromBuffer(value),
        ($1.EthTrackTxResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ETHGetAddressResponse> eTHGetAddress_Pre($grpc.ServiceCall call, $async.Future<$1.ETHGetAddressRequest> request) async {
    return eTHGetAddress(call, await request);
  }

  $async.Future<$0.AppConfig> eTHGetAppConf_Pre($grpc.ServiceCall call, $async.Future<$1.ETHGetAppConfRequest> request) async {
    return eTHGetAppConf(call, await request);
  }

  $async.Future<$1.UpdateSwapDiscountResponse> updateSwapDiscount_Pre($grpc.ServiceCall call, $async.Future<$0.AppConfig> request) async {
    return updateSwapDiscount(call, await request);
  }

  $async.Future<$1.EthGetTokenBalalanceResponse> ethGetTokenBalalance_Pre($grpc.ServiceCall call, $async.Future<$1.EthGetTokenBalalanceRequest> request) async {
    return ethGetTokenBalalance(call, await request);
  }

  $async.Future<$1.EthGetBalalanceResponse> ethGetBalalance_Pre($grpc.ServiceCall call, $async.Future<$1.EthGetBalalanceRequest> request) async {
    return ethGetBalalance(call, await request);
  }

  $async.Future<$1.EthToken> ethAddToken_Pre($grpc.ServiceCall call, $async.Future<$1.EthToken> request) async {
    return ethAddToken(call, await request);
  }

  $async.Future<$1.EthListHistoryResponse> ethListHistory_Pre($grpc.ServiceCall call, $async.Future<$1.EthListHistoryRequest> request) async {
    return ethListHistory(call, await request);
  }

  $async.Future<$1.EthGetAllTokenResponse> ethGetAllToken_Pre($grpc.ServiceCall call, $async.Future<$1.EthGetAllTokenRequest> request) async {
    return ethGetAllToken(call, await request);
  }

  $async.Future<$1.StateTestResponse> stateTest_Pre($grpc.ServiceCall call, $async.Future<$1.StateTestRequest> request) async {
    return stateTest(call, await request);
  }

  $async.Future<$1.EthTrackTxResponse> ethTrackTx_Pre($grpc.ServiceCall call, $async.Future<$1.EthTrackTxRequest> request) async {
    return ethTrackTx(call, await request);
  }

  $async.Future<$1.ETHGetAddressResponse> eTHGetAddress($grpc.ServiceCall call, $1.ETHGetAddressRequest request);
  $async.Future<$0.AppConfig> eTHGetAppConf($grpc.ServiceCall call, $1.ETHGetAppConfRequest request);
  $async.Future<$1.UpdateSwapDiscountResponse> updateSwapDiscount($grpc.ServiceCall call, $0.AppConfig request);
  $async.Future<$1.EthGetTokenBalalanceResponse> ethGetTokenBalalance($grpc.ServiceCall call, $1.EthGetTokenBalalanceRequest request);
  $async.Future<$1.EthGetBalalanceResponse> ethGetBalalance($grpc.ServiceCall call, $1.EthGetBalalanceRequest request);
  $async.Future<$1.EthToken> ethAddToken($grpc.ServiceCall call, $1.EthToken request);
  $async.Future<$1.EthListHistoryResponse> ethListHistory($grpc.ServiceCall call, $1.EthListHistoryRequest request);
  $async.Future<$1.EthGetAllTokenResponse> ethGetAllToken($grpc.ServiceCall call, $1.EthGetAllTokenRequest request);
  $async.Future<$1.StateTestResponse> stateTest($grpc.ServiceCall call, $1.StateTestRequest request);
  $async.Future<$1.EthTrackTxResponse> ethTrackTx($grpc.ServiceCall call, $1.EthTrackTxRequest request);
}
