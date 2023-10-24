//
//  Generated code. Do not modify.
//  source: user/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart';

export 'account.pbenum.dart';

class GetCoinPriceRequest extends $pb.GeneratedMessage {
  factory GetCoinPriceRequest() => create();
  GetCoinPriceRequest._() : super();
  factory GetCoinPriceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCoinPriceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCoinPriceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<TrackedTx_ContractSymbol>(1, _omitFieldNames ? '' : 'symbol', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCoinPriceRequest clone() => GetCoinPriceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCoinPriceRequest copyWith(void Function(GetCoinPriceRequest) updates) => super.copyWith((message) => updates(message as GetCoinPriceRequest)) as GetCoinPriceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCoinPriceRequest create() => GetCoinPriceRequest._();
  GetCoinPriceRequest createEmptyInstance() => create();
  static $pb.PbList<GetCoinPriceRequest> createRepeated() => $pb.PbList<GetCoinPriceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCoinPriceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCoinPriceRequest>(create);
  static GetCoinPriceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  TrackedTx_ContractSymbol get symbol => $_getN(0);
  @$pb.TagNumber(1)
  set symbol(TrackedTx_ContractSymbol v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => clearField(1);
}

class GetCoinPriceResponse extends $pb.GeneratedMessage {
  factory GetCoinPriceResponse() => create();
  GetCoinPriceResponse._() : super();
  factory GetCoinPriceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCoinPriceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCoinPriceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCoinPriceResponse clone() => GetCoinPriceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCoinPriceResponse copyWith(void Function(GetCoinPriceResponse) updates) => super.copyWith((message) => updates(message as GetCoinPriceResponse)) as GetCoinPriceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCoinPriceResponse create() => GetCoinPriceResponse._();
  GetCoinPriceResponse createEmptyInstance() => create();
  static $pb.PbList<GetCoinPriceResponse> createRepeated() => $pb.PbList<GetCoinPriceResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCoinPriceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCoinPriceResponse>(create);
  static GetCoinPriceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get price => $_getN(0);
  @$pb.TagNumber(1)
  set price($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrice() => clearField(1);
}

class GetSwapTxListRequest extends $pb.GeneratedMessage {
  factory GetSwapTxListRequest() => create();
  GetSwapTxListRequest._() : super();
  factory GetSwapTxListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSwapTxListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSwapTxListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'start')
    ..aInt64(2, _omitFieldNames ? '' : 'limit')
    ..e<TrackedTx_ContractSymbol>(3, _omitFieldNames ? '' : 'Symbol', $pb.PbFieldType.OE, protoName: 'Symbol', defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSwapTxListRequest clone() => GetSwapTxListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSwapTxListRequest copyWith(void Function(GetSwapTxListRequest) updates) => super.copyWith((message) => updates(message as GetSwapTxListRequest)) as GetSwapTxListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSwapTxListRequest create() => GetSwapTxListRequest._();
  GetSwapTxListRequest createEmptyInstance() => create();
  static $pb.PbList<GetSwapTxListRequest> createRepeated() => $pb.PbList<GetSwapTxListRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSwapTxListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSwapTxListRequest>(create);
  static GetSwapTxListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get start => $_getI64(0);
  @$pb.TagNumber(1)
  set start($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  TrackedTx_ContractSymbol get symbol => $_getN(2);
  @$pb.TagNumber(3)
  set symbol(TrackedTx_ContractSymbol v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);
}

class GetSwapTxListResponse extends $pb.GeneratedMessage {
  factory GetSwapTxListResponse() => create();
  GetSwapTxListResponse._() : super();
  factory GetSwapTxListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSwapTxListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetSwapTxListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<SwapTx>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: SwapTx.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSwapTxListResponse clone() => GetSwapTxListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSwapTxListResponse copyWith(void Function(GetSwapTxListResponse) updates) => super.copyWith((message) => updates(message as GetSwapTxListResponse)) as GetSwapTxListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetSwapTxListResponse create() => GetSwapTxListResponse._();
  GetSwapTxListResponse createEmptyInstance() => create();
  static $pb.PbList<GetSwapTxListResponse> createRepeated() => $pb.PbList<GetSwapTxListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSwapTxListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSwapTxListResponse>(create);
  static GetSwapTxListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SwapTx> get items => $_getList(0);
}

class GetNftBlanceRequest extends $pb.GeneratedMessage {
  factory GetNftBlanceRequest() => create();
  GetNftBlanceRequest._() : super();
  factory GetNftBlanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNftBlanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNftBlanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOB(2, _omitFieldNames ? '' : 'fromChain')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNftBlanceRequest clone() => GetNftBlanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNftBlanceRequest copyWith(void Function(GetNftBlanceRequest) updates) => super.copyWith((message) => updates(message as GetNftBlanceRequest)) as GetNftBlanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNftBlanceRequest create() => GetNftBlanceRequest._();
  GetNftBlanceRequest createEmptyInstance() => create();
  static $pb.PbList<GetNftBlanceRequest> createRepeated() => $pb.PbList<GetNftBlanceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNftBlanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNftBlanceRequest>(create);
  static GetNftBlanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get fromChain => $_getBF(1);
  @$pb.TagNumber(2)
  set fromChain($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFromChain() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromChain() => clearField(2);
}

class GetNftBlanceResponse extends $pb.GeneratedMessage {
  factory GetNftBlanceResponse() => create();
  GetNftBlanceResponse._() : super();
  factory GetNftBlanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetNftBlanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNftBlanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<NftToken>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: NftToken.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetNftBlanceResponse clone() => GetNftBlanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetNftBlanceResponse copyWith(void Function(GetNftBlanceResponse) updates) => super.copyWith((message) => updates(message as GetNftBlanceResponse)) as GetNftBlanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNftBlanceResponse create() => GetNftBlanceResponse._();
  GetNftBlanceResponse createEmptyInstance() => create();
  static $pb.PbList<GetNftBlanceResponse> createRepeated() => $pb.PbList<GetNftBlanceResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNftBlanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNftBlanceResponse>(create);
  static GetNftBlanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NftToken> get items => $_getList(0);
}

class GetTrackedTxListResponse extends $pb.GeneratedMessage {
  factory GetTrackedTxListResponse() => create();
  GetTrackedTxListResponse._() : super();
  factory GetTrackedTxListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTrackedTxListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTrackedTxListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<TrackedTx>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: TrackedTx.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTrackedTxListResponse clone() => GetTrackedTxListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTrackedTxListResponse copyWith(void Function(GetTrackedTxListResponse) updates) => super.copyWith((message) => updates(message as GetTrackedTxListResponse)) as GetTrackedTxListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTrackedTxListResponse create() => GetTrackedTxListResponse._();
  GetTrackedTxListResponse createEmptyInstance() => create();
  static $pb.PbList<GetTrackedTxListResponse> createRepeated() => $pb.PbList<GetTrackedTxListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTrackedTxListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTrackedTxListResponse>(create);
  static GetTrackedTxListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TrackedTx> get items => $_getList(0);
}

class GetAccountHistoryRequest extends $pb.GeneratedMessage {
  factory GetAccountHistoryRequest() => create();
  GetAccountHistoryRequest._() : super();
  factory GetAccountHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'start')
    ..aInt64(2, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountHistoryRequest clone() => GetAccountHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountHistoryRequest copyWith(void Function(GetAccountHistoryRequest) updates) => super.copyWith((message) => updates(message as GetAccountHistoryRequest)) as GetAccountHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountHistoryRequest create() => GetAccountHistoryRequest._();
  GetAccountHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountHistoryRequest> createRepeated() => $pb.PbList<GetAccountHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountHistoryRequest>(create);
  static GetAccountHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get start => $_getI64(0);
  @$pb.TagNumber(1)
  set start($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);
}

class GetAccountHistoryResponse extends $pb.GeneratedMessage {
  factory GetAccountHistoryResponse() => create();
  GetAccountHistoryResponse._() : super();
  factory GetAccountHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<AccountHistory>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: AccountHistory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountHistoryResponse clone() => GetAccountHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountHistoryResponse copyWith(void Function(GetAccountHistoryResponse) updates) => super.copyWith((message) => updates(message as GetAccountHistoryResponse)) as GetAccountHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountHistoryResponse create() => GetAccountHistoryResponse._();
  GetAccountHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountHistoryResponse> createRepeated() => $pb.PbList<GetAccountHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountHistoryResponse>(create);
  static GetAccountHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<AccountHistory> get items => $_getList(0);
}

class GetAccountInfoRequest extends $pb.GeneratedMessage {
  factory GetAccountInfoRequest() => create();
  GetAccountInfoRequest._() : super();
  factory GetAccountInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAccountInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountInfoRequest clone() => GetAccountInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountInfoRequest copyWith(void Function(GetAccountInfoRequest) updates) => super.copyWith((message) => updates(message as GetAccountInfoRequest)) as GetAccountInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountInfoRequest create() => GetAccountInfoRequest._();
  GetAccountInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountInfoRequest> createRepeated() => $pb.PbList<GetAccountInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountInfoRequest>(create);
  static GetAccountInfoRequest? _defaultInstance;
}

class AccountInfo extends $pb.GeneratedMessage {
  factory AccountInfo() => create();
  AccountInfo._() : super();
  factory AccountInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'balanceUsd', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'createdAt')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'lockedUsd', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountInfo clone() => AccountInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountInfo copyWith(void Function(AccountInfo) updates) => super.copyWith((message) => updates(message as AccountInfo)) as AccountInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountInfo create() => AccountInfo._();
  AccountInfo createEmptyInstance() => create();
  static $pb.PbList<AccountInfo> createRepeated() => $pb.PbList<AccountInfo>();
  @$core.pragma('dart2js:noInline')
  static AccountInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountInfo>(create);
  static AccountInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(5)
  $core.double get balanceUsd => $_getN(2);
  @$pb.TagNumber(5)
  set balanceUsd($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasBalanceUsd() => $_has(2);
  @$pb.TagNumber(5)
  void clearBalanceUsd() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(3);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get lockedUsd => $_getN(4);
  @$pb.TagNumber(7)
  set lockedUsd($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasLockedUsd() => $_has(4);
  @$pb.TagNumber(7)
  void clearLockedUsd() => clearField(7);
}

class TrackedTx extends $pb.GeneratedMessage {
  factory TrackedTx() => create();
  TrackedTx._() : super();
  factory TrackedTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackedTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackedTx', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'txId')
    ..aOS(3, _omitFieldNames ? '' : 'from')
    ..aOS(4, _omitFieldNames ? '' : 'to')
    ..aOS(5, _omitFieldNames ? '' : 'tokenAddress')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..e<TrackedTx_ContractSymbol>(7, _omitFieldNames ? '' : 'Symbol', $pb.PbFieldType.OE, protoName: 'Symbol', defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..aInt64(8, _omitFieldNames ? '' : 'confirms')
    ..e<TrackedTx_Status>(9, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_Status.StatusUnknown, valueOf: TrackedTx_Status.valueOf, enumValues: TrackedTx_Status.values)
    ..aOS(10, _omitFieldNames ? '' : 'txErrMsg')
    ..aInt64(11, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(12, _omitFieldNames ? '' : 'updatedAt')
    ..aInt64(13, _omitFieldNames ? '' : 'userId')
    ..aInt64(14, _omitFieldNames ? '' : 'commitHeight')
    ..aInt64(15, _omitFieldNames ? '' : 'toUserId')
    ..a<$core.double>(16, _omitFieldNames ? '' : 'usdAmt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackedTx clone() => TrackedTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackedTx copyWith(void Function(TrackedTx) updates) => super.copyWith((message) => updates(message as TrackedTx)) as TrackedTx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackedTx create() => TrackedTx._();
  TrackedTx createEmptyInstance() => create();
  static $pb.PbList<TrackedTx> createRepeated() => $pb.PbList<TrackedTx>();
  @$core.pragma('dart2js:noInline')
  static TrackedTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackedTx>(create);
  static TrackedTx? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txId => $_getSZ(1);
  @$pb.TagNumber(2)
  set txId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get from => $_getSZ(2);
  @$pb.TagNumber(3)
  set from($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get to => $_getSZ(3);
  @$pb.TagNumber(4)
  set to($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tokenAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set tokenAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTokenAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearTokenAddress() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get amt => $_getN(5);
  @$pb.TagNumber(6)
  set amt($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmt() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmt() => clearField(6);

  @$pb.TagNumber(7)
  TrackedTx_ContractSymbol get symbol => $_getN(6);
  @$pb.TagNumber(7)
  set symbol(TrackedTx_ContractSymbol v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSymbol() => $_has(6);
  @$pb.TagNumber(7)
  void clearSymbol() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get confirms => $_getI64(7);
  @$pb.TagNumber(8)
  set confirms($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasConfirms() => $_has(7);
  @$pb.TagNumber(8)
  void clearConfirms() => clearField(8);

  @$pb.TagNumber(9)
  TrackedTx_Status get status => $_getN(8);
  @$pb.TagNumber(9)
  set status(TrackedTx_Status v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get txErrMsg => $_getSZ(9);
  @$pb.TagNumber(10)
  set txErrMsg($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTxErrMsg() => $_has(9);
  @$pb.TagNumber(10)
  void clearTxErrMsg() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get createdAt => $_getI64(10);
  @$pb.TagNumber(11)
  set createdAt($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updatedAt => $_getI64(11);
  @$pb.TagNumber(12)
  set updatedAt($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdatedAt() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get userId => $_getI64(12);
  @$pb.TagNumber(13)
  set userId($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasUserId() => $_has(12);
  @$pb.TagNumber(13)
  void clearUserId() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get commitHeight => $_getI64(13);
  @$pb.TagNumber(14)
  set commitHeight($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCommitHeight() => $_has(13);
  @$pb.TagNumber(14)
  void clearCommitHeight() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get toUserId => $_getI64(14);
  @$pb.TagNumber(15)
  set toUserId($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasToUserId() => $_has(14);
  @$pb.TagNumber(15)
  void clearToUserId() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get usdAmt => $_getN(15);
  @$pb.TagNumber(16)
  set usdAmt($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUsdAmt() => $_has(15);
  @$pb.TagNumber(16)
  void clearUsdAmt() => clearField(16);
}

class SwapTx extends $pb.GeneratedMessage {
  factory SwapTx() => create();
  SwapTx._() : super();
  factory SwapTx.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SwapTx.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SwapTx', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'txId')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'targetAmt', $pb.PbFieldType.OD)
    ..e<TrackedTx_ContractSymbol>(6, _omitFieldNames ? '' : 'fromSymbol', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..e<TrackedTx_ContractSymbol>(7, _omitFieldNames ? '' : 'targetSymbol', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'coinPrice', $pb.PbFieldType.OD)
    ..aInt64(9, _omitFieldNames ? '' : 'confirms')
    ..aInt64(11, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(12, _omitFieldNames ? '' : 'updatedAt')
    ..e<TrackedTx_Status>(13, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_Status.StatusUnknown, valueOf: TrackedTx_Status.valueOf, enumValues: TrackedTx_Status.values)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'settleAmt', $pb.PbFieldType.OD)
    ..aOS(17, _omitFieldNames ? '' : 'txErrMsg')
    ..aOB(18, _omitFieldNames ? '' : 'isBuyCoin')
    ..a<$core.double>(19, _omitFieldNames ? '' : 'settlePrice', $pb.PbFieldType.OD)
    ..aOB(20, _omitFieldNames ? '' : 'isSellNft')
    ..aOS(21, _omitFieldNames ? '' : 'nftTxid')
    ..aOS(22, _omitFieldNames ? '' : 'cardNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SwapTx clone() => SwapTx()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SwapTx copyWith(void Function(SwapTx) updates) => super.copyWith((message) => updates(message as SwapTx)) as SwapTx;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwapTx create() => SwapTx._();
  SwapTx createEmptyInstance() => create();
  static $pb.PbList<SwapTx> createRepeated() => $pb.PbList<SwapTx>();
  @$core.pragma('dart2js:noInline')
  static SwapTx getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SwapTx>(create);
  static SwapTx? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get txId => $_getSZ(2);
  @$pb.TagNumber(3)
  set txId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTxId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTxId() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get amt => $_getN(3);
  @$pb.TagNumber(4)
  set amt($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmt() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get targetAmt => $_getN(4);
  @$pb.TagNumber(5)
  set targetAmt($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTargetAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetAmt() => clearField(5);

  @$pb.TagNumber(6)
  TrackedTx_ContractSymbol get fromSymbol => $_getN(5);
  @$pb.TagNumber(6)
  set fromSymbol(TrackedTx_ContractSymbol v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFromSymbol() => $_has(5);
  @$pb.TagNumber(6)
  void clearFromSymbol() => clearField(6);

  @$pb.TagNumber(7)
  TrackedTx_ContractSymbol get targetSymbol => $_getN(6);
  @$pb.TagNumber(7)
  set targetSymbol(TrackedTx_ContractSymbol v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasTargetSymbol() => $_has(6);
  @$pb.TagNumber(7)
  void clearTargetSymbol() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get coinPrice => $_getN(7);
  @$pb.TagNumber(8)
  set coinPrice($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCoinPrice() => $_has(7);
  @$pb.TagNumber(8)
  void clearCoinPrice() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get confirms => $_getI64(8);
  @$pb.TagNumber(9)
  set confirms($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasConfirms() => $_has(8);
  @$pb.TagNumber(9)
  void clearConfirms() => clearField(9);

  @$pb.TagNumber(11)
  $fixnum.Int64 get createdAt => $_getI64(9);
  @$pb.TagNumber(11)
  set createdAt($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(9);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get updatedAt => $_getI64(10);
  @$pb.TagNumber(12)
  set updatedAt($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdatedAt() => $_has(10);
  @$pb.TagNumber(12)
  void clearUpdatedAt() => clearField(12);

  @$pb.TagNumber(13)
  TrackedTx_Status get status => $_getN(11);
  @$pb.TagNumber(13)
  set status(TrackedTx_Status v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasStatus() => $_has(11);
  @$pb.TagNumber(13)
  void clearStatus() => clearField(13);

  @$pb.TagNumber(15)
  $core.double get settleAmt => $_getN(12);
  @$pb.TagNumber(15)
  set settleAmt($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(15)
  $core.bool hasSettleAmt() => $_has(12);
  @$pb.TagNumber(15)
  void clearSettleAmt() => clearField(15);

  @$pb.TagNumber(17)
  $core.String get txErrMsg => $_getSZ(13);
  @$pb.TagNumber(17)
  set txErrMsg($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(17)
  $core.bool hasTxErrMsg() => $_has(13);
  @$pb.TagNumber(17)
  void clearTxErrMsg() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get isBuyCoin => $_getBF(14);
  @$pb.TagNumber(18)
  set isBuyCoin($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(18)
  $core.bool hasIsBuyCoin() => $_has(14);
  @$pb.TagNumber(18)
  void clearIsBuyCoin() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get settlePrice => $_getN(15);
  @$pb.TagNumber(19)
  set settlePrice($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(19)
  $core.bool hasSettlePrice() => $_has(15);
  @$pb.TagNumber(19)
  void clearSettlePrice() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get isSellNft => $_getBF(16);
  @$pb.TagNumber(20)
  set isSellNft($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(20)
  $core.bool hasIsSellNft() => $_has(16);
  @$pb.TagNumber(20)
  void clearIsSellNft() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get nftTxid => $_getSZ(17);
  @$pb.TagNumber(21)
  set nftTxid($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(21)
  $core.bool hasNftTxid() => $_has(17);
  @$pb.TagNumber(21)
  void clearNftTxid() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get cardNo => $_getSZ(18);
  @$pb.TagNumber(22)
  set cardNo($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(22)
  $core.bool hasCardNo() => $_has(18);
  @$pb.TagNumber(22)
  void clearCardNo() => clearField(22);
}

class SellCoinRequest extends $pb.GeneratedMessage {
  factory SellCoinRequest() => create();
  SellCoinRequest._() : super();
  factory SellCoinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellCoinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SellCoinRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<TrackedTx_ContractSymbol>(2, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'coinAmt', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'usdAmt', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'rate', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'txid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SellCoinRequest clone() => SellCoinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SellCoinRequest copyWith(void Function(SellCoinRequest) updates) => super.copyWith((message) => updates(message as SellCoinRequest)) as SellCoinRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SellCoinRequest create() => SellCoinRequest._();
  SellCoinRequest createEmptyInstance() => create();
  static $pb.PbList<SellCoinRequest> createRepeated() => $pb.PbList<SellCoinRequest>();
  @$core.pragma('dart2js:noInline')
  static SellCoinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellCoinRequest>(create);
  static SellCoinRequest? _defaultInstance;

  @$pb.TagNumber(2)
  TrackedTx_ContractSymbol get coin => $_getN(0);
  @$pb.TagNumber(2)
  set coin(TrackedTx_ContractSymbol v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(2)
  void clearCoin() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get coinAmt => $_getN(1);
  @$pb.TagNumber(3)
  set coinAmt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoinAmt() => $_has(1);
  @$pb.TagNumber(3)
  void clearCoinAmt() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get usdAmt => $_getN(2);
  @$pb.TagNumber(4)
  set usdAmt($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsdAmt() => $_has(2);
  @$pb.TagNumber(4)
  void clearUsdAmt() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get rate => $_getN(3);
  @$pb.TagNumber(5)
  set rate($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasRate() => $_has(3);
  @$pb.TagNumber(5)
  void clearRate() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get txid => $_getSZ(4);
  @$pb.TagNumber(6)
  set txid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxid() => $_has(4);
  @$pb.TagNumber(6)
  void clearTxid() => clearField(6);
}

class SellCoinResponse extends $pb.GeneratedMessage {
  factory SellCoinResponse() => create();
  SellCoinResponse._() : super();
  factory SellCoinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellCoinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SellCoinResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SellCoinResponse clone() => SellCoinResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SellCoinResponse copyWith(void Function(SellCoinResponse) updates) => super.copyWith((message) => updates(message as SellCoinResponse)) as SellCoinResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SellCoinResponse create() => SellCoinResponse._();
  SellCoinResponse createEmptyInstance() => create();
  static $pb.PbList<SellCoinResponse> createRepeated() => $pb.PbList<SellCoinResponse>();
  @$core.pragma('dart2js:noInline')
  static SellCoinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellCoinResponse>(create);
  static SellCoinResponse? _defaultInstance;
}

class BuyCoinRequest extends $pb.GeneratedMessage {
  factory BuyCoinRequest() => create();
  BuyCoinRequest._() : super();
  factory BuyCoinRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyCoinRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyCoinRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<TrackedTx_ContractSymbol>(2, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'coinAmt', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'usdAmt', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'rate', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyCoinRequest clone() => BuyCoinRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyCoinRequest copyWith(void Function(BuyCoinRequest) updates) => super.copyWith((message) => updates(message as BuyCoinRequest)) as BuyCoinRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyCoinRequest create() => BuyCoinRequest._();
  BuyCoinRequest createEmptyInstance() => create();
  static $pb.PbList<BuyCoinRequest> createRepeated() => $pb.PbList<BuyCoinRequest>();
  @$core.pragma('dart2js:noInline')
  static BuyCoinRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyCoinRequest>(create);
  static BuyCoinRequest? _defaultInstance;

  @$pb.TagNumber(2)
  TrackedTx_ContractSymbol get coin => $_getN(0);
  @$pb.TagNumber(2)
  set coin(TrackedTx_ContractSymbol v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoin() => $_has(0);
  @$pb.TagNumber(2)
  void clearCoin() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get coinAmt => $_getN(1);
  @$pb.TagNumber(3)
  set coinAmt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasCoinAmt() => $_has(1);
  @$pb.TagNumber(3)
  void clearCoinAmt() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get usdAmt => $_getN(2);
  @$pb.TagNumber(4)
  set usdAmt($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsdAmt() => $_has(2);
  @$pb.TagNumber(4)
  void clearUsdAmt() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get rate => $_getN(3);
  @$pb.TagNumber(5)
  set rate($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasRate() => $_has(3);
  @$pb.TagNumber(5)
  void clearRate() => clearField(5);
}

class BuyCoinResponse extends $pb.GeneratedMessage {
  factory BuyCoinResponse() => create();
  BuyCoinResponse._() : super();
  factory BuyCoinResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyCoinResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyCoinResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(6, _omitFieldNames ? '' : 'txid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyCoinResponse clone() => BuyCoinResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyCoinResponse copyWith(void Function(BuyCoinResponse) updates) => super.copyWith((message) => updates(message as BuyCoinResponse)) as BuyCoinResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyCoinResponse create() => BuyCoinResponse._();
  BuyCoinResponse createEmptyInstance() => create();
  static $pb.PbList<BuyCoinResponse> createRepeated() => $pb.PbList<BuyCoinResponse>();
  @$core.pragma('dart2js:noInline')
  static BuyCoinResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyCoinResponse>(create);
  static BuyCoinResponse? _defaultInstance;

  @$pb.TagNumber(6)
  $core.String get txid => $_getSZ(0);
  @$pb.TagNumber(6)
  set txid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(6)
  void clearTxid() => clearField(6);
}

class SellNftRequest extends $pb.GeneratedMessage {
  factory SellNftRequest() => create();
  SellNftRequest._() : super();
  factory SellNftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellNftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SellNftRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'usdAmt', $pb.PbFieldType.OD)
    ..e<TrackedTx_ContractSymbol>(2, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rate', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'coinAmt', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'nftTxid')
    ..aOS(8, _omitFieldNames ? '' : 'cardNo')
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'tokenIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SellNftRequest clone() => SellNftRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SellNftRequest copyWith(void Function(SellNftRequest) updates) => super.copyWith((message) => updates(message as SellNftRequest)) as SellNftRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SellNftRequest create() => SellNftRequest._();
  SellNftRequest createEmptyInstance() => create();
  static $pb.PbList<SellNftRequest> createRepeated() => $pb.PbList<SellNftRequest>();
  @$core.pragma('dart2js:noInline')
  static SellNftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellNftRequest>(create);
  static SellNftRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get usdAmt => $_getN(0);
  @$pb.TagNumber(1)
  set usdAmt($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsdAmt() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsdAmt() => clearField(1);

  @$pb.TagNumber(2)
  TrackedTx_ContractSymbol get coin => $_getN(1);
  @$pb.TagNumber(2)
  set coin(TrackedTx_ContractSymbol v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoin() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoin() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rate => $_getN(2);
  @$pb.TagNumber(3)
  set rate($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearRate() => clearField(3);

  @$pb.TagNumber(5)
  $core.double get coinAmt => $_getN(3);
  @$pb.TagNumber(5)
  set coinAmt($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasCoinAmt() => $_has(3);
  @$pb.TagNumber(5)
  void clearCoinAmt() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get nftTxid => $_getSZ(4);
  @$pb.TagNumber(6)
  set nftTxid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasNftTxid() => $_has(4);
  @$pb.TagNumber(6)
  void clearNftTxid() => clearField(6);

  @$pb.TagNumber(8)
  $core.String get cardNo => $_getSZ(5);
  @$pb.TagNumber(8)
  set cardNo($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasCardNo() => $_has(5);
  @$pb.TagNumber(8)
  void clearCardNo() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$fixnum.Int64> get tokenIds => $_getList(6);

  @$pb.TagNumber(10)
  $core.List<$fixnum.Int64> get values => $_getList(7);
}

class SellNftResponse extends $pb.GeneratedMessage {
  factory SellNftResponse() => create();
  SellNftResponse._() : super();
  factory SellNftResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SellNftResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SellNftResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SellNftResponse clone() => SellNftResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SellNftResponse copyWith(void Function(SellNftResponse) updates) => super.copyWith((message) => updates(message as SellNftResponse)) as SellNftResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SellNftResponse create() => SellNftResponse._();
  SellNftResponse createEmptyInstance() => create();
  static $pb.PbList<SellNftResponse> createRepeated() => $pb.PbList<SellNftResponse>();
  @$core.pragma('dart2js:noInline')
  static SellNftResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SellNftResponse>(create);
  static SellNftResponse? _defaultInstance;
}

class BuyNftRequest extends $pb.GeneratedMessage {
  factory BuyNftRequest() => create();
  BuyNftRequest._() : super();
  factory BuyNftRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyNftRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyNftRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'usdAmt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyNftRequest clone() => BuyNftRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyNftRequest copyWith(void Function(BuyNftRequest) updates) => super.copyWith((message) => updates(message as BuyNftRequest)) as BuyNftRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyNftRequest create() => BuyNftRequest._();
  BuyNftRequest createEmptyInstance() => create();
  static $pb.PbList<BuyNftRequest> createRepeated() => $pb.PbList<BuyNftRequest>();
  @$core.pragma('dart2js:noInline')
  static BuyNftRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyNftRequest>(create);
  static BuyNftRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get usdAmt => $_getN(0);
  @$pb.TagNumber(1)
  set usdAmt($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsdAmt() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsdAmt() => clearField(1);
}

class BuyNftResponse extends $pb.GeneratedMessage {
  factory BuyNftResponse() => create();
  BuyNftResponse._() : super();
  factory BuyNftResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyNftResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyNftResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyNftResponse clone() => BuyNftResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyNftResponse copyWith(void Function(BuyNftResponse) updates) => super.copyWith((message) => updates(message as BuyNftResponse)) as BuyNftResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyNftResponse create() => BuyNftResponse._();
  BuyNftResponse createEmptyInstance() => create();
  static $pb.PbList<BuyNftResponse> createRepeated() => $pb.PbList<BuyNftResponse>();
  @$core.pragma('dart2js:noInline')
  static BuyNftResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyNftResponse>(create);
  static BuyNftResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txid => $_getSZ(0);
  @$pb.TagNumber(1)
  set txid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);
}

class GetDcPayUrlRequest extends $pb.GeneratedMessage {
  factory GetDcPayUrlRequest() => create();
  GetDcPayUrlRequest._() : super();
  factory GetDcPayUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDcPayUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDcPayUrlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'usdAmt', $pb.PbFieldType.OD)
    ..e<TrackedTx_ContractSymbol>(2, _omitFieldNames ? '' : 'coin', $pb.PbFieldType.OE, defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDcPayUrlRequest clone() => GetDcPayUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDcPayUrlRequest copyWith(void Function(GetDcPayUrlRequest) updates) => super.copyWith((message) => updates(message as GetDcPayUrlRequest)) as GetDcPayUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDcPayUrlRequest create() => GetDcPayUrlRequest._();
  GetDcPayUrlRequest createEmptyInstance() => create();
  static $pb.PbList<GetDcPayUrlRequest> createRepeated() => $pb.PbList<GetDcPayUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static GetDcPayUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDcPayUrlRequest>(create);
  static GetDcPayUrlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get usdAmt => $_getN(0);
  @$pb.TagNumber(1)
  set usdAmt($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsdAmt() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsdAmt() => clearField(1);

  @$pb.TagNumber(2)
  TrackedTx_ContractSymbol get coin => $_getN(1);
  @$pb.TagNumber(2)
  set coin(TrackedTx_ContractSymbol v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoin() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoin() => clearField(2);
}

class GetDcPayUrlResponse extends $pb.GeneratedMessage {
  factory GetDcPayUrlResponse() => create();
  GetDcPayUrlResponse._() : super();
  factory GetDcPayUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDcPayUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetDcPayUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'urlPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDcPayUrlResponse clone() => GetDcPayUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDcPayUrlResponse copyWith(void Function(GetDcPayUrlResponse) updates) => super.copyWith((message) => updates(message as GetDcPayUrlResponse)) as GetDcPayUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetDcPayUrlResponse create() => GetDcPayUrlResponse._();
  GetDcPayUrlResponse createEmptyInstance() => create();
  static $pb.PbList<GetDcPayUrlResponse> createRepeated() => $pb.PbList<GetDcPayUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static GetDcPayUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDcPayUrlResponse>(create);
  static GetDcPayUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get urlPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set urlPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrlPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrlPath() => clearField(1);
}

class NftToken extends $pb.GeneratedMessage {
  factory NftToken() => create();
  NftToken._() : super();
  factory NftToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NftToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NftToken', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imageUrl')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'tokenId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'itemPrice', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NftToken clone() => NftToken()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NftToken copyWith(void Function(NftToken) updates) => super.copyWith((message) => updates(message as NftToken)) as NftToken;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NftToken create() => NftToken._();
  NftToken createEmptyInstance() => create();
  static $pb.PbList<NftToken> createRepeated() => $pb.PbList<NftToken>();
  @$core.pragma('dart2js:noInline')
  static NftToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NftToken>(create);
  static NftToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imageUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageUrl() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get tokenId => $_getI64(1);
  @$pb.TagNumber(2)
  set tokenId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amt => $_getI64(2);
  @$pb.TagNumber(3)
  set amt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmt() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get itemPrice => $_getN(3);
  @$pb.TagNumber(4)
  set itemPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasItemPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearItemPrice() => clearField(4);
}

class AccountHistory extends $pb.GeneratedMessage {
  factory AccountHistory() => create();
  AccountHistory._() : super();
  factory AccountHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountHistory', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..aOS(3, _omitFieldNames ? '' : 'sourceId')
    ..e<AccountHistory_SourceType>(4, _omitFieldNames ? '' : 'sourceType', $pb.PbFieldType.OE, defaultOrMaker: AccountHistory_SourceType.UnKnow, valueOf: AccountHistory_SourceType.valueOf, enumValues: AccountHistory_SourceType.values)
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<TrackedTx_ContractSymbol>(7, _omitFieldNames ? '' : 'Symbol', $pb.PbFieldType.OE, protoName: 'Symbol', defaultOrMaker: TrackedTx_ContractSymbol.USD, valueOf: TrackedTx_ContractSymbol.valueOf, enumValues: TrackedTx_ContractSymbol.values)
    ..aInt64(8, _omitFieldNames ? '' : 'accountId')
    ..aInt64(9, _omitFieldNames ? '' : 'confirms')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountHistory clone() => AccountHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountHistory copyWith(void Function(AccountHistory) updates) => super.copyWith((message) => updates(message as AccountHistory)) as AccountHistory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountHistory create() => AccountHistory._();
  AccountHistory createEmptyInstance() => create();
  static $pb.PbList<AccountHistory> createRepeated() => $pb.PbList<AccountHistory>();
  @$core.pragma('dart2js:noInline')
  static AccountHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountHistory>(create);
  static AccountHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amt => $_getN(1);
  @$pb.TagNumber(2)
  set amt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sourceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sourceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSourceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourceId() => clearField(3);

  @$pb.TagNumber(4)
  AccountHistory_SourceType get sourceType => $_getN(3);
  @$pb.TagNumber(4)
  set sourceType(AccountHistory_SourceType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSourceType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSourceType() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updatedAt => $_getI64(5);
  @$pb.TagNumber(6)
  set updatedAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);

  @$pb.TagNumber(7)
  TrackedTx_ContractSymbol get symbol => $_getN(6);
  @$pb.TagNumber(7)
  set symbol(TrackedTx_ContractSymbol v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSymbol() => $_has(6);
  @$pb.TagNumber(7)
  void clearSymbol() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get accountId => $_getI64(7);
  @$pb.TagNumber(8)
  set accountId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccountId() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccountId() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get confirms => $_getI64(8);
  @$pb.TagNumber(9)
  set confirms($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasConfirms() => $_has(8);
  @$pb.TagNumber(9)
  void clearConfirms() => clearField(9);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
