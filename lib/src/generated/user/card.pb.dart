//
//  Generated code. Do not modify.
//  source: user/card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'card.pbenum.dart';
import 'country.pbenum.dart' as $3;

export 'card.pbenum.dart';

class CardInfo extends $pb.GeneratedMessage {
  factory CardInfo() => create();
  CardInfo._() : super();
  factory CardInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardNo')
    ..e<$3.CurrencyCode>(3, _omitFieldNames ? '' : 'symbol', $pb.PbFieldType.OE, defaultOrMaker: $3.CurrencyCode.UNKNOWNCurrency, valueOf: $3.CurrencyCode.valueOf, enumValues: $3.CurrencyCode.values)
    ..aInt64(4, _omitFieldNames ? '' : 'userId')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(9, _omitFieldNames ? '' : 'expiryDate')
    ..aOS(10, _omitFieldNames ? '' : 'cvv')
    ..aOS(11, _omitFieldNames ? '' : 'openId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardInfo clone() => CardInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardInfo copyWith(void Function(CardInfo) updates) => super.copyWith((message) => updates(message as CardInfo)) as CardInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardInfo create() => CardInfo._();
  CardInfo createEmptyInstance() => create();
  static $pb.PbList<CardInfo> createRepeated() => $pb.PbList<CardInfo>();
  @$core.pragma('dart2js:noInline')
  static CardInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardInfo>(create);
  static CardInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardNo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardNo() => clearField(2);

  @$pb.TagNumber(3)
  $3.CurrencyCode get symbol => $_getN(2);
  @$pb.TagNumber(3)
  set symbol($3.CurrencyCode v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get balance => $_getN(4);
  @$pb.TagNumber(5)
  set balance($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBalance() => $_has(4);
  @$pb.TagNumber(5)
  void clearBalance() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updatedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updatedAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);

  @$pb.TagNumber(9)
  $core.String get expiryDate => $_getSZ(7);
  @$pb.TagNumber(9)
  set expiryDate($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasExpiryDate() => $_has(7);
  @$pb.TagNumber(9)
  void clearExpiryDate() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get cvv => $_getSZ(8);
  @$pb.TagNumber(10)
  set cvv($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasCvv() => $_has(8);
  @$pb.TagNumber(10)
  void clearCvv() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get openId => $_getSZ(9);
  @$pb.TagNumber(11)
  set openId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasOpenId() => $_has(9);
  @$pb.TagNumber(11)
  void clearOpenId() => clearField(11);
}

class ApplyCardRequest extends $pb.GeneratedMessage {
  factory ApplyCardRequest() => create();
  ApplyCardRequest._() : super();
  factory ApplyCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyCardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<$3.CurrencyCode>(2, _omitFieldNames ? '' : 'currency', $pb.PbFieldType.OE, defaultOrMaker: $3.CurrencyCode.UNKNOWNCurrency, valueOf: $3.CurrencyCode.valueOf, enumValues: $3.CurrencyCode.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyCardRequest clone() => ApplyCardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyCardRequest copyWith(void Function(ApplyCardRequest) updates) => super.copyWith((message) => updates(message as ApplyCardRequest)) as ApplyCardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyCardRequest create() => ApplyCardRequest._();
  ApplyCardRequest createEmptyInstance() => create();
  static $pb.PbList<ApplyCardRequest> createRepeated() => $pb.PbList<ApplyCardRequest>();
  @$core.pragma('dart2js:noInline')
  static ApplyCardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyCardRequest>(create);
  static ApplyCardRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $3.CurrencyCode get currency => $_getN(0);
  @$pb.TagNumber(2)
  set currency($3.CurrencyCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrency() => $_has(0);
  @$pb.TagNumber(2)
  void clearCurrency() => clearField(2);
}

class ApplyCardResponse extends $pb.GeneratedMessage {
  factory ApplyCardResponse() => create();
  ApplyCardResponse._() : super();
  factory ApplyCardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyCardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyCardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyCardResponse clone() => ApplyCardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyCardResponse copyWith(void Function(ApplyCardResponse) updates) => super.copyWith((message) => updates(message as ApplyCardResponse)) as ApplyCardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyCardResponse create() => ApplyCardResponse._();
  ApplyCardResponse createEmptyInstance() => create();
  static $pb.PbList<ApplyCardResponse> createRepeated() => $pb.PbList<ApplyCardResponse>();
  @$core.pragma('dart2js:noInline')
  static ApplyCardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyCardResponse>(create);
  static ApplyCardResponse? _defaultInstance;
}

class CardListRequest extends $pb.GeneratedMessage {
  factory CardListRequest() => create();
  CardListRequest._() : super();
  factory CardListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardListRequest clone() => CardListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardListRequest copyWith(void Function(CardListRequest) updates) => super.copyWith((message) => updates(message as CardListRequest)) as CardListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardListRequest create() => CardListRequest._();
  CardListRequest createEmptyInstance() => create();
  static $pb.PbList<CardListRequest> createRepeated() => $pb.PbList<CardListRequest>();
  @$core.pragma('dart2js:noInline')
  static CardListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardListRequest>(create);
  static CardListRequest? _defaultInstance;
}

class CardListResponse extends $pb.GeneratedMessage {
  factory CardListResponse() => create();
  CardListResponse._() : super();
  factory CardListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<CardInfo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CardInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardListResponse clone() => CardListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardListResponse copyWith(void Function(CardListResponse) updates) => super.copyWith((message) => updates(message as CardListResponse)) as CardListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardListResponse create() => CardListResponse._();
  CardListResponse createEmptyInstance() => create();
  static $pb.PbList<CardListResponse> createRepeated() => $pb.PbList<CardListResponse>();
  @$core.pragma('dart2js:noInline')
  static CardListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardListResponse>(create);
  static CardListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CardInfo> get items => $_getList(0);
}

class CardExchangeInfoListRequest extends $pb.GeneratedMessage {
  factory CardExchangeInfoListRequest() => create();
  CardExchangeInfoListRequest._() : super();
  factory CardExchangeInfoListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardExchangeInfoListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardExchangeInfoListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aInt64(2, _omitFieldNames ? '' : 'start')
    ..aInt64(3, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardExchangeInfoListRequest clone() => CardExchangeInfoListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardExchangeInfoListRequest copyWith(void Function(CardExchangeInfoListRequest) updates) => super.copyWith((message) => updates(message as CardExchangeInfoListRequest)) as CardExchangeInfoListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoListRequest create() => CardExchangeInfoListRequest._();
  CardExchangeInfoListRequest createEmptyInstance() => create();
  static $pb.PbList<CardExchangeInfoListRequest> createRepeated() => $pb.PbList<CardExchangeInfoListRequest>();
  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardExchangeInfoListRequest>(create);
  static CardExchangeInfoListRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get start => $_getI64(1);
  @$pb.TagNumber(2)
  set start($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearStart() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);
}

class CardExchangeInfoListResponse extends $pb.GeneratedMessage {
  factory CardExchangeInfoListResponse() => create();
  CardExchangeInfoListResponse._() : super();
  factory CardExchangeInfoListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardExchangeInfoListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardExchangeInfoListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<CardExchangeInfo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CardExchangeInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardExchangeInfoListResponse clone() => CardExchangeInfoListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardExchangeInfoListResponse copyWith(void Function(CardExchangeInfoListResponse) updates) => super.copyWith((message) => updates(message as CardExchangeInfoListResponse)) as CardExchangeInfoListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoListResponse create() => CardExchangeInfoListResponse._();
  CardExchangeInfoListResponse createEmptyInstance() => create();
  static $pb.PbList<CardExchangeInfoListResponse> createRepeated() => $pb.PbList<CardExchangeInfoListResponse>();
  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardExchangeInfoListResponse>(create);
  static CardExchangeInfoListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CardExchangeInfo> get items => $_getList(0);
}

class CardHistoryRequest extends $pb.GeneratedMessage {
  factory CardHistoryRequest() => create();
  CardHistoryRequest._() : super();
  factory CardHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aInt64(2, _omitFieldNames ? '' : 'start')
    ..aInt64(3, _omitFieldNames ? '' : 'limit')
    ..aOS(4, _omitFieldNames ? '' : 'startDate', protoName: 'startDate')
    ..aOS(5, _omitFieldNames ? '' : 'endDate', protoName: 'endDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardHistoryRequest clone() => CardHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardHistoryRequest copyWith(void Function(CardHistoryRequest) updates) => super.copyWith((message) => updates(message as CardHistoryRequest)) as CardHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardHistoryRequest create() => CardHistoryRequest._();
  CardHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<CardHistoryRequest> createRepeated() => $pb.PbList<CardHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static CardHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardHistoryRequest>(create);
  static CardHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get start => $_getI64(1);
  @$pb.TagNumber(2)
  set start($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStart() => $_has(1);
  @$pb.TagNumber(2)
  void clearStart() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(2);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get startDate => $_getSZ(3);
  @$pb.TagNumber(4)
  set startDate($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartDate() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get endDate => $_getSZ(4);
  @$pb.TagNumber(5)
  set endDate($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndDate() => clearField(5);
}

class CardHistoryResponse extends $pb.GeneratedMessage {
  factory CardHistoryResponse() => create();
  CardHistoryResponse._() : super();
  factory CardHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<CardHistoryItem>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CardHistoryItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardHistoryResponse clone() => CardHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardHistoryResponse copyWith(void Function(CardHistoryResponse) updates) => super.copyWith((message) => updates(message as CardHistoryResponse)) as CardHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardHistoryResponse create() => CardHistoryResponse._();
  CardHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<CardHistoryResponse> createRepeated() => $pb.PbList<CardHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static CardHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardHistoryResponse>(create);
  static CardHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CardHistoryItem> get items => $_getList(0);
}

class CardHistoryItem extends $pb.GeneratedMessage {
  factory CardHistoryItem() => create();
  CardHistoryItem._() : super();
  factory CardHistoryItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardHistoryItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardHistoryItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aOS(2, _omitFieldNames ? '' : 'state')
    ..aOS(3, _omitFieldNames ? '' : 'orderNo', protoName: 'orderNo')
    ..aOS(4, _omitFieldNames ? '' : 'tradeCurrency', protoName: 'tradeCurrency')
    ..aOS(5, _omitFieldNames ? '' : 'tradeAmt', protoName: 'tradeAmt')
    ..aOS(6, _omitFieldNames ? '' : 'authCurrency', protoName: 'authCurrency')
    ..aOS(7, _omitFieldNames ? '' : 'authAmt', protoName: 'authAmt')
    ..aOS(8, _omitFieldNames ? '' : 'tradeDes', protoName: 'tradeDes')
    ..aOS(9, _omitFieldNames ? '' : 'authMerchant', protoName: 'authMerchant')
    ..aOS(10, _omitFieldNames ? '' : 'authDate', protoName: 'authDate')
    ..aOS(11, _omitFieldNames ? '' : 'settleAmt', protoName: 'settleAmt')
    ..aOS(12, _omitFieldNames ? '' : 'settleCurrency', protoName: 'settleCurrency')
    ..aOS(13, _omitFieldNames ? '' : 'settleDate', protoName: 'settleDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardHistoryItem clone() => CardHistoryItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardHistoryItem copyWith(void Function(CardHistoryItem) updates) => super.copyWith((message) => updates(message as CardHistoryItem)) as CardHistoryItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardHistoryItem create() => CardHistoryItem._();
  CardHistoryItem createEmptyInstance() => create();
  static $pb.PbList<CardHistoryItem> createRepeated() => $pb.PbList<CardHistoryItem>();
  @$core.pragma('dart2js:noInline')
  static CardHistoryItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardHistoryItem>(create);
  static CardHistoryItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get state => $_getSZ(1);
  @$pb.TagNumber(2)
  set state($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderNo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderNo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tradeCurrency => $_getSZ(3);
  @$pb.TagNumber(4)
  set tradeCurrency($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTradeCurrency() => $_has(3);
  @$pb.TagNumber(4)
  void clearTradeCurrency() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get tradeAmt => $_getSZ(4);
  @$pb.TagNumber(5)
  set tradeAmt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTradeAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearTradeAmt() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get authCurrency => $_getSZ(5);
  @$pb.TagNumber(6)
  set authCurrency($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAuthCurrency() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthCurrency() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get authAmt => $_getSZ(6);
  @$pb.TagNumber(7)
  set authAmt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAuthAmt() => $_has(6);
  @$pb.TagNumber(7)
  void clearAuthAmt() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get tradeDes => $_getSZ(7);
  @$pb.TagNumber(8)
  set tradeDes($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTradeDes() => $_has(7);
  @$pb.TagNumber(8)
  void clearTradeDes() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get authMerchant => $_getSZ(8);
  @$pb.TagNumber(9)
  set authMerchant($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAuthMerchant() => $_has(8);
  @$pb.TagNumber(9)
  void clearAuthMerchant() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get authDate => $_getSZ(9);
  @$pb.TagNumber(10)
  set authDate($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAuthDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearAuthDate() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get settleAmt => $_getSZ(10);
  @$pb.TagNumber(11)
  set settleAmt($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasSettleAmt() => $_has(10);
  @$pb.TagNumber(11)
  void clearSettleAmt() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get settleCurrency => $_getSZ(11);
  @$pb.TagNumber(12)
  set settleCurrency($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasSettleCurrency() => $_has(11);
  @$pb.TagNumber(12)
  void clearSettleCurrency() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get settleDate => $_getSZ(12);
  @$pb.TagNumber(13)
  set settleDate($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSettleDate() => $_has(12);
  @$pb.TagNumber(13)
  void clearSettleDate() => clearField(13);
}

class CardDetailRequest extends $pb.GeneratedMessage {
  factory CardDetailRequest() => create();
  CardDetailRequest._() : super();
  factory CardDetailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardDetailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardDetailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardDetailRequest clone() => CardDetailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardDetailRequest copyWith(void Function(CardDetailRequest) updates) => super.copyWith((message) => updates(message as CardDetailRequest)) as CardDetailRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardDetailRequest create() => CardDetailRequest._();
  CardDetailRequest createEmptyInstance() => create();
  static $pb.PbList<CardDetailRequest> createRepeated() => $pb.PbList<CardDetailRequest>();
  @$core.pragma('dart2js:noInline')
  static CardDetailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardDetailRequest>(create);
  static CardDetailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);
}

class CardDetailResponse extends $pb.GeneratedMessage {
  factory CardDetailResponse() => create();
  CardDetailResponse._() : super();
  factory CardDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aOS(2, _omitFieldNames ? '' : 'expiryData', protoName: 'expiryData')
    ..aOS(3, _omitFieldNames ? '' : 'cvv')
    ..aOS(4, _omitFieldNames ? '' : 'state')
    ..aOS(5, _omitFieldNames ? '' : 'currency')
    ..aOS(6, _omitFieldNames ? '' : 'settleCurrency', protoName: 'settleCurrency')
    ..aOS(7, _omitFieldNames ? '' : 'amount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardDetailResponse clone() => CardDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardDetailResponse copyWith(void Function(CardDetailResponse) updates) => super.copyWith((message) => updates(message as CardDetailResponse)) as CardDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardDetailResponse create() => CardDetailResponse._();
  CardDetailResponse createEmptyInstance() => create();
  static $pb.PbList<CardDetailResponse> createRepeated() => $pb.PbList<CardDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static CardDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardDetailResponse>(create);
  static CardDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get expiryData => $_getSZ(1);
  @$pb.TagNumber(2)
  set expiryData($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpiryData() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiryData() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cvv => $_getSZ(2);
  @$pb.TagNumber(3)
  set cvv($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCvv() => $_has(2);
  @$pb.TagNumber(3)
  void clearCvv() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get state => $_getSZ(3);
  @$pb.TagNumber(4)
  set state($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasState() => $_has(3);
  @$pb.TagNumber(4)
  void clearState() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get currency => $_getSZ(4);
  @$pb.TagNumber(5)
  set currency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrency() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get settleCurrency => $_getSZ(5);
  @$pb.TagNumber(6)
  set settleCurrency($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSettleCurrency() => $_has(5);
  @$pb.TagNumber(6)
  void clearSettleCurrency() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get amount => $_getSZ(6);
  @$pb.TagNumber(7)
  set amount($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAmount() => $_has(6);
  @$pb.TagNumber(7)
  void clearAmount() => clearField(7);
}

class CardWithdrawRequest extends $pb.GeneratedMessage {
  factory CardWithdrawRequest() => create();
  CardWithdrawRequest._() : super();
  factory CardWithdrawRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardWithdrawRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardWithdrawRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardWithdrawRequest clone() => CardWithdrawRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardWithdrawRequest copyWith(void Function(CardWithdrawRequest) updates) => super.copyWith((message) => updates(message as CardWithdrawRequest)) as CardWithdrawRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardWithdrawRequest create() => CardWithdrawRequest._();
  CardWithdrawRequest createEmptyInstance() => create();
  static $pb.PbList<CardWithdrawRequest> createRepeated() => $pb.PbList<CardWithdrawRequest>();
  @$core.pragma('dart2js:noInline')
  static CardWithdrawRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardWithdrawRequest>(create);
  static CardWithdrawRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amt => $_getN(1);
  @$pb.TagNumber(2)
  set amt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);
}

class CardWithdrawResponse extends $pb.GeneratedMessage {
  factory CardWithdrawResponse() => create();
  CardWithdrawResponse._() : super();
  factory CardWithdrawResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardWithdrawResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardWithdrawResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardWithdrawResponse clone() => CardWithdrawResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardWithdrawResponse copyWith(void Function(CardWithdrawResponse) updates) => super.copyWith((message) => updates(message as CardWithdrawResponse)) as CardWithdrawResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardWithdrawResponse create() => CardWithdrawResponse._();
  CardWithdrawResponse createEmptyInstance() => create();
  static $pb.PbList<CardWithdrawResponse> createRepeated() => $pb.PbList<CardWithdrawResponse>();
  @$core.pragma('dart2js:noInline')
  static CardWithdrawResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardWithdrawResponse>(create);
  static CardWithdrawResponse? _defaultInstance;
}

class CardRechargeRequest extends $pb.GeneratedMessage {
  factory CardRechargeRequest() => create();
  CardRechargeRequest._() : super();
  factory CardRechargeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRechargeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRechargeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aOS(2, _omitFieldNames ? '' : 'cardExpireMonth')
    ..aOS(3, _omitFieldNames ? '' : 'cardExpireYear')
    ..aOS(4, _omitFieldNames ? '' : 'cardSecurityCode')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..aOB(6, _omitFieldNames ? '' : 'chargeForNft', protoName: 'chargeForNft')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRechargeRequest clone() => CardRechargeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRechargeRequest copyWith(void Function(CardRechargeRequest) updates) => super.copyWith((message) => updates(message as CardRechargeRequest)) as CardRechargeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRechargeRequest create() => CardRechargeRequest._();
  CardRechargeRequest createEmptyInstance() => create();
  static $pb.PbList<CardRechargeRequest> createRepeated() => $pb.PbList<CardRechargeRequest>();
  @$core.pragma('dart2js:noInline')
  static CardRechargeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRechargeRequest>(create);
  static CardRechargeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardExpireMonth => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardExpireMonth($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardExpireMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardExpireMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get cardExpireYear => $_getSZ(2);
  @$pb.TagNumber(3)
  set cardExpireYear($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCardExpireYear() => $_has(2);
  @$pb.TagNumber(3)
  void clearCardExpireYear() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get cardSecurityCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set cardSecurityCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCardSecurityCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCardSecurityCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get amt => $_getN(4);
  @$pb.TagNumber(5)
  set amt($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmt() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get chargeForNft => $_getBF(5);
  @$pb.TagNumber(6)
  set chargeForNft($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasChargeForNft() => $_has(5);
  @$pb.TagNumber(6)
  void clearChargeForNft() => clearField(6);
}

class CardRechargeResponse extends $pb.GeneratedMessage {
  factory CardRechargeResponse() => create();
  CardRechargeResponse._() : super();
  factory CardRechargeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardRechargeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardRechargeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nftTxid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardRechargeResponse clone() => CardRechargeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardRechargeResponse copyWith(void Function(CardRechargeResponse) updates) => super.copyWith((message) => updates(message as CardRechargeResponse)) as CardRechargeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardRechargeResponse create() => CardRechargeResponse._();
  CardRechargeResponse createEmptyInstance() => create();
  static $pb.PbList<CardRechargeResponse> createRepeated() => $pb.PbList<CardRechargeResponse>();
  @$core.pragma('dart2js:noInline')
  static CardRechargeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardRechargeResponse>(create);
  static CardRechargeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nftTxid => $_getSZ(0);
  @$pb.TagNumber(1)
  set nftTxid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNftTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearNftTxid() => clearField(1);
}

class CardExchangeInfo extends $pb.GeneratedMessage {
  factory CardExchangeInfo() => create();
  CardExchangeInfo._() : super();
  factory CardExchangeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardExchangeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardExchangeInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardNo')
    ..aOS(3, _omitFieldNames ? '' : 'counterParty')
    ..aOS(4, _omitFieldNames ? '' : 'counterPartyNo')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(8, _omitFieldNames ? '' : 'orderNo')
    ..aOS(9, _omitFieldNames ? '' : 'tradeNo')
    ..e<CardExchangeInfo_Status>(10, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: CardExchangeInfo_Status.Unknow, valueOf: CardExchangeInfo_Status.valueOf, enumValues: CardExchangeInfo_Status.values)
    ..aOS(11, _omitFieldNames ? '' : 'errMsg')
    ..aInt64(12, _omitFieldNames ? '' : 'userId')
    ..aOS(13, _omitFieldNames ? '' : 'nftTxid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardExchangeInfo clone() => CardExchangeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardExchangeInfo copyWith(void Function(CardExchangeInfo) updates) => super.copyWith((message) => updates(message as CardExchangeInfo)) as CardExchangeInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardExchangeInfo create() => CardExchangeInfo._();
  CardExchangeInfo createEmptyInstance() => create();
  static $pb.PbList<CardExchangeInfo> createRepeated() => $pb.PbList<CardExchangeInfo>();
  @$core.pragma('dart2js:noInline')
  static CardExchangeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardExchangeInfo>(create);
  static CardExchangeInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get cardNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set cardNo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCardNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearCardNo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get counterParty => $_getSZ(2);
  @$pb.TagNumber(3)
  set counterParty($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCounterParty() => $_has(2);
  @$pb.TagNumber(3)
  void clearCounterParty() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get counterPartyNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set counterPartyNo($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCounterPartyNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearCounterPartyNo() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get amt => $_getN(4);
  @$pb.TagNumber(5)
  set amt($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updatedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updatedAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get orderNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set orderNo($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrderNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrderNo() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get tradeNo => $_getSZ(8);
  @$pb.TagNumber(9)
  set tradeNo($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTradeNo() => $_has(8);
  @$pb.TagNumber(9)
  void clearTradeNo() => clearField(9);

  @$pb.TagNumber(10)
  CardExchangeInfo_Status get status => $_getN(9);
  @$pb.TagNumber(10)
  set status(CardExchangeInfo_Status v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get errMsg => $_getSZ(10);
  @$pb.TagNumber(11)
  set errMsg($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasErrMsg() => $_has(10);
  @$pb.TagNumber(11)
  void clearErrMsg() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get userId => $_getI64(11);
  @$pb.TagNumber(12)
  set userId($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUserId() => $_has(11);
  @$pb.TagNumber(12)
  void clearUserId() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get nftTxid => $_getSZ(12);
  @$pb.TagNumber(13)
  set nftTxid($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasNftTxid() => $_has(12);
  @$pb.TagNumber(13)
  void clearNftTxid() => clearField(13);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
