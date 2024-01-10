//
//  Generated code. Do not modify.
//  source: user/user_wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart' as $0;

class ImportKeyRequest extends $pb.GeneratedMessage {
  factory ImportKeyRequest() => create();
  ImportKeyRequest._() : super();
  factory ImportKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImportKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyhex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImportKeyRequest clone() => ImportKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImportKeyRequest copyWith(void Function(ImportKeyRequest) updates) => super.copyWith((message) => updates(message as ImportKeyRequest)) as ImportKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportKeyRequest create() => ImportKeyRequest._();
  ImportKeyRequest createEmptyInstance() => create();
  static $pb.PbList<ImportKeyRequest> createRepeated() => $pb.PbList<ImportKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static ImportKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportKeyRequest>(create);
  static ImportKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyhex => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyhex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyhex() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyhex() => clearField(1);
}

class ImportKeyResponse extends $pb.GeneratedMessage {
  factory ImportKeyResponse() => create();
  ImportKeyResponse._() : super();
  factory ImportKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImportKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImportKeyResponse clone() => ImportKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImportKeyResponse copyWith(void Function(ImportKeyResponse) updates) => super.copyWith((message) => updates(message as ImportKeyResponse)) as ImportKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImportKeyResponse create() => ImportKeyResponse._();
  ImportKeyResponse createEmptyInstance() => create();
  static $pb.PbList<ImportKeyResponse> createRepeated() => $pb.PbList<ImportKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static ImportKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportKeyResponse>(create);
  static ImportKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class GetTokenBalalanceRequest extends $pb.GeneratedMessage {
  factory GetTokenBalalanceRequest() => create();
  GetTokenBalalanceRequest._() : super();
  factory GetTokenBalalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenBalalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenBalalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenBalalanceRequest clone() => GetTokenBalalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenBalalanceRequest copyWith(void Function(GetTokenBalalanceRequest) updates) => super.copyWith((message) => updates(message as GetTokenBalalanceRequest)) as GetTokenBalalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenBalalanceRequest create() => GetTokenBalalanceRequest._();
  GetTokenBalalanceRequest createEmptyInstance() => create();
  static $pb.PbList<GetTokenBalalanceRequest> createRepeated() => $pb.PbList<GetTokenBalalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTokenBalalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenBalalanceRequest>(create);
  static GetTokenBalalanceRequest? _defaultInstance;
}

class GetTokenBalalanceResponse extends $pb.GeneratedMessage {
  factory GetTokenBalalanceResponse() => create();
  GetTokenBalalanceResponse._() : super();
  factory GetTokenBalalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTokenBalalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTokenBalalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'balanceUsd', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'balanceUsdt', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'balanceUsdc', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'allUsd', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTokenBalalanceResponse clone() => GetTokenBalalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTokenBalalanceResponse copyWith(void Function(GetTokenBalalanceResponse) updates) => super.copyWith((message) => updates(message as GetTokenBalalanceResponse)) as GetTokenBalalanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTokenBalalanceResponse create() => GetTokenBalalanceResponse._();
  GetTokenBalalanceResponse createEmptyInstance() => create();
  static $pb.PbList<GetTokenBalalanceResponse> createRepeated() => $pb.PbList<GetTokenBalalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTokenBalalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTokenBalalanceResponse>(create);
  static GetTokenBalalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get balanceUsd => $_getN(0);
  @$pb.TagNumber(1)
  set balanceUsd($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalanceUsd() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalanceUsd() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get balanceUsdt => $_getN(1);
  @$pb.TagNumber(2)
  set balanceUsdt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalanceUsdt() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalanceUsdt() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get balanceUsdc => $_getN(2);
  @$pb.TagNumber(3)
  set balanceUsdc($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBalanceUsdc() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalanceUsdc() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get allUsd => $_getN(3);
  @$pb.TagNumber(4)
  set allUsd($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAllUsd() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllUsd() => clearField(4);
}

class GetAddressRequest extends $pb.GeneratedMessage {
  factory GetAddressRequest() => create();
  GetAddressRequest._() : super();
  factory GetAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAddressRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddressRequest clone() => GetAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddressRequest copyWith(void Function(GetAddressRequest) updates) => super.copyWith((message) => updates(message as GetAddressRequest)) as GetAddressRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAddressRequest create() => GetAddressRequest._();
  GetAddressRequest createEmptyInstance() => create();
  static $pb.PbList<GetAddressRequest> createRepeated() => $pb.PbList<GetAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddressRequest>(create);
  static GetAddressRequest? _defaultInstance;
}

class GetAddressResponse extends $pb.GeneratedMessage {
  factory GetAddressResponse() => create();
  GetAddressResponse._() : super();
  factory GetAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetAddressResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAddressResponse clone() => GetAddressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAddressResponse copyWith(void Function(GetAddressResponse) updates) => super.copyWith((message) => updates(message as GetAddressResponse)) as GetAddressResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAddressResponse create() => GetAddressResponse._();
  GetAddressResponse createEmptyInstance() => create();
  static $pb.PbList<GetAddressResponse> createRepeated() => $pb.PbList<GetAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAddressResponse>(create);
  static GetAddressResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class DumpKeyRequest extends $pb.GeneratedMessage {
  factory DumpKeyRequest() => create();
  DumpKeyRequest._() : super();
  factory DumpKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DumpKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DumpKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DumpKeyRequest clone() => DumpKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DumpKeyRequest copyWith(void Function(DumpKeyRequest) updates) => super.copyWith((message) => updates(message as DumpKeyRequest)) as DumpKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DumpKeyRequest create() => DumpKeyRequest._();
  DumpKeyRequest createEmptyInstance() => create();
  static $pb.PbList<DumpKeyRequest> createRepeated() => $pb.PbList<DumpKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static DumpKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DumpKeyRequest>(create);
  static DumpKeyRequest? _defaultInstance;
}

class DumpKeyResponse extends $pb.GeneratedMessage {
  factory DumpKeyResponse() => create();
  DumpKeyResponse._() : super();
  factory DumpKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DumpKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DumpKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DumpKeyResponse clone() => DumpKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DumpKeyResponse copyWith(void Function(DumpKeyResponse) updates) => super.copyWith((message) => updates(message as DumpKeyResponse)) as DumpKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DumpKeyResponse create() => DumpKeyResponse._();
  DumpKeyResponse createEmptyInstance() => create();
  static $pb.PbList<DumpKeyResponse> createRepeated() => $pb.PbList<DumpKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static DumpKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DumpKeyResponse>(create);
  static DumpKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class StateTestRequest extends $pb.GeneratedMessage {
  factory StateTestRequest() => create();
  StateTestRequest._() : super();
  factory StateTestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StateTestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StateTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StateTestRequest clone() => StateTestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StateTestRequest copyWith(void Function(StateTestRequest) updates) => super.copyWith((message) => updates(message as StateTestRequest)) as StateTestRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateTestRequest create() => StateTestRequest._();
  StateTestRequest createEmptyInstance() => create();
  static $pb.PbList<StateTestRequest> createRepeated() => $pb.PbList<StateTestRequest>();
  @$core.pragma('dart2js:noInline')
  static StateTestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateTestRequest>(create);
  static StateTestRequest? _defaultInstance;
}

class StateTestResponse extends $pb.GeneratedMessage {
  factory StateTestResponse() => create();
  StateTestResponse._() : super();
  factory StateTestResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StateTestResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StateTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StateTestResponse clone() => StateTestResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StateTestResponse copyWith(void Function(StateTestResponse) updates) => super.copyWith((message) => updates(message as StateTestResponse)) as StateTestResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StateTestResponse create() => StateTestResponse._();
  StateTestResponse createEmptyInstance() => create();
  static $pb.PbList<StateTestResponse> createRepeated() => $pb.PbList<StateTestResponse>();
  @$core.pragma('dart2js:noInline')
  static StateTestResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateTestResponse>(create);
  static StateTestResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get msg => $_getSZ(0);
  @$pb.TagNumber(1)
  set msg($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class ListHistoryRequest extends $pb.GeneratedMessage {
  factory ListHistoryRequest() => create();
  ListHistoryRequest._() : super();
  factory ListHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tokenName')
    ..aInt64(2, _omitFieldNames ? '' : 'page')
    ..aInt64(3, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHistoryRequest clone() => ListHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHistoryRequest copyWith(void Function(ListHistoryRequest) updates) => super.copyWith((message) => updates(message as ListHistoryRequest)) as ListHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListHistoryRequest create() => ListHistoryRequest._();
  ListHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<ListHistoryRequest> createRepeated() => $pb.PbList<ListHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static ListHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHistoryRequest>(create);
  static ListHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tokenName => $_getSZ(0);
  @$pb.TagNumber(1)
  set tokenName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenName() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get page => $_getI64(1);
  @$pb.TagNumber(2)
  set page($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);
}

class ListHistoryResponse extends $pb.GeneratedMessage {
  factory ListHistoryResponse() => create();
  ListHistoryResponse._() : super();
  factory ListHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aInt64(2, _omitFieldNames ? '' : 'page')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..pc<CoinHistory>(5, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CoinHistory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListHistoryResponse clone() => ListHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListHistoryResponse copyWith(void Function(ListHistoryResponse) updates) => super.copyWith((message) => updates(message as ListHistoryResponse)) as ListHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListHistoryResponse create() => ListHistoryResponse._();
  ListHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<ListHistoryResponse> createRepeated() => $pb.PbList<ListHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHistoryResponse>(create);
  static ListHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get page => $_getI64(1);
  @$pb.TagNumber(2)
  set page($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => clearField(3);

  @$pb.TagNumber(5)
  $core.List<CoinHistory> get items => $_getList(3);
}

class TransferRequest extends $pb.GeneratedMessage {
  factory TransferRequest() => create();
  TransferRequest._() : super();
  factory TransferRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransferRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'to')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..e<$0.NetWork>(3, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE, defaultOrMaker: $0.NetWork.UnKownNetWork, valueOf: $0.NetWork.valueOf, enumValues: $0.NetWork.values)
    ..e<$0.TrackedTx_ContractSymbol>(4, _omitFieldNames ? '' : 'token', $pb.PbFieldType.OE, defaultOrMaker: $0.TrackedTx_ContractSymbol.USD, valueOf: $0.TrackedTx_ContractSymbol.valueOf, enumValues: $0.TrackedTx_ContractSymbol.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferRequest clone() => TransferRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferRequest copyWith(void Function(TransferRequest) updates) => super.copyWith((message) => updates(message as TransferRequest)) as TransferRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferRequest create() => TransferRequest._();
  TransferRequest createEmptyInstance() => create();
  static $pb.PbList<TransferRequest> createRepeated() => $pb.PbList<TransferRequest>();
  @$core.pragma('dart2js:noInline')
  static TransferRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferRequest>(create);
  static TransferRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get to => $_getSZ(0);
  @$pb.TagNumber(1)
  set to($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearTo() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amt => $_getN(1);
  @$pb.TagNumber(2)
  set amt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);

  @$pb.TagNumber(3)
  $0.NetWork get network => $_getN(2);
  @$pb.TagNumber(3)
  set network($0.NetWork v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNetwork() => $_has(2);
  @$pb.TagNumber(3)
  void clearNetwork() => clearField(3);

  @$pb.TagNumber(4)
  $0.TrackedTx_ContractSymbol get token => $_getN(3);
  @$pb.TagNumber(4)
  set token($0.TrackedTx_ContractSymbol v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearToken() => clearField(4);
}

class TransferResponse extends $pb.GeneratedMessage {
  factory TransferResponse() => create();
  TransferResponse._() : super();
  factory TransferResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransferResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferResponse clone() => TransferResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferResponse copyWith(void Function(TransferResponse) updates) => super.copyWith((message) => updates(message as TransferResponse)) as TransferResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferResponse create() => TransferResponse._();
  TransferResponse createEmptyInstance() => create();
  static $pb.PbList<TransferResponse> createRepeated() => $pb.PbList<TransferResponse>();
  @$core.pragma('dart2js:noInline')
  static TransferResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferResponse>(create);
  static TransferResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);
}

class TransferTokenRequest extends $pb.GeneratedMessage {
  factory TransferTokenRequest() => create();
  TransferTokenRequest._() : super();
  factory TransferTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransferTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<$0.TrackedTx_ContractSymbol>(1, _omitFieldNames ? '' : 'token', $pb.PbFieldType.OE, defaultOrMaker: $0.TrackedTx_ContractSymbol.USD, valueOf: $0.TrackedTx_ContractSymbol.valueOf, enumValues: $0.TrackedTx_ContractSymbol.values)
    ..aOS(2, _omitFieldNames ? '' : 'to')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..e<$0.NetWork>(4, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE, defaultOrMaker: $0.NetWork.UnKownNetWork, valueOf: $0.NetWork.valueOf, enumValues: $0.NetWork.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferTokenRequest clone() => TransferTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferTokenRequest copyWith(void Function(TransferTokenRequest) updates) => super.copyWith((message) => updates(message as TransferTokenRequest)) as TransferTokenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferTokenRequest create() => TransferTokenRequest._();
  TransferTokenRequest createEmptyInstance() => create();
  static $pb.PbList<TransferTokenRequest> createRepeated() => $pb.PbList<TransferTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static TransferTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferTokenRequest>(create);
  static TransferTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.TrackedTx_ContractSymbol get token => $_getN(0);
  @$pb.TagNumber(1)
  set token($0.TrackedTx_ContractSymbol v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get to => $_getSZ(1);
  @$pb.TagNumber(2)
  set to($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get amt => $_getN(2);
  @$pb.TagNumber(3)
  set amt($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmt() => clearField(3);

  @$pb.TagNumber(4)
  $0.NetWork get network => $_getN(3);
  @$pb.TagNumber(4)
  set network($0.NetWork v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNetwork() => $_has(3);
  @$pb.TagNumber(4)
  void clearNetwork() => clearField(4);
}

class TransferTokenResponse extends $pb.GeneratedMessage {
  factory TransferTokenResponse() => create();
  TransferTokenResponse._() : super();
  factory TransferTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransferTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransferTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransferTokenResponse clone() => TransferTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransferTokenResponse copyWith(void Function(TransferTokenResponse) updates) => super.copyWith((message) => updates(message as TransferTokenResponse)) as TransferTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferTokenResponse create() => TransferTokenResponse._();
  TransferTokenResponse createEmptyInstance() => create();
  static $pb.PbList<TransferTokenResponse> createRepeated() => $pb.PbList<TransferTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static TransferTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransferTokenResponse>(create);
  static TransferTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);
}

class TrackTxRequest extends $pb.GeneratedMessage {
  factory TrackTxRequest() => create();
  TrackTxRequest._() : super();
  factory TrackTxRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackTxRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackTxRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackTxRequest clone() => TrackTxRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackTxRequest copyWith(void Function(TrackTxRequest) updates) => super.copyWith((message) => updates(message as TrackTxRequest)) as TrackTxRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackTxRequest create() => TrackTxRequest._();
  TrackTxRequest createEmptyInstance() => create();
  static $pb.PbList<TrackTxRequest> createRepeated() => $pb.PbList<TrackTxRequest>();
  @$core.pragma('dart2js:noInline')
  static TrackTxRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackTxRequest>(create);
  static TrackTxRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);
}

class TrackTxResponse extends $pb.GeneratedMessage {
  factory TrackTxResponse() => create();
  TrackTxResponse._() : super();
  factory TrackTxResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackTxResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrackTxResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackTxResponse clone() => TrackTxResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackTxResponse copyWith(void Function(TrackTxResponse) updates) => super.copyWith((message) => updates(message as TrackTxResponse)) as TrackTxResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrackTxResponse create() => TrackTxResponse._();
  TrackTxResponse createEmptyInstance() => create();
  static $pb.PbList<TrackTxResponse> createRepeated() => $pb.PbList<TrackTxResponse>();
  @$core.pragma('dart2js:noInline')
  static TrackTxResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackTxResponse>(create);
  static TrackTxResponse? _defaultInstance;
}

class AddTokenResponse extends $pb.GeneratedMessage {
  factory AddTokenResponse() => create();
  AddTokenResponse._() : super();
  factory AddTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTokenResponse clone() => AddTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTokenResponse copyWith(void Function(AddTokenResponse) updates) => super.copyWith((message) => updates(message as AddTokenResponse)) as AddTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddTokenResponse create() => AddTokenResponse._();
  AddTokenResponse createEmptyInstance() => create();
  static $pb.PbList<AddTokenResponse> createRepeated() => $pb.PbList<AddTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static AddTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTokenResponse>(create);
  static AddTokenResponse? _defaultInstance;
}

class CoinHistory extends $pb.GeneratedMessage {
  factory CoinHistory() => create();
  CoinHistory._() : super();
  factory CoinHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CoinHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CoinHistory', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'TokenAddress', protoName: 'TokenAddress')
    ..aOS(3, _omitFieldNames ? '' : 'TokenName', protoName: 'TokenName')
    ..aOS(4, _omitFieldNames ? '' : 'To', protoName: 'To')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'txId')
    ..aInt64(7, _omitFieldNames ? '' : 'updatedAt')
    ..e<$0.NetWork>(8, _omitFieldNames ? '' : 'network', $pb.PbFieldType.OE, defaultOrMaker: $0.NetWork.UnKownNetWork, valueOf: $0.NetWork.valueOf, enumValues: $0.NetWork.values)
    ..aOS(9, _omitFieldNames ? '' : 'userAddress')
    ..aInt64(10, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CoinHistory clone() => CoinHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CoinHistory copyWith(void Function(CoinHistory) updates) => super.copyWith((message) => updates(message as CoinHistory)) as CoinHistory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoinHistory create() => CoinHistory._();
  CoinHistory createEmptyInstance() => create();
  static $pb.PbList<CoinHistory> createRepeated() => $pb.PbList<CoinHistory>();
  @$core.pragma('dart2js:noInline')
  static CoinHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CoinHistory>(create);
  static CoinHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tokenAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tokenName => $_getSZ(2);
  @$pb.TagNumber(3)
  set tokenName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTokenName() => $_has(2);
  @$pb.TagNumber(3)
  void clearTokenName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get to => $_getSZ(3);
  @$pb.TagNumber(4)
  set to($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get amt => $_getN(4);
  @$pb.TagNumber(5)
  set amt($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmt() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get txId => $_getSZ(5);
  @$pb.TagNumber(6)
  set txId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTxId() => $_has(5);
  @$pb.TagNumber(6)
  void clearTxId() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updatedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updatedAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $0.NetWork get network => $_getN(7);
  @$pb.TagNumber(8)
  set network($0.NetWork v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasNetwork() => $_has(7);
  @$pb.TagNumber(8)
  void clearNetwork() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get userAddress => $_getSZ(8);
  @$pb.TagNumber(9)
  set userAddress($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUserAddress() => $_has(8);
  @$pb.TagNumber(9)
  void clearUserAddress() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get userId => $_getI64(9);
  @$pb.TagNumber(10)
  set userId($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserId() => $_has(9);
  @$pb.TagNumber(10)
  void clearUserId() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
