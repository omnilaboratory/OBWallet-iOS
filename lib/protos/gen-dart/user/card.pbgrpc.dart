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
  static final _$cardExchangeInfoList = $grpc.ClientMethod<$1.CardExchangeInfoListRequest, $1.CardExchangeInfoListResponse>(
      '/user.CardService/CardExchangeInfoList',
      ($1.CardExchangeInfoListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardExchangeInfoListResponse.fromBuffer(value));
  static final _$cardExchangeInfoWithNftList = $grpc.ClientMethod<$1.CardExchangeInfoWithNftListRequest, $1.CardExchangeInfoWithNftListResponse>(
      '/user.CardService/CardExchangeInfoWithNftList',
      ($1.CardExchangeInfoWithNftListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardExchangeInfoWithNftListResponse.fromBuffer(value));
  static final _$cardDetail = $grpc.ClientMethod<$1.CardDetailRequest, $1.CardDetailResponse>(
      '/user.CardService/CardDetail',
      ($1.CardDetailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardDetailResponse.fromBuffer(value));
  static final _$cardList = $grpc.ClientMethod<$1.CardListRequest, $1.CardListResponse>(
      '/user.CardService/CardList',
      ($1.CardListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardListResponse.fromBuffer(value));
  static final _$cardWithdraw = $grpc.ClientMethod<$1.CardWithdrawRequest, $1.CardWithdrawResponse>(
      '/user.CardService/CardWithdraw',
      ($1.CardWithdrawRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardWithdrawResponse.fromBuffer(value));
  static final _$getWithdrawResAmt = $grpc.ClientMethod<$1.GetWithdrawResAmtRequest, $1.GetWithdrawResAmtResponse>(
      '/user.CardService/GetWithdrawResAmt',
      ($1.GetWithdrawResAmtRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetWithdrawResAmtResponse.fromBuffer(value));
  static final _$cardRecharge = $grpc.ClientMethod<$1.CardRechargeRequest, $1.CardRechargeResponse>(
      '/user.CardService/CardRecharge',
      ($1.CardRechargeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.CardRechargeResponse.fromBuffer(value));
  static final _$buyNftForPay = $grpc.ClientMethod<$1.BuyNftForPayRequest, $1.BuyNftForPayResponse>(
      '/user.CardService/BuyNftForPay',
      ($1.BuyNftForPayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.BuyNftForPayResponse.fromBuffer(value));
  static final _$updatePcardApplyInfo = $grpc.ClientMethod<$1.PcardApplyInfo, $1.PcardApplyInfo>(
      '/user.CardService/UpdatePcardApplyInfo',
      ($1.PcardApplyInfo value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PcardApplyInfo.fromBuffer(value));
  static final _$getPcardApplyInfo = $grpc.ClientMethod<$1.GetPcardApplyInfoRequest, $1.PcardApplyInfo>(
      '/user.CardService/GetPcardApplyInfo',
      ($1.GetPcardApplyInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.PcardApplyInfo.fromBuffer(value));
  static final _$listPcardApplyInfo = $grpc.ClientMethod<$1.ListPcardApplyInfoRequest, $1.ListPcardApplyInfoResponse>(
      '/user.CardService/ListPcardApplyInfo',
      ($1.ListPcardApplyInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListPcardApplyInfoResponse.fromBuffer(value));
  static final _$userUpload = $grpc.ClientMethod<$1.UserUploadRequest, $1.UserUploadResponse>(
      '/user.CardService/UserUpload',
      ($1.UserUploadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.UserUploadResponse.fromBuffer(value));

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

  $grpc.ResponseFuture<$1.CardExchangeInfoListResponse> cardExchangeInfoList($1.CardExchangeInfoListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardExchangeInfoList, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardExchangeInfoWithNftListResponse> cardExchangeInfoWithNftList($1.CardExchangeInfoWithNftListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardExchangeInfoWithNftList, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardDetailResponse> cardDetail($1.CardDetailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardDetail, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardListResponse> cardList($1.CardListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardList, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardWithdrawResponse> cardWithdraw($1.CardWithdrawRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardWithdraw, request, options: options);
  }

  $grpc.ResponseFuture<$1.GetWithdrawResAmtResponse> getWithdrawResAmt($1.GetWithdrawResAmtRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWithdrawResAmt, request, options: options);
  }

  $grpc.ResponseFuture<$1.CardRechargeResponse> cardRecharge($1.CardRechargeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cardRecharge, request, options: options);
  }

  $grpc.ResponseFuture<$1.BuyNftForPayResponse> buyNftForPay($1.BuyNftForPayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$buyNftForPay, request, options: options);
  }

  $grpc.ResponseFuture<$1.PcardApplyInfo> updatePcardApplyInfo($1.PcardApplyInfo request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePcardApplyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.PcardApplyInfo> getPcardApplyInfo($1.GetPcardApplyInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPcardApplyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListPcardApplyInfoResponse> listPcardApplyInfo($1.ListPcardApplyInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPcardApplyInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.UserUploadResponse> userUpload($1.UserUploadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$userUpload, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$1.CardExchangeInfoListRequest, $1.CardExchangeInfoListResponse>(
        'CardExchangeInfoList',
        cardExchangeInfoList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardExchangeInfoListRequest.fromBuffer(value),
        ($1.CardExchangeInfoListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardExchangeInfoWithNftListRequest, $1.CardExchangeInfoWithNftListResponse>(
        'CardExchangeInfoWithNftList',
        cardExchangeInfoWithNftList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardExchangeInfoWithNftListRequest.fromBuffer(value),
        ($1.CardExchangeInfoWithNftListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardDetailRequest, $1.CardDetailResponse>(
        'CardDetail',
        cardDetail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardDetailRequest.fromBuffer(value),
        ($1.CardDetailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardListRequest, $1.CardListResponse>(
        'CardList',
        cardList_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardListRequest.fromBuffer(value),
        ($1.CardListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardWithdrawRequest, $1.CardWithdrawResponse>(
        'CardWithdraw',
        cardWithdraw_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardWithdrawRequest.fromBuffer(value),
        ($1.CardWithdrawResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetWithdrawResAmtRequest, $1.GetWithdrawResAmtResponse>(
        'GetWithdrawResAmt',
        getWithdrawResAmt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetWithdrawResAmtRequest.fromBuffer(value),
        ($1.GetWithdrawResAmtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CardRechargeRequest, $1.CardRechargeResponse>(
        'CardRecharge',
        cardRecharge_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CardRechargeRequest.fromBuffer(value),
        ($1.CardRechargeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.BuyNftForPayRequest, $1.BuyNftForPayResponse>(
        'BuyNftForPay',
        buyNftForPay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.BuyNftForPayRequest.fromBuffer(value),
        ($1.BuyNftForPayResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.PcardApplyInfo, $1.PcardApplyInfo>(
        'UpdatePcardApplyInfo',
        updatePcardApplyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.PcardApplyInfo.fromBuffer(value),
        ($1.PcardApplyInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.GetPcardApplyInfoRequest, $1.PcardApplyInfo>(
        'GetPcardApplyInfo',
        getPcardApplyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPcardApplyInfoRequest.fromBuffer(value),
        ($1.PcardApplyInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListPcardApplyInfoRequest, $1.ListPcardApplyInfoResponse>(
        'ListPcardApplyInfo',
        listPcardApplyInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListPcardApplyInfoRequest.fromBuffer(value),
        ($1.ListPcardApplyInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UserUploadRequest, $1.UserUploadResponse>(
        'UserUpload',
        userUpload_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UserUploadRequest.fromBuffer(value),
        ($1.UserUploadResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ApplyCardResponse> applyCard_Pre($grpc.ServiceCall call, $async.Future<$1.ApplyCardRequest> request) async {
    return applyCard(call, await request);
  }

  $async.Future<$1.CardHistoryResponse> cardHistory_Pre($grpc.ServiceCall call, $async.Future<$1.CardHistoryRequest> request) async {
    return cardHistory(call, await request);
  }

  $async.Future<$1.CardExchangeInfoListResponse> cardExchangeInfoList_Pre($grpc.ServiceCall call, $async.Future<$1.CardExchangeInfoListRequest> request) async {
    return cardExchangeInfoList(call, await request);
  }

  $async.Future<$1.CardExchangeInfoWithNftListResponse> cardExchangeInfoWithNftList_Pre($grpc.ServiceCall call, $async.Future<$1.CardExchangeInfoWithNftListRequest> request) async {
    return cardExchangeInfoWithNftList(call, await request);
  }

  $async.Future<$1.CardDetailResponse> cardDetail_Pre($grpc.ServiceCall call, $async.Future<$1.CardDetailRequest> request) async {
    return cardDetail(call, await request);
  }

  $async.Future<$1.CardListResponse> cardList_Pre($grpc.ServiceCall call, $async.Future<$1.CardListRequest> request) async {
    return cardList(call, await request);
  }

  $async.Future<$1.CardWithdrawResponse> cardWithdraw_Pre($grpc.ServiceCall call, $async.Future<$1.CardWithdrawRequest> request) async {
    return cardWithdraw(call, await request);
  }

  $async.Future<$1.GetWithdrawResAmtResponse> getWithdrawResAmt_Pre($grpc.ServiceCall call, $async.Future<$1.GetWithdrawResAmtRequest> request) async {
    return getWithdrawResAmt(call, await request);
  }

  $async.Future<$1.CardRechargeResponse> cardRecharge_Pre($grpc.ServiceCall call, $async.Future<$1.CardRechargeRequest> request) async {
    return cardRecharge(call, await request);
  }

  $async.Future<$1.BuyNftForPayResponse> buyNftForPay_Pre($grpc.ServiceCall call, $async.Future<$1.BuyNftForPayRequest> request) async {
    return buyNftForPay(call, await request);
  }

  $async.Future<$1.PcardApplyInfo> updatePcardApplyInfo_Pre($grpc.ServiceCall call, $async.Future<$1.PcardApplyInfo> request) async {
    return updatePcardApplyInfo(call, await request);
  }

  $async.Future<$1.PcardApplyInfo> getPcardApplyInfo_Pre($grpc.ServiceCall call, $async.Future<$1.GetPcardApplyInfoRequest> request) async {
    return getPcardApplyInfo(call, await request);
  }

  $async.Future<$1.ListPcardApplyInfoResponse> listPcardApplyInfo_Pre($grpc.ServiceCall call, $async.Future<$1.ListPcardApplyInfoRequest> request) async {
    return listPcardApplyInfo(call, await request);
  }

  $async.Future<$1.UserUploadResponse> userUpload_Pre($grpc.ServiceCall call, $async.Future<$1.UserUploadRequest> request) async {
    return userUpload(call, await request);
  }

  $async.Future<$1.ApplyCardResponse> applyCard($grpc.ServiceCall call, $1.ApplyCardRequest request);
  $async.Future<$1.CardHistoryResponse> cardHistory($grpc.ServiceCall call, $1.CardHistoryRequest request);
  $async.Future<$1.CardExchangeInfoListResponse> cardExchangeInfoList($grpc.ServiceCall call, $1.CardExchangeInfoListRequest request);
  $async.Future<$1.CardExchangeInfoWithNftListResponse> cardExchangeInfoWithNftList($grpc.ServiceCall call, $1.CardExchangeInfoWithNftListRequest request);
  $async.Future<$1.CardDetailResponse> cardDetail($grpc.ServiceCall call, $1.CardDetailRequest request);
  $async.Future<$1.CardListResponse> cardList($grpc.ServiceCall call, $1.CardListRequest request);
  $async.Future<$1.CardWithdrawResponse> cardWithdraw($grpc.ServiceCall call, $1.CardWithdrawRequest request);
  $async.Future<$1.GetWithdrawResAmtResponse> getWithdrawResAmt($grpc.ServiceCall call, $1.GetWithdrawResAmtRequest request);
  $async.Future<$1.CardRechargeResponse> cardRecharge($grpc.ServiceCall call, $1.CardRechargeRequest request);
  $async.Future<$1.BuyNftForPayResponse> buyNftForPay($grpc.ServiceCall call, $1.BuyNftForPayRequest request);
  $async.Future<$1.PcardApplyInfo> updatePcardApplyInfo($grpc.ServiceCall call, $1.PcardApplyInfo request);
  $async.Future<$1.PcardApplyInfo> getPcardApplyInfo($grpc.ServiceCall call, $1.GetPcardApplyInfoRequest request);
  $async.Future<$1.ListPcardApplyInfoResponse> listPcardApplyInfo($grpc.ServiceCall call, $1.ListPcardApplyInfoRequest request);
  $async.Future<$1.UserUploadResponse> userUpload($grpc.ServiceCall call, $1.UserUploadRequest request);
}
