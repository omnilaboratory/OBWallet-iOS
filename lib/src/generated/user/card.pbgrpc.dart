//
//  Generated code. Do not modify.
//  source: user/card.proto
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

import 'card.pb.dart' as $1;

export 'card.pb.dart';

@$pb.GrpcServiceName('user.CardService')
class CardServiceClient extends $grpc.Client {
  static final _$applyCard = $grpc.ClientMethod<$1.ApplyCardRequest, $1.ApplyCardResponse>(
      '/user.CardService/ApplyCard',
      ($1.ApplyCardRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ApplyCardResponse.fromBuffer(value));
  static final _$cardHistory = $grpc.ClientMethod<$1.CardHistoryRequest, $1.CardHistoryResponse>(
      '/user.CardService/CardHistory',
      ($1.CardHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardHistoryResponse.fromBuffer(value));
  static final _$cardDetail = $grpc.ClientMethod<$1.CardDetailRequest, $1.CardDetailResponse>(
      '/user.CardService/CardDetail',
      ($1.CardDetailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardDetailResponse.fromBuffer(value));
  static final _$cardWithdraw = $grpc.ClientMethod<$1.CardWithdrawRequest, $1.CardWithdrawResponse>(
      '/user.CardService/CardWithdraw',
      ($1.CardWithdrawRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardWithdrawResponse.fromBuffer(value));
  static final _$cardRecharge = $grpc.ClientMethod<$1.CardRechargeRequest, $1.CardRechargeResponse>(
      '/user.CardService/CardRecharge',
      ($1.CardRechargeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardRechargeResponse.fromBuffer(value));

  CardServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.ApplyCardResponse> applyCard($1.ApplyCardRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$applyCard, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardHistoryResponse> cardHistory($1.CardHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardHistory, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardDetailResponse> cardDetail($1.CardDetailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardDetail, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardWithdrawResponse> cardWithdraw($1.CardWithdrawRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardWithdraw, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardRechargeResponse> cardRecharge($1.CardRechargeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardRecharge, request, options: options);
  }
}

@$pb.GrpcServiceName('user.CardService')
abstract class CardServiceBase extends $grpc.Service {
  $core.String get $name => 'user.CardService';

  CardServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ApplyCardRequest, $1.ApplyCardResponse>(
        'ApplyCard',
        applyCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ApplyCardRequest.fromBuffer(value),
        ($1.ApplyCardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardHistoryRequest, $1.CardHistoryResponse>(
        'CardHistory',
        cardHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardHistoryRequest.fromBuffer(value),
        ($1.CardHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardDetailRequest, $1.CardDetailResponse>(
        'CardDetail',
        cardDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardDetailRequest.fromBuffer(value),
        ($1.CardDetailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardWithdrawRequest, $1.CardWithdrawResponse>(
        'CardWithdraw',
        cardWithdraw_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardWithdrawRequest.fromBuffer(value),
        ($1.CardWithdrawResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardRechargeRequest, $1.CardRechargeResponse>(
        'CardRecharge',
        cardRecharge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardRechargeRequest.fromBuffer(value),
        ($1.CardRechargeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ApplyCardResponse> applyCard_Pre($grpc.ServiceCall call, $async.Future<$1.ApplyCardRequest> request) async {
    return applyCard(call, await request);
  }

  $async.Future<$1.CardHistoryResponse> cardHistory_Pre($grpc.ServiceCall call, $async.Future<$1.CardHistoryRequest> request) async {
    return cardHistory(call, await request);
  }

  $async.Future<$1.CardDetailResponse> cardDetail_Pre($grpc.ServiceCall call, $async.Future<$1.CardDetailRequest> request) async {
    return cardDetail(call, await request);
  }

  $async.Future<$1.CardWithdrawResponse> cardWithdraw_Pre($grpc.ServiceCall call, $async.Future<$1.CardWithdrawRequest> request) async {
    return cardWithdraw(call, await request);
  }

  $async.Future<$1.CardRechargeResponse> cardRecharge_Pre($grpc.ServiceCall call, $async.Future<$1.CardRechargeRequest> request) async {
    return cardRecharge(call, await request);
  }

  $async.Future<$1.ApplyCardResponse> applyCard($grpc.ServiceCall call, $1.ApplyCardRequest request);
  $async.Future<$1.CardHistoryResponse> cardHistory($grpc.ServiceCall call, $1.CardHistoryRequest request);
  $async.Future<$1.CardDetailResponse> cardDetail($grpc.ServiceCall call, $1.CardDetailRequest request);
  $async.Future<$1.CardWithdrawResponse> cardWithdraw($grpc.ServiceCall call, $1.CardWithdrawRequest request);
  $async.Future<$1.CardRechargeResponse> cardRecharge($grpc.ServiceCall call, $1.CardRechargeRequest request);
}
