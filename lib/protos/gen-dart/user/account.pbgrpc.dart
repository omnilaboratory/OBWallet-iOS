//
//  Generated code. Do not modify.
//  source: user/account.proto
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

import 'account.pb.dart' as $0;

export 'account.pb.dart';

@$pb.GrpcServiceName('user.account')
class accountClient extends $grpc.Client {
  static final _$getAccountInfo = $grpc.ClientMethod<$0.GetAccountInfoRequest, $0.AccountInfo>(
      '/user.account/GetAccountInfo',
      ($0.GetAccountInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccountInfo.fromBuffer(value));
  static final _$getAccountHistory = $grpc.ClientMethod<$0.GetAccountHistoryRequest, $0.GetAccountHistoryResponse>(
      '/user.account/GetAccountHistory',
      ($0.GetAccountHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetAccountHistoryResponse.fromBuffer(value));
  static final _$getUserSwapPrice = $grpc.ClientMethod<$0.GetUserSwapPriceRequest, $0.GetUserSwapPriceResponse>(
      '/user.account/GetUserSwapPrice',
      ($0.GetUserSwapPriceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetUserSwapPriceResponse.fromBuffer(value));
  static final _$sellCoin = $grpc.ClientMethod<$0.SellCoinRequest, $0.SellCoinResponse>(
      '/user.account/SellCoin',
      ($0.SellCoinRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SellCoinResponse.fromBuffer(value));
  static final _$buyCoin = $grpc.ClientMethod<$0.BuyCoinRequest, $0.BuyCoinResponse>(
      '/user.account/BuyCoin',
      ($0.BuyCoinRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BuyCoinResponse.fromBuffer(value));
  static final _$sellNft = $grpc.ClientMethod<$0.SellNftRequest, $0.SellNftResponse>(
      '/user.account/SellNft',
      ($0.SellNftRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SellNftResponse.fromBuffer(value));
  static final _$getNftBlance = $grpc.ClientMethod<$0.GetNftBlanceRequest, $0.GetNftBlanceResponse>(
      '/user.account/GetNftBlance',
      ($0.GetNftBlanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetNftBlanceResponse.fromBuffer(value));
  static final _$getNftToken = $grpc.ClientMethod<$0.GetNftTokenRequest, $0.NftToken>(
      '/user.account/GetNftToken',
      ($0.GetNftTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.NftToken.fromBuffer(value));
  static final _$listNftTokenEvents = $grpc.ClientMethod<$0.ListNftTokenEventsRequest, $0.ListNftTokenEventsResponse>(
      '/user.account/ListNftTokenEvents',
      ($0.ListNftTokenEventsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListNftTokenEventsResponse.fromBuffer(value));
  static final _$getDcPayUrl = $grpc.ClientMethod<$0.GetDcPayUrlRequest, $0.GetDcPayUrlResponse>(
      '/user.account/GetDcPayUrl',
      ($0.GetDcPayUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetDcPayUrlResponse.fromBuffer(value));
  static final _$getSwapTxList = $grpc.ClientMethod<$0.GetSwapTxListRequest, $0.GetSwapTxListResponse>(
      '/user.account/GetSwapTxList',
      ($0.GetSwapTxListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetSwapTxListResponse.fromBuffer(value));
  static final _$getTrackedTxList = $grpc.ClientMethod<$0.GetSwapTxListRequest, $0.GetTrackedTxListResponse>(
      '/user.account/GetTrackedTxList',
      ($0.GetSwapTxListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTrackedTxListResponse.fromBuffer(value));
  static final _$getCoinPrice = $grpc.ClientMethod<$0.GetCoinPriceRequest, $0.GetCoinPriceResponse>(
      '/user.account/GetCoinPrice',
      ($0.GetCoinPriceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetCoinPriceResponse.fromBuffer(value));

  accountClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.AccountInfo> getAccountInfo($0.GetAccountInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAccountHistoryResponse> getAccountHistory($0.GetAccountHistoryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountHistory, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserSwapPriceResponse> getUserSwapPrice($0.GetUserSwapPriceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserSwapPrice, request, options: options);
  }

  $grpc.ResponseFuture<$0.SellCoinResponse> sellCoin($0.SellCoinRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sellCoin, request, options: options);
  }

  $grpc.ResponseFuture<$0.BuyCoinResponse> buyCoin($0.BuyCoinRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$buyCoin, request, options: options);
  }

  $grpc.ResponseFuture<$0.SellNftResponse> sellNft($0.SellNftRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sellNft, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetNftBlanceResponse> getNftBlance($0.GetNftBlanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNftBlance, request, options: options);
  }

  $grpc.ResponseFuture<$0.NftToken> getNftToken($0.GetNftTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNftToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListNftTokenEventsResponse> listNftTokenEvents($0.ListNftTokenEventsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listNftTokenEvents, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetDcPayUrlResponse> getDcPayUrl($0.GetDcPayUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getDcPayUrl, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetSwapTxListResponse> getSwapTxList($0.GetSwapTxListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSwapTxList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTrackedTxListResponse> getTrackedTxList($0.GetSwapTxListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTrackedTxList, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCoinPriceResponse> getCoinPrice($0.GetCoinPriceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCoinPrice, request, options: options);
  }
}

@$pb.GrpcServiceName('user.account')
abstract class accountServiceBase extends $grpc.Service {
  $core.String get $name => 'user.account';

  accountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAccountInfoRequest, $0.AccountInfo>(
        'GetAccountInfo',
        getAccountInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAccountInfoRequest.fromBuffer(value),
        ($0.AccountInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAccountHistoryRequest, $0.GetAccountHistoryResponse>(
        'GetAccountHistory',
        getAccountHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAccountHistoryRequest.fromBuffer(value),
        ($0.GetAccountHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserSwapPriceRequest, $0.GetUserSwapPriceResponse>(
        'GetUserSwapPrice',
        getUserSwapPrice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserSwapPriceRequest.fromBuffer(value),
        ($0.GetUserSwapPriceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SellCoinRequest, $0.SellCoinResponse>(
        'SellCoin',
        sellCoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SellCoinRequest.fromBuffer(value),
        ($0.SellCoinResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BuyCoinRequest, $0.BuyCoinResponse>(
        'BuyCoin',
        buyCoin_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BuyCoinRequest.fromBuffer(value),
        ($0.BuyCoinResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SellNftRequest, $0.SellNftResponse>(
        'SellNft',
        sellNft_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SellNftRequest.fromBuffer(value),
        ($0.SellNftResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNftBlanceRequest, $0.GetNftBlanceResponse>(
        'GetNftBlance',
        getNftBlance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNftBlanceRequest.fromBuffer(value),
        ($0.GetNftBlanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNftTokenRequest, $0.NftToken>(
        'GetNftToken',
        getNftToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetNftTokenRequest.fromBuffer(value),
        ($0.NftToken value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListNftTokenEventsRequest, $0.ListNftTokenEventsResponse>(
        'ListNftTokenEvents',
        listNftTokenEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListNftTokenEventsRequest.fromBuffer(value),
        ($0.ListNftTokenEventsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetDcPayUrlRequest, $0.GetDcPayUrlResponse>(
        'GetDcPayUrl',
        getDcPayUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetDcPayUrlRequest.fromBuffer(value),
        ($0.GetDcPayUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSwapTxListRequest, $0.GetSwapTxListResponse>(
        'GetSwapTxList',
        getSwapTxList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSwapTxListRequest.fromBuffer(value),
        ($0.GetSwapTxListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetSwapTxListRequest, $0.GetTrackedTxListResponse>(
        'GetTrackedTxList',
        getTrackedTxList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSwapTxListRequest.fromBuffer(value),
        ($0.GetTrackedTxListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetCoinPriceRequest, $0.GetCoinPriceResponse>(
        'GetCoinPrice',
        getCoinPrice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCoinPriceRequest.fromBuffer(value),
        ($0.GetCoinPriceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AccountInfo> getAccountInfo_Pre($grpc.ServiceCall call, $async.Future<$0.GetAccountInfoRequest> request) async {
    return getAccountInfo(call, await request);
  }

  $async.Future<$0.GetAccountHistoryResponse> getAccountHistory_Pre($grpc.ServiceCall call, $async.Future<$0.GetAccountHistoryRequest> request) async {
    return getAccountHistory(call, await request);
  }

  $async.Future<$0.GetUserSwapPriceResponse> getUserSwapPrice_Pre($grpc.ServiceCall call, $async.Future<$0.GetUserSwapPriceRequest> request) async {
    return getUserSwapPrice(call, await request);
  }

  $async.Future<$0.SellCoinResponse> sellCoin_Pre($grpc.ServiceCall call, $async.Future<$0.SellCoinRequest> request) async {
    return sellCoin(call, await request);
  }

  $async.Future<$0.BuyCoinResponse> buyCoin_Pre($grpc.ServiceCall call, $async.Future<$0.BuyCoinRequest> request) async {
    return buyCoin(call, await request);
  }

  $async.Future<$0.SellNftResponse> sellNft_Pre($grpc.ServiceCall call, $async.Future<$0.SellNftRequest> request) async {
    return sellNft(call, await request);
  }

  $async.Future<$0.GetNftBlanceResponse> getNftBlance_Pre($grpc.ServiceCall call, $async.Future<$0.GetNftBlanceRequest> request) async {
    return getNftBlance(call, await request);
  }

  $async.Future<$0.NftToken> getNftToken_Pre($grpc.ServiceCall call, $async.Future<$0.GetNftTokenRequest> request) async {
    return getNftToken(call, await request);
  }

  $async.Future<$0.ListNftTokenEventsResponse> listNftTokenEvents_Pre($grpc.ServiceCall call, $async.Future<$0.ListNftTokenEventsRequest> request) async {
    return listNftTokenEvents(call, await request);
  }

  $async.Future<$0.GetDcPayUrlResponse> getDcPayUrl_Pre($grpc.ServiceCall call, $async.Future<$0.GetDcPayUrlRequest> request) async {
    return getDcPayUrl(call, await request);
  }

  $async.Future<$0.GetSwapTxListResponse> getSwapTxList_Pre($grpc.ServiceCall call, $async.Future<$0.GetSwapTxListRequest> request) async {
    return getSwapTxList(call, await request);
  }

  $async.Future<$0.GetTrackedTxListResponse> getTrackedTxList_Pre($grpc.ServiceCall call, $async.Future<$0.GetSwapTxListRequest> request) async {
    return getTrackedTxList(call, await request);
  }

  $async.Future<$0.GetCoinPriceResponse> getCoinPrice_Pre($grpc.ServiceCall call, $async.Future<$0.GetCoinPriceRequest> request) async {
    return getCoinPrice(call, await request);
  }

  $async.Future<$0.AccountInfo> getAccountInfo($grpc.ServiceCall call, $0.GetAccountInfoRequest request);
  $async.Future<$0.GetAccountHistoryResponse> getAccountHistory($grpc.ServiceCall call, $0.GetAccountHistoryRequest request);
  $async.Future<$0.GetUserSwapPriceResponse> getUserSwapPrice($grpc.ServiceCall call, $0.GetUserSwapPriceRequest request);
  $async.Future<$0.SellCoinResponse> sellCoin($grpc.ServiceCall call, $0.SellCoinRequest request);
  $async.Future<$0.BuyCoinResponse> buyCoin($grpc.ServiceCall call, $0.BuyCoinRequest request);
  $async.Future<$0.SellNftResponse> sellNft($grpc.ServiceCall call, $0.SellNftRequest request);
  $async.Future<$0.GetNftBlanceResponse> getNftBlance($grpc.ServiceCall call, $0.GetNftBlanceRequest request);
  $async.Future<$0.NftToken> getNftToken($grpc.ServiceCall call, $0.GetNftTokenRequest request);
  $async.Future<$0.ListNftTokenEventsResponse> listNftTokenEvents($grpc.ServiceCall call, $0.ListNftTokenEventsRequest request);
  $async.Future<$0.GetDcPayUrlResponse> getDcPayUrl($grpc.ServiceCall call, $0.GetDcPayUrlRequest request);
  $async.Future<$0.GetSwapTxListResponse> getSwapTxList($grpc.ServiceCall call, $0.GetSwapTxListRequest request);
  $async.Future<$0.GetTrackedTxListResponse> getTrackedTxList($grpc.ServiceCall call, $0.GetSwapTxListRequest request);
  $async.Future<$0.GetCoinPriceResponse> getCoinPrice($grpc.ServiceCall call, $0.GetCoinPriceRequest request);
}
