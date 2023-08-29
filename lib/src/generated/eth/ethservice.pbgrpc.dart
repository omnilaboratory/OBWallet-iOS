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

import 'ethservice.pb.dart' as $0;

export 'ethservice.pb.dart';

@$pb.GrpcServiceName('lnrpc.eth')
class ethClient extends $grpc.Client {
  static final _$eTHGetAddress = $grpc.ClientMethod<$0.ETHGetAddressRequest, $0.ETHGetAddressResponse>(
      '/lnrpc.eth/ETHGetAddress',
      ($0.ETHGetAddressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ETHGetAddressResponse.fromBuffer(value));
  static final _$ethGetTokenBalalance = $grpc.ClientMethod<$0.EthGetTokenBalalanceRequest, $0.EthGetTokenBalalanceResponse>(
      '/lnrpc.eth/EthGetTokenBalalance',
      ($0.EthGetTokenBalalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EthGetTokenBalalanceResponse.fromBuffer(value));
  static final _$ethGetBalalance = $grpc.ClientMethod<$0.EthGetBalalanceRequest, $0.EthGetBalalanceResponse>(
      '/lnrpc.eth/EthGetBalalance',
      ($0.EthGetBalalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EthGetBalalanceResponse.fromBuffer(value));
  static final _$ethAddToken = $grpc.ClientMethod<$0.EthToken, $0.EthToken>(
      '/lnrpc.eth/EthAddToken',
      ($0.EthToken value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EthToken.fromBuffer(value));
  static final _$ethListHistory = $grpc.ClientMethod<$0.EthListHistoryRequest, $0.EthListHistoryResponse>(
      '/lnrpc.eth/EthListHistory',
      ($0.EthListHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EthListHistoryResponse.fromBuffer(value));
  static final _$ethGetAllToken = $grpc.ClientMethod<$0.EthGetAllTokenRequest, $0.EthGetAllTokenResponse>(
      '/lnrpc.eth/EthGetAllToken',
      ($0.EthGetAllTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EthGetAllTokenResponse.fromBuffer(value));
  static final _$stateTest = $grpc.ClientMethod<$0.StateTestRequest, $0.StateTestResponse>(
      '/lnrpc.eth/StateTest',
      ($0.StateTestRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StateTestResponse.fromBuffer(value));
  static final _$ethTrackTx = $grpc.ClientMethod<$0.EthTrackTxRequest, $0.EthTrackTxResponse>(
      '/lnrpc.eth/EthTrackTx',
      ($0.EthTrackTxRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EthTrackTxResponse.fromBuffer(value));

  ethClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ETHGetAddressResponse> eTHGetAddress($0.ETHGetAddressRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$eTHGetAddress, request, options: options);
  }

  $grpc.ResponseFuture<$0.EthGetTokenBalalanceResponse> ethGetTokenBalalance($0.EthGetTokenBalalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethGetTokenBalalance, request, options: options);
  }

  $grpc.ResponseFuture<$0.EthGetBalalanceResponse> ethGetBalalance($0.EthGetBalalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethGetBalalance, request, options: options);
  }

  $grpc.ResponseFuture<$0.EthToken> ethAddToken($0.EthToken request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethAddToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.EthListHistoryResponse> ethListHistory($0.EthListHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethListHistory, request, options: options);
  }

  $grpc.ResponseFuture<$0.EthGetAllTokenResponse> ethGetAllToken($0.EthGetAllTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethGetAllToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.StateTestResponse> stateTest($0.StateTestRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$stateTest, request, options: options);
  }

  $grpc.ResponseFuture<$0.EthTrackTxResponse> ethTrackTx($0.EthTrackTxRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$ethTrackTx, request, options: options);
  }
}

@$pb.GrpcServiceName('lnrpc.eth')
abstract class ethServiceBase extends $grpc.Service {
  $core.String get $name => 'lnrpc.eth';

  ethServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ETHGetAddressRequest, $0.ETHGetAddressResponse>(
        'ETHGetAddress',
        eTHGetAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ETHGetAddressRequest.fromBuffer(value),
        ($0.ETHGetAddressResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EthGetTokenBalalanceRequest, $0.EthGetTokenBalalanceResponse>(
        'EthGetTokenBalalance',
        ethGetTokenBalalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EthGetTokenBalalanceRequest.fromBuffer(value),
        ($0.EthGetTokenBalalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EthGetBalalanceRequest, $0.EthGetBalalanceResponse>(
        'EthGetBalalance',
        ethGetBalalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EthGetBalalanceRequest.fromBuffer(value),
        ($0.EthGetBalalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EthToken, $0.EthToken>(
        'EthAddToken',
        ethAddToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EthToken.fromBuffer(value),
        ($0.EthToken value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EthListHistoryRequest, $0.EthListHistoryResponse>(
        'EthListHistory',
        ethListHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EthListHistoryRequest.fromBuffer(value),
        ($0.EthListHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EthGetAllTokenRequest, $0.EthGetAllTokenResponse>(
        'EthGetAllToken',
        ethGetAllToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EthGetAllTokenRequest.fromBuffer(value),
        ($0.EthGetAllTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StateTestRequest, $0.StateTestResponse>(
        'StateTest',
        stateTest_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StateTestRequest.fromBuffer(value),
        ($0.StateTestResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EthTrackTxRequest, $0.EthTrackTxResponse>(
        'EthTrackTx',
        ethTrackTx_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EthTrackTxRequest.fromBuffer(value),
        ($0.EthTrackTxResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ETHGetAddressResponse> eTHGetAddress_Pre($grpc.ServiceCall call, $async.Future<$0.ETHGetAddressRequest> request) async {
    return eTHGetAddress(call, await request);
  }

  $async.Future<$0.EthGetTokenBalalanceResponse> ethGetTokenBalalance_Pre($grpc.ServiceCall call, $async.Future<$0.EthGetTokenBalalanceRequest> request) async {
    return ethGetTokenBalalance(call, await request);
  }

  $async.Future<$0.EthGetBalalanceResponse> ethGetBalalance_Pre($grpc.ServiceCall call, $async.Future<$0.EthGetBalalanceRequest> request) async {
    return ethGetBalalance(call, await request);
  }

  $async.Future<$0.EthToken> ethAddToken_Pre($grpc.ServiceCall call, $async.Future<$0.EthToken> request) async {
    return ethAddToken(call, await request);
  }

  $async.Future<$0.EthListHistoryResponse> ethListHistory_Pre($grpc.ServiceCall call, $async.Future<$0.EthListHistoryRequest> request) async {
    return ethListHistory(call, await request);
  }

  $async.Future<$0.EthGetAllTokenResponse> ethGetAllToken_Pre($grpc.ServiceCall call, $async.Future<$0.EthGetAllTokenRequest> request) async {
    return ethGetAllToken(call, await request);
  }

  $async.Future<$0.StateTestResponse> stateTest_Pre($grpc.ServiceCall call, $async.Future<$0.StateTestRequest> request) async {
    return stateTest(call, await request);
  }

  $async.Future<$0.EthTrackTxResponse> ethTrackTx_Pre($grpc.ServiceCall call, $async.Future<$0.EthTrackTxRequest> request) async {
    return ethTrackTx(call, await request);
  }

  $async.Future<$0.ETHGetAddressResponse> eTHGetAddress($grpc.ServiceCall call, $0.ETHGetAddressRequest request);
  $async.Future<$0.EthGetTokenBalalanceResponse> ethGetTokenBalalance($grpc.ServiceCall call, $0.EthGetTokenBalalanceRequest request);
  $async.Future<$0.EthGetBalalanceResponse> ethGetBalalance($grpc.ServiceCall call, $0.EthGetBalalanceRequest request);
  $async.Future<$0.EthToken> ethAddToken($grpc.ServiceCall call, $0.EthToken request);
  $async.Future<$0.EthListHistoryResponse> ethListHistory($grpc.ServiceCall call, $0.EthListHistoryRequest request);
  $async.Future<$0.EthGetAllTokenResponse> ethGetAllToken($grpc.ServiceCall call, $0.EthGetAllTokenRequest request);
  $async.Future<$0.StateTestResponse> stateTest($grpc.ServiceCall call, $0.StateTestRequest request);
  $async.Future<$0.EthTrackTxResponse> ethTrackTx($grpc.ServiceCall call, $0.EthTrackTxRequest request);
}
