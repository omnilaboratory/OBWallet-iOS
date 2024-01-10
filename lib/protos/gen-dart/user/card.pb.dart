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

import 'account.pb.dart' as $0;
import 'card.pbenum.dart';
import 'country.pbenum.dart' as $5;

export 'card.pbenum.dart';

class BuyNftForPayRequest extends $pb.GeneratedMessage {
  factory BuyNftForPayRequest() => create();
  BuyNftForPayRequest._() : super();
  factory BuyNftForPayRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyNftForPayRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyNftForPayRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mail')
    ..aOS(2, _omitFieldNames ? '' : 'tradeNo')
    ..aOS(3, _omitFieldNames ? '' : 'bankcardNo')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'currency')
    ..aInt64(6, _omitFieldNames ? '' : 'orderTime')
    ..aInt64(7, _omitFieldNames ? '' : 'paymentTime')
    ..aOS(8, _omitFieldNames ? '' : 'orderId')
    ..aOS(9, _omitFieldNames ? '' : 'merNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyNftForPayRequest clone() => BuyNftForPayRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyNftForPayRequest copyWith(void Function(BuyNftForPayRequest) updates) => super.copyWith((message) => updates(message as BuyNftForPayRequest)) as BuyNftForPayRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyNftForPayRequest create() => BuyNftForPayRequest._();
  BuyNftForPayRequest createEmptyInstance() => create();
  static $pb.PbList<BuyNftForPayRequest> createRepeated() => $pb.PbList<BuyNftForPayRequest>();
  @$core.pragma('dart2js:noInline')
  static BuyNftForPayRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyNftForPayRequest>(create);
  static BuyNftForPayRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mail => $_getSZ(0);
  @$pb.TagNumber(1)
  set mail($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMail() => $_has(0);
  @$pb.TagNumber(1)
  void clearMail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tradeNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set tradeNo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTradeNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTradeNo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get bankcardNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set bankcardNo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBankcardNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearBankcardNo() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get amt => $_getN(3);
  @$pb.TagNumber(4)
  set amt($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmt() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get currency => $_getSZ(4);
  @$pb.TagNumber(5)
  set currency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrency() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get orderTime => $_getI64(5);
  @$pb.TagNumber(6)
  set orderTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOrderTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearOrderTime() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get paymentTime => $_getI64(6);
  @$pb.TagNumber(7)
  set paymentTime($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPaymentTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearPaymentTime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get orderId => $_getSZ(7);
  @$pb.TagNumber(8)
  set orderId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrderId() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrderId() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get merNo => $_getSZ(8);
  @$pb.TagNumber(9)
  set merNo($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMerNo() => $_has(8);
  @$pb.TagNumber(9)
  void clearMerNo() => clearField(9);
}

class BuyNftForPayResponse extends $pb.GeneratedMessage {
  factory BuyNftForPayResponse() => create();
  BuyNftForPayResponse._() : super();
  factory BuyNftForPayResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuyNftForPayResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyNftForPayResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orderid')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuyNftForPayResponse clone() => BuyNftForPayResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuyNftForPayResponse copyWith(void Function(BuyNftForPayResponse) updates) => super.copyWith((message) => updates(message as BuyNftForPayResponse)) as BuyNftForPayResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyNftForPayResponse create() => BuyNftForPayResponse._();
  BuyNftForPayResponse createEmptyInstance() => create();
  static $pb.PbList<BuyNftForPayResponse> createRepeated() => $pb.PbList<BuyNftForPayResponse>();
  @$core.pragma('dart2js:noInline')
  static BuyNftForPayResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyNftForPayResponse>(create);
  static BuyNftForPayResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderid => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderid() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);
}

class CardInfo extends $pb.GeneratedMessage {
  factory CardInfo() => create();
  CardInfo._() : super();
  factory CardInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'cardNo')
    ..e<$5.CurrencyCode>(3, _omitFieldNames ? '' : 'symbol', $pb.PbFieldType.OE, defaultOrMaker: $5.CurrencyCode.UNKNOWNCurrency, valueOf: $5.CurrencyCode.valueOf, enumValues: $5.CurrencyCode.values)
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
  $5.CurrencyCode get symbol => $_getN(2);
  @$pb.TagNumber(3)
  set symbol($5.CurrencyCode v) { setField(3, v); }
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

class ListPcardApplyInfoRequest extends $pb.GeneratedMessage {
  factory ListPcardApplyInfoRequest() => create();
  ListPcardApplyInfoRequest._() : super();
  factory ListPcardApplyInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPcardApplyInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPcardApplyInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orderBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPcardApplyInfoRequest clone() => ListPcardApplyInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPcardApplyInfoRequest copyWith(void Function(ListPcardApplyInfoRequest) updates) => super.copyWith((message) => updates(message as ListPcardApplyInfoRequest)) as ListPcardApplyInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPcardApplyInfoRequest create() => ListPcardApplyInfoRequest._();
  ListPcardApplyInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ListPcardApplyInfoRequest> createRepeated() => $pb.PbList<ListPcardApplyInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPcardApplyInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPcardApplyInfoRequest>(create);
  static ListPcardApplyInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderBy => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderBy($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderBy() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderBy() => clearField(1);
}

class ListPcardApplyInfoResponse extends $pb.GeneratedMessage {
  factory ListPcardApplyInfoResponse() => create();
  ListPcardApplyInfoResponse._() : super();
  factory ListPcardApplyInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPcardApplyInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPcardApplyInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<PcardApplyInfo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PcardApplyInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPcardApplyInfoResponse clone() => ListPcardApplyInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPcardApplyInfoResponse copyWith(void Function(ListPcardApplyInfoResponse) updates) => super.copyWith((message) => updates(message as ListPcardApplyInfoResponse)) as ListPcardApplyInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPcardApplyInfoResponse create() => ListPcardApplyInfoResponse._();
  ListPcardApplyInfoResponse createEmptyInstance() => create();
  static $pb.PbList<ListPcardApplyInfoResponse> createRepeated() => $pb.PbList<ListPcardApplyInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPcardApplyInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPcardApplyInfoResponse>(create);
  static ListPcardApplyInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PcardApplyInfo> get items => $_getList(0);
}

class UserUploadRequest extends $pb.GeneratedMessage {
  factory UserUploadRequest() => create();
  UserUploadRequest._() : super();
  factory UserUploadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUploadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserUploadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fileName')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'fileBytes', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserUploadRequest clone() => UserUploadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserUploadRequest copyWith(void Function(UserUploadRequest) updates) => super.copyWith((message) => updates(message as UserUploadRequest)) as UserUploadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserUploadRequest create() => UserUploadRequest._();
  UserUploadRequest createEmptyInstance() => create();
  static $pb.PbList<UserUploadRequest> createRepeated() => $pb.PbList<UserUploadRequest>();
  @$core.pragma('dart2js:noInline')
  static UserUploadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUploadRequest>(create);
  static UserUploadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fileBytes => $_getN(1);
  @$pb.TagNumber(2)
  set fileBytes($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileBytes() => clearField(2);
}

class UserUploadResponse extends $pb.GeneratedMessage {
  factory UserUploadResponse() => create();
  UserUploadResponse._() : super();
  factory UserUploadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserUploadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserUploadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(3, _omitFieldNames ? '' : 'fileUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserUploadResponse clone() => UserUploadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserUploadResponse copyWith(void Function(UserUploadResponse) updates) => super.copyWith((message) => updates(message as UserUploadResponse)) as UserUploadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserUploadResponse create() => UserUploadResponse._();
  UserUploadResponse createEmptyInstance() => create();
  static $pb.PbList<UserUploadResponse> createRepeated() => $pb.PbList<UserUploadResponse>();
  @$core.pragma('dart2js:noInline')
  static UserUploadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserUploadResponse>(create);
  static UserUploadResponse? _defaultInstance;

  @$pb.TagNumber(3)
  $core.String get fileUrl => $_getSZ(0);
  @$pb.TagNumber(3)
  set fileUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasFileUrl() => $_has(0);
  @$pb.TagNumber(3)
  void clearFileUrl() => clearField(3);
}

class GetPcardApplyInfoRequest extends $pb.GeneratedMessage {
  factory GetPcardApplyInfoRequest() => create();
  GetPcardApplyInfoRequest._() : super();
  factory GetPcardApplyInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPcardApplyInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPcardApplyInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPcardApplyInfoRequest clone() => GetPcardApplyInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPcardApplyInfoRequest copyWith(void Function(GetPcardApplyInfoRequest) updates) => super.copyWith((message) => updates(message as GetPcardApplyInfoRequest)) as GetPcardApplyInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPcardApplyInfoRequest create() => GetPcardApplyInfoRequest._();
  GetPcardApplyInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetPcardApplyInfoRequest> createRepeated() => $pb.PbList<GetPcardApplyInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPcardApplyInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPcardApplyInfoRequest>(create);
  static GetPcardApplyInfoRequest? _defaultInstance;
}

class PcardApplyInfo extends $pb.GeneratedMessage {
  factory PcardApplyInfo() => create();
  PcardApplyInfo._() : super();
  factory PcardApplyInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PcardApplyInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PcardApplyInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'idType', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'idNo')
    ..aOS(4, _omitFieldNames ? '' : 'idName')
    ..aOS(5, _omitFieldNames ? '' : 'bod')
    ..aOS(6, _omitFieldNames ? '' : 'firstName')
    ..aOS(7, _omitFieldNames ? '' : 'lastName')
    ..aOS(8, _omitFieldNames ? '' : 'shippingRegion')
    ..aOS(9, _omitFieldNames ? '' : 'shippingAddressType')
    ..aOS(10, _omitFieldNames ? '' : 'shippingProvince')
    ..aOS(11, _omitFieldNames ? '' : 'shippingCity')
    ..aOS(12, _omitFieldNames ? '' : 'postcode')
    ..aOS(13, _omitFieldNames ? '' : 'shippingAddress')
    ..aOS(14, _omitFieldNames ? '' : 'gender')
    ..aOS(15, _omitFieldNames ? '' : 'mobile')
    ..aOS(16, _omitFieldNames ? '' : 'foreignAddress')
    ..aOS(17, _omitFieldNames ? '' : 'foreignCity')
    ..aOS(18, _omitFieldNames ? '' : 'foreignPostcode')
    ..aOS(19, _omitFieldNames ? '' : 'maritalStatus')
    ..aOS(20, _omitFieldNames ? '' : 'idImage1')
    ..aOS(21, _omitFieldNames ? '' : 'idImage2')
    ..aInt64(22, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(23, _omitFieldNames ? '' : 'updatedAt')
    ..aOS(24, _omitFieldNames ? '' : 'cardNo')
    ..aOS(25, _omitFieldNames ? '' : 'status')
    ..aOS(26, _omitFieldNames ? '' : 'statusMsg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PcardApplyInfo clone() => PcardApplyInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PcardApplyInfo copyWith(void Function(PcardApplyInfo) updates) => super.copyWith((message) => updates(message as PcardApplyInfo)) as PcardApplyInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PcardApplyInfo create() => PcardApplyInfo._();
  PcardApplyInfo createEmptyInstance() => create();
  static $pb.PbList<PcardApplyInfo> createRepeated() => $pb.PbList<PcardApplyInfo>();
  @$core.pragma('dart2js:noInline')
  static PcardApplyInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PcardApplyInfo>(create);
  static PcardApplyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get idType => $_getIZ(1);
  @$pb.TagNumber(2)
  set idType($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdType() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get idNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set idNo($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdNo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get idName => $_getSZ(3);
  @$pb.TagNumber(4)
  set idName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdName() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get bod => $_getSZ(4);
  @$pb.TagNumber(5)
  set bod($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBod() => $_has(4);
  @$pb.TagNumber(5)
  void clearBod() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get firstName => $_getSZ(5);
  @$pb.TagNumber(6)
  set firstName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFirstName() => $_has(5);
  @$pb.TagNumber(6)
  void clearFirstName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get lastName => $_getSZ(6);
  @$pb.TagNumber(7)
  set lastName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastName() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get shippingRegion => $_getSZ(7);
  @$pb.TagNumber(8)
  set shippingRegion($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasShippingRegion() => $_has(7);
  @$pb.TagNumber(8)
  void clearShippingRegion() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get shippingAddressType => $_getSZ(8);
  @$pb.TagNumber(9)
  set shippingAddressType($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasShippingAddressType() => $_has(8);
  @$pb.TagNumber(9)
  void clearShippingAddressType() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get shippingProvince => $_getSZ(9);
  @$pb.TagNumber(10)
  set shippingProvince($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasShippingProvince() => $_has(9);
  @$pb.TagNumber(10)
  void clearShippingProvince() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get shippingCity => $_getSZ(10);
  @$pb.TagNumber(11)
  set shippingCity($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasShippingCity() => $_has(10);
  @$pb.TagNumber(11)
  void clearShippingCity() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get postcode => $_getSZ(11);
  @$pb.TagNumber(12)
  set postcode($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPostcode() => $_has(11);
  @$pb.TagNumber(12)
  void clearPostcode() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get shippingAddress => $_getSZ(12);
  @$pb.TagNumber(13)
  set shippingAddress($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasShippingAddress() => $_has(12);
  @$pb.TagNumber(13)
  void clearShippingAddress() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get gender => $_getSZ(13);
  @$pb.TagNumber(14)
  set gender($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasGender() => $_has(13);
  @$pb.TagNumber(14)
  void clearGender() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get mobile => $_getSZ(14);
  @$pb.TagNumber(15)
  set mobile($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasMobile() => $_has(14);
  @$pb.TagNumber(15)
  void clearMobile() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get foreignAddress => $_getSZ(15);
  @$pb.TagNumber(16)
  set foreignAddress($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasForeignAddress() => $_has(15);
  @$pb.TagNumber(16)
  void clearForeignAddress() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get foreignCity => $_getSZ(16);
  @$pb.TagNumber(17)
  set foreignCity($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasForeignCity() => $_has(16);
  @$pb.TagNumber(17)
  void clearForeignCity() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get foreignPostcode => $_getSZ(17);
  @$pb.TagNumber(18)
  set foreignPostcode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasForeignPostcode() => $_has(17);
  @$pb.TagNumber(18)
  void clearForeignPostcode() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get maritalStatus => $_getSZ(18);
  @$pb.TagNumber(19)
  set maritalStatus($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasMaritalStatus() => $_has(18);
  @$pb.TagNumber(19)
  void clearMaritalStatus() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get idImage1 => $_getSZ(19);
  @$pb.TagNumber(20)
  set idImage1($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasIdImage1() => $_has(19);
  @$pb.TagNumber(20)
  void clearIdImage1() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get idImage2 => $_getSZ(20);
  @$pb.TagNumber(21)
  set idImage2($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasIdImage2() => $_has(20);
  @$pb.TagNumber(21)
  void clearIdImage2() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get createdAt => $_getI64(21);
  @$pb.TagNumber(22)
  set createdAt($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasCreatedAt() => $_has(21);
  @$pb.TagNumber(22)
  void clearCreatedAt() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get updatedAt => $_getI64(22);
  @$pb.TagNumber(23)
  set updatedAt($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasUpdatedAt() => $_has(22);
  @$pb.TagNumber(23)
  void clearUpdatedAt() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get cardNo => $_getSZ(23);
  @$pb.TagNumber(24)
  set cardNo($core.String v) { $_setString(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasCardNo() => $_has(23);
  @$pb.TagNumber(24)
  void clearCardNo() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get status => $_getSZ(24);
  @$pb.TagNumber(25)
  set status($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasStatus() => $_has(24);
  @$pb.TagNumber(25)
  void clearStatus() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get statusMsg => $_getSZ(25);
  @$pb.TagNumber(26)
  set statusMsg($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasStatusMsg() => $_has(25);
  @$pb.TagNumber(26)
  void clearStatusMsg() => clearField(26);
}

class ApplyCardRequest extends $pb.GeneratedMessage {
  factory ApplyCardRequest() => create();
  ApplyCardRequest._() : super();
  factory ApplyCardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyCardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyCardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<$5.CurrencyCode>(2, _omitFieldNames ? '' : 'currency', $pb.PbFieldType.OE, defaultOrMaker: $5.CurrencyCode.UNKNOWNCurrency, valueOf: $5.CurrencyCode.valueOf, enumValues: $5.CurrencyCode.values)
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
  $5.CurrencyCode get currency => $_getN(0);
  @$pb.TagNumber(2)
  set currency($5.CurrencyCode v) { setField(2, v); }
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

class CardExchangeInfoWithNftListRequest extends $pb.GeneratedMessage {
  factory CardExchangeInfoWithNftListRequest() => create();
  CardExchangeInfoWithNftListRequest._() : super();
  factory CardExchangeInfoWithNftListRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardExchangeInfoWithNftListRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardExchangeInfoWithNftListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'start')
    ..aInt64(3, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardExchangeInfoWithNftListRequest clone() => CardExchangeInfoWithNftListRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardExchangeInfoWithNftListRequest copyWith(void Function(CardExchangeInfoWithNftListRequest) updates) => super.copyWith((message) => updates(message as CardExchangeInfoWithNftListRequest)) as CardExchangeInfoWithNftListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoWithNftListRequest create() => CardExchangeInfoWithNftListRequest._();
  CardExchangeInfoWithNftListRequest createEmptyInstance() => create();
  static $pb.PbList<CardExchangeInfoWithNftListRequest> createRepeated() => $pb.PbList<CardExchangeInfoWithNftListRequest>();
  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoWithNftListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardExchangeInfoWithNftListRequest>(create);
  static CardExchangeInfoWithNftListRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $fixnum.Int64 get start => $_getI64(0);
  @$pb.TagNumber(2)
  set start($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(2)
  void clearStart() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(3)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(3)
  void clearLimit() => clearField(3);
}

class CardExchangeInfoWithNftListResponse extends $pb.GeneratedMessage {
  factory CardExchangeInfoWithNftListResponse() => create();
  CardExchangeInfoWithNftListResponse._() : super();
  factory CardExchangeInfoWithNftListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardExchangeInfoWithNftListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardExchangeInfoWithNftListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<CardExchangeInfo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CardExchangeInfo.create)
    ..pc<$0.NftTokenEvent>(2, _omitFieldNames ? '' : 'nfts', $pb.PbFieldType.PM, subBuilder: $0.NftTokenEvent.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardExchangeInfoWithNftListResponse clone() => CardExchangeInfoWithNftListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardExchangeInfoWithNftListResponse copyWith(void Function(CardExchangeInfoWithNftListResponse) updates) => super.copyWith((message) => updates(message as CardExchangeInfoWithNftListResponse)) as CardExchangeInfoWithNftListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoWithNftListResponse create() => CardExchangeInfoWithNftListResponse._();
  CardExchangeInfoWithNftListResponse createEmptyInstance() => create();
  static $pb.PbList<CardExchangeInfoWithNftListResponse> createRepeated() => $pb.PbList<CardExchangeInfoWithNftListResponse>();
  @$core.pragma('dart2js:noInline')
  static CardExchangeInfoWithNftListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardExchangeInfoWithNftListResponse>(create);
  static CardExchangeInfoWithNftListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<CardExchangeInfo> get items => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$0.NftTokenEvent> get nfts => $_getList(1);
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

class GetWithdrawResAmtRequest extends $pb.GeneratedMessage {
  factory GetWithdrawResAmtRequest() => create();
  GetWithdrawResAmtRequest._() : super();
  factory GetWithdrawResAmtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWithdrawResAmtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWithdrawResAmtRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWithdrawResAmtRequest clone() => GetWithdrawResAmtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWithdrawResAmtRequest copyWith(void Function(GetWithdrawResAmtRequest) updates) => super.copyWith((message) => updates(message as GetWithdrawResAmtRequest)) as GetWithdrawResAmtRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWithdrawResAmtRequest create() => GetWithdrawResAmtRequest._();
  GetWithdrawResAmtRequest createEmptyInstance() => create();
  static $pb.PbList<GetWithdrawResAmtRequest> createRepeated() => $pb.PbList<GetWithdrawResAmtRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWithdrawResAmtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWithdrawResAmtRequest>(create);
  static GetWithdrawResAmtRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.double get amt => $_getN(0);
  @$pb.TagNumber(2)
  set amt($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(0);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);
}

class GetWithdrawResAmtResponse extends $pb.GeneratedMessage {
  factory GetWithdrawResAmtResponse() => create();
  GetWithdrawResAmtResponse._() : super();
  factory GetWithdrawResAmtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWithdrawResAmtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWithdrawResAmtResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWithdrawResAmtResponse clone() => GetWithdrawResAmtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWithdrawResAmtResponse copyWith(void Function(GetWithdrawResAmtResponse) updates) => super.copyWith((message) => updates(message as GetWithdrawResAmtResponse)) as GetWithdrawResAmtResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWithdrawResAmtResponse create() => GetWithdrawResAmtResponse._();
  GetWithdrawResAmtResponse createEmptyInstance() => create();
  static $pb.PbList<GetWithdrawResAmtResponse> createRepeated() => $pb.PbList<GetWithdrawResAmtResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWithdrawResAmtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWithdrawResAmtResponse>(create);
  static GetWithdrawResAmtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get fee => $_getN(0);
  @$pb.TagNumber(1)
  set fee($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearFee() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amt => $_getN(1);
  @$pb.TagNumber(2)
  set amt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);
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
    ..aOB(7, _omitFieldNames ? '' : 'withDynamicNft')
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'tokenIds', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'values', $pb.PbFieldType.K6)
    ..aOB(11, _omitFieldNames ? '' : 'chargeForCreateVirtualCard', protoName: 'chargeForCreateVirtualCard')
    ..aOB(12, _omitFieldNames ? '' : 'chargeForCreatePhysicalCard', protoName: 'chargeForCreatePhysicalCard')
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

  @$pb.TagNumber(7)
  $core.bool get withDynamicNft => $_getBF(6);
  @$pb.TagNumber(7)
  set withDynamicNft($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasWithDynamicNft() => $_has(6);
  @$pb.TagNumber(7)
  void clearWithDynamicNft() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get tokenIds => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$fixnum.Int64> get values => $_getList(8);

  @$pb.TagNumber(11)
  $core.bool get chargeForCreateVirtualCard => $_getBF(9);
  @$pb.TagNumber(11)
  set chargeForCreateVirtualCard($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasChargeForCreateVirtualCard() => $_has(9);
  @$pb.TagNumber(11)
  void clearChargeForCreateVirtualCard() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get chargeForCreatePhysicalCard => $_getBF(10);
  @$pb.TagNumber(12)
  set chargeForCreatePhysicalCard($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasChargeForCreatePhysicalCard() => $_has(10);
  @$pb.TagNumber(12)
  void clearChargeForCreatePhysicalCard() => clearField(12);
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
    ..aInt64(14, _omitFieldNames ? '' : 'yzStatus')
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

  @$pb.TagNumber(14)
  $fixnum.Int64 get yzStatus => $_getI64(13);
  @$pb.TagNumber(14)
  set yzStatus($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasYzStatus() => $_has(13);
  @$pb.TagNumber(14)
  void clearYzStatus() => clearField(14);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
