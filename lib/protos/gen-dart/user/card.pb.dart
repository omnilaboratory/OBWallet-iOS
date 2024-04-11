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
    ..aOB(8, _omitFieldNames ? '' : 'isVcard')
    ..aOS(9, _omitFieldNames ? '' : 'expiryDate')
    ..aOS(10, _omitFieldNames ? '' : 'cvv')
    ..aOS(11, _omitFieldNames ? '' : 'openId')
    ..aInt64(12, _omitFieldNames ? '' : 'pcardStatus')
    ..aOS(13, _omitFieldNames ? '' : 'realCardNo')
    ..aOS(14, _omitFieldNames ? '' : 'cardLogId', protoName: 'cardLogId')
    ..aInt64(15, _omitFieldNames ? '' : 'agentId')
    ..aOS(16, _omitFieldNames ? '' : 'userEmail')
    ..aOS(17, _omitFieldNames ? '' : 'userName')
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

  @$pb.TagNumber(8)
  $core.bool get isVcard => $_getBF(7);
  @$pb.TagNumber(8)
  set isVcard($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsVcard() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsVcard() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get expiryDate => $_getSZ(8);
  @$pb.TagNumber(9)
  set expiryDate($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExpiryDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearExpiryDate() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get cvv => $_getSZ(9);
  @$pb.TagNumber(10)
  set cvv($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCvv() => $_has(9);
  @$pb.TagNumber(10)
  void clearCvv() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get openId => $_getSZ(10);
  @$pb.TagNumber(11)
  set openId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOpenId() => $_has(10);
  @$pb.TagNumber(11)
  void clearOpenId() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get pcardStatus => $_getI64(11);
  @$pb.TagNumber(12)
  set pcardStatus($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPcardStatus() => $_has(11);
  @$pb.TagNumber(12)
  void clearPcardStatus() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get realCardNo => $_getSZ(12);
  @$pb.TagNumber(13)
  set realCardNo($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasRealCardNo() => $_has(12);
  @$pb.TagNumber(13)
  void clearRealCardNo() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get cardLogId => $_getSZ(13);
  @$pb.TagNumber(14)
  set cardLogId($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasCardLogId() => $_has(13);
  @$pb.TagNumber(14)
  void clearCardLogId() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get agentId => $_getI64(14);
  @$pb.TagNumber(15)
  set agentId($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAgentId() => $_has(14);
  @$pb.TagNumber(15)
  void clearAgentId() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get userEmail => $_getSZ(15);
  @$pb.TagNumber(16)
  set userEmail($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasUserEmail() => $_has(15);
  @$pb.TagNumber(16)
  void clearUserEmail() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get userName => $_getSZ(16);
  @$pb.TagNumber(17)
  set userName($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasUserName() => $_has(16);
  @$pb.TagNumber(17)
  void clearUserName() => clearField(17);
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

class GetLastKYC2InfoRequest extends $pb.GeneratedMessage {
  factory GetLastKYC2InfoRequest() => create();
  GetLastKYC2InfoRequest._() : super();
  factory GetLastKYC2InfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLastKYC2InfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetLastKYC2InfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLastKYC2InfoRequest clone() => GetLastKYC2InfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLastKYC2InfoRequest copyWith(void Function(GetLastKYC2InfoRequest) updates) => super.copyWith((message) => updates(message as GetLastKYC2InfoRequest)) as GetLastKYC2InfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetLastKYC2InfoRequest create() => GetLastKYC2InfoRequest._();
  GetLastKYC2InfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetLastKYC2InfoRequest> createRepeated() => $pb.PbList<GetLastKYC2InfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLastKYC2InfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLastKYC2InfoRequest>(create);
  static GetLastKYC2InfoRequest? _defaultInstance;
}

class Kyc2Info extends $pb.GeneratedMessage {
  factory Kyc2Info() => create();
  Kyc2Info._() : super();
  factory Kyc2Info.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Kyc2Info.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Kyc2Info', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'idType', protoName: 'idType')
    ..aOS(2, _omitFieldNames ? '' : 'idNo', protoName: 'idNo')
    ..aOS(3, _omitFieldNames ? '' : 'idBackFile', protoName: 'idBackFile')
    ..aOS(4, _omitFieldNames ? '' : 'idFrontFile', protoName: 'idFrontFile')
    ..aOS(5, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(6, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(7, _omitFieldNames ? '' : 'dob')
    ..aOS(8, _omitFieldNames ? '' : 'gender')
    ..aOS(9, _omitFieldNames ? '' : 'addressType', protoName: 'addressType')
    ..aOS(10, _omitFieldNames ? '' : 'marState', protoName: 'marState')
    ..aOS(11, _omitFieldNames ? '' : 'areaCode', protoName: 'areaCode')
    ..aOS(12, _omitFieldNames ? '' : 'cardPhone', protoName: 'cardPhone')
    ..aOS(15, _omitFieldNames ? '' : 'postalCode', protoName: 'postalCode')
    ..aOS(16, _omitFieldNames ? '' : 'city')
    ..aOS(17, _omitFieldNames ? '' : 'address')
    ..aInt64(23, _omitFieldNames ? '' : 'status')
    ..aOS(24, _omitFieldNames ? '' : 'errorMsg')
    ..aOS(25, _omitFieldNames ? '' : 'cardNo')
    ..aInt64(26, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(27, _omitFieldNames ? '' : 'id')
    ..aInt64(28, _omitFieldNames ? '' : 'userId')
    ..aOS(29, _omitFieldNames ? '' : 'openId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Kyc2Info clone() => Kyc2Info()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Kyc2Info copyWith(void Function(Kyc2Info) updates) => super.copyWith((message) => updates(message as Kyc2Info)) as Kyc2Info;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Kyc2Info create() => Kyc2Info._();
  Kyc2Info createEmptyInstance() => create();
  static $pb.PbList<Kyc2Info> createRepeated() => $pb.PbList<Kyc2Info>();
  @$core.pragma('dart2js:noInline')
  static Kyc2Info getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Kyc2Info>(create);
  static Kyc2Info? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get idType => $_getSZ(0);
  @$pb.TagNumber(1)
  set idType($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdType() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set idNo($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdNo() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get idBackFile => $_getSZ(2);
  @$pb.TagNumber(3)
  set idBackFile($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIdBackFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearIdBackFile() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get idFrontFile => $_getSZ(3);
  @$pb.TagNumber(4)
  set idFrontFile($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIdFrontFile() => $_has(3);
  @$pb.TagNumber(4)
  void clearIdFrontFile() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get firstName => $_getSZ(4);
  @$pb.TagNumber(5)
  set firstName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFirstName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFirstName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastName => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastName() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get dob => $_getSZ(6);
  @$pb.TagNumber(7)
  set dob($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDob() => $_has(6);
  @$pb.TagNumber(7)
  void clearDob() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get gender => $_getSZ(7);
  @$pb.TagNumber(8)
  set gender($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGender() => $_has(7);
  @$pb.TagNumber(8)
  void clearGender() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get addressType => $_getSZ(8);
  @$pb.TagNumber(9)
  set addressType($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAddressType() => $_has(8);
  @$pb.TagNumber(9)
  void clearAddressType() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get marState => $_getSZ(9);
  @$pb.TagNumber(10)
  set marState($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMarState() => $_has(9);
  @$pb.TagNumber(10)
  void clearMarState() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get areaCode => $_getSZ(10);
  @$pb.TagNumber(11)
  set areaCode($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAreaCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearAreaCode() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get cardPhone => $_getSZ(11);
  @$pb.TagNumber(12)
  set cardPhone($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasCardPhone() => $_has(11);
  @$pb.TagNumber(12)
  void clearCardPhone() => clearField(12);

  @$pb.TagNumber(15)
  $core.String get postalCode => $_getSZ(12);
  @$pb.TagNumber(15)
  set postalCode($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(15)
  $core.bool hasPostalCode() => $_has(12);
  @$pb.TagNumber(15)
  void clearPostalCode() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get city => $_getSZ(13);
  @$pb.TagNumber(16)
  set city($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(16)
  $core.bool hasCity() => $_has(13);
  @$pb.TagNumber(16)
  void clearCity() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get address => $_getSZ(14);
  @$pb.TagNumber(17)
  set address($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(17)
  $core.bool hasAddress() => $_has(14);
  @$pb.TagNumber(17)
  void clearAddress() => clearField(17);

  @$pb.TagNumber(23)
  $fixnum.Int64 get status => $_getI64(15);
  @$pb.TagNumber(23)
  set status($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(23)
  $core.bool hasStatus() => $_has(15);
  @$pb.TagNumber(23)
  void clearStatus() => clearField(23);

  @$pb.TagNumber(24)
  $core.String get errorMsg => $_getSZ(16);
  @$pb.TagNumber(24)
  set errorMsg($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(24)
  $core.bool hasErrorMsg() => $_has(16);
  @$pb.TagNumber(24)
  void clearErrorMsg() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get cardNo => $_getSZ(17);
  @$pb.TagNumber(25)
  set cardNo($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(25)
  $core.bool hasCardNo() => $_has(17);
  @$pb.TagNumber(25)
  void clearCardNo() => clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get createdAt => $_getI64(18);
  @$pb.TagNumber(26)
  set createdAt($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(26)
  $core.bool hasCreatedAt() => $_has(18);
  @$pb.TagNumber(26)
  void clearCreatedAt() => clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get id => $_getI64(19);
  @$pb.TagNumber(27)
  set id($fixnum.Int64 v) { $_setInt64(19, v); }
  @$pb.TagNumber(27)
  $core.bool hasId() => $_has(19);
  @$pb.TagNumber(27)
  void clearId() => clearField(27);

  @$pb.TagNumber(28)
  $fixnum.Int64 get userId => $_getI64(20);
  @$pb.TagNumber(28)
  set userId($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(28)
  $core.bool hasUserId() => $_has(20);
  @$pb.TagNumber(28)
  void clearUserId() => clearField(28);

  @$pb.TagNumber(29)
  $core.String get openId => $_getSZ(21);
  @$pb.TagNumber(29)
  set openId($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(29)
  $core.bool hasOpenId() => $_has(21);
  @$pb.TagNumber(29)
  void clearOpenId() => clearField(29);
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
    ..aInt64(25, _omitFieldNames ? '' : 'status')
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
  $fixnum.Int64 get status => $_getI64(24);
  @$pb.TagNumber(25)
  set status($fixnum.Int64 v) { $_setInt64(24, v); }
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
    ..aOB(3, _omitFieldNames ? '' : 'isRealCard', protoName: 'isRealCard')
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

  @$pb.TagNumber(3)
  $core.bool get isRealCard => $_getBF(1);
  @$pb.TagNumber(3)
  set isRealCard($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsRealCard() => $_has(1);
  @$pb.TagNumber(3)
  void clearIsRealCard() => clearField(3);
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
    ..aOB(1, _omitFieldNames ? '' : 'withoutBalance')
    ..aOB(2, _omitFieldNames ? '' : 'isAgentCard')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'agentCardStatus', $pb.PbFieldType.O3)
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

  @$pb.TagNumber(1)
  $core.bool get withoutBalance => $_getBF(0);
  @$pb.TagNumber(1)
  set withoutBalance($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWithoutBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearWithoutBalance() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isAgentCard => $_getBF(1);
  @$pb.TagNumber(2)
  set isAgentCard($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsAgentCard() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsAgentCard() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get agentCardStatus => $_getIZ(2);
  @$pb.TagNumber(3)
  set agentCardStatus($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgentCardStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgentCardStatus() => clearField(3);
}

class CardListResponse extends $pb.GeneratedMessage {
  factory CardListResponse() => create();
  CardListResponse._() : super();
  factory CardListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<CardInfo>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CardInfo.create)
    ..aOM<AgentCardListStat>(3, _omitFieldNames ? '' : 'agentCardStat', subBuilder: AgentCardListStat.create)
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

  @$pb.TagNumber(3)
  AgentCardListStat get agentCardStat => $_getN(1);
  @$pb.TagNumber(3)
  set agentCardStat(AgentCardListStat v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgentCardStat() => $_has(1);
  @$pb.TagNumber(3)
  void clearAgentCardStat() => clearField(3);
  @$pb.TagNumber(3)
  AgentCardListStat ensureAgentCardStat() => $_ensure(1);
}

class AgentCardListStat extends $pb.GeneratedMessage {
  factory AgentCardListStat() => create();
  AgentCardListStat._() : super();
  factory AgentCardListStat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AgentCardListStat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AgentCardListStat', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'agentCardStatus0', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'agentCardStatus1', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'agentCardStatus2', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AgentCardListStat clone() => AgentCardListStat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AgentCardListStat copyWith(void Function(AgentCardListStat) updates) => super.copyWith((message) => updates(message as AgentCardListStat)) as AgentCardListStat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AgentCardListStat create() => AgentCardListStat._();
  AgentCardListStat createEmptyInstance() => create();
  static $pb.PbList<AgentCardListStat> createRepeated() => $pb.PbList<AgentCardListStat>();
  @$core.pragma('dart2js:noInline')
  static AgentCardListStat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AgentCardListStat>(create);
  static AgentCardListStat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get agentCardStatus0 => $_getIZ(0);
  @$pb.TagNumber(1)
  set agentCardStatus0($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAgentCardStatus0() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgentCardStatus0() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get agentCardStatus1 => $_getIZ(1);
  @$pb.TagNumber(2)
  set agentCardStatus1($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAgentCardStatus1() => $_has(1);
  @$pb.TagNumber(2)
  void clearAgentCardStatus1() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get agentCardStatus2 => $_getIZ(2);
  @$pb.TagNumber(3)
  set agentCardStatus2($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAgentCardStatus2() => $_has(2);
  @$pb.TagNumber(3)
  void clearAgentCardStatus2() => clearField(3);
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

class GetCardActivateCodeRequest extends $pb.GeneratedMessage {
  factory GetCardActivateCodeRequest() => create();
  GetCardActivateCodeRequest._() : super();
  factory GetCardActivateCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCardActivateCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCardActivateCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCardActivateCodeRequest clone() => GetCardActivateCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCardActivateCodeRequest copyWith(void Function(GetCardActivateCodeRequest) updates) => super.copyWith((message) => updates(message as GetCardActivateCodeRequest)) as GetCardActivateCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCardActivateCodeRequest create() => GetCardActivateCodeRequest._();
  GetCardActivateCodeRequest createEmptyInstance() => create();
  static $pb.PbList<GetCardActivateCodeRequest> createRepeated() => $pb.PbList<GetCardActivateCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCardActivateCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCardActivateCodeRequest>(create);
  static GetCardActivateCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);
}

class GetCardActivateCodeResponse extends $pb.GeneratedMessage {
  factory GetCardActivateCodeResponse() => create();
  GetCardActivateCodeResponse._() : super();
  factory GetCardActivateCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCardActivateCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCardActivateCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'codeToken', protoName: 'codeToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCardActivateCodeResponse clone() => GetCardActivateCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCardActivateCodeResponse copyWith(void Function(GetCardActivateCodeResponse) updates) => super.copyWith((message) => updates(message as GetCardActivateCodeResponse)) as GetCardActivateCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCardActivateCodeResponse create() => GetCardActivateCodeResponse._();
  GetCardActivateCodeResponse createEmptyInstance() => create();
  static $pb.PbList<GetCardActivateCodeResponse> createRepeated() => $pb.PbList<GetCardActivateCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCardActivateCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCardActivateCodeResponse>(create);
  static GetCardActivateCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get codeToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set codeToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodeToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodeToken() => clearField(2);
}

class CardActivateRequest extends $pb.GeneratedMessage {
  factory CardActivateRequest() => create();
  CardActivateRequest._() : super();
  factory CardActivateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardActivateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardActivateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aOS(2, _omitFieldNames ? '' : 'codeToken', protoName: 'codeToken')
    ..aOS(3, _omitFieldNames ? '' : 'verifyCode', protoName: 'verifyCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardActivateRequest clone() => CardActivateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardActivateRequest copyWith(void Function(CardActivateRequest) updates) => super.copyWith((message) => updates(message as CardActivateRequest)) as CardActivateRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardActivateRequest create() => CardActivateRequest._();
  CardActivateRequest createEmptyInstance() => create();
  static $pb.PbList<CardActivateRequest> createRepeated() => $pb.PbList<CardActivateRequest>();
  @$core.pragma('dart2js:noInline')
  static CardActivateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardActivateRequest>(create);
  static CardActivateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get codeToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set codeToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodeToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodeToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get verifyCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set verifyCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerifyCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerifyCode() => clearField(3);
}

class CardActivateResponse extends $pb.GeneratedMessage {
  factory CardActivateResponse() => create();
  CardActivateResponse._() : super();
  factory CardActivateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardActivateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardActivateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardActivateResponse clone() => CardActivateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardActivateResponse copyWith(void Function(CardActivateResponse) updates) => super.copyWith((message) => updates(message as CardActivateResponse)) as CardActivateResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardActivateResponse create() => CardActivateResponse._();
  CardActivateResponse createEmptyInstance() => create();
  static $pb.PbList<CardActivateResponse> createRepeated() => $pb.PbList<CardActivateResponse>();
  @$core.pragma('dart2js:noInline')
  static CardActivateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardActivateResponse>(create);
  static CardActivateResponse? _defaultInstance;
}

class SetCardPwdRequest extends $pb.GeneratedMessage {
  factory SetCardPwdRequest() => create();
  SetCardPwdRequest._() : super();
  factory SetCardPwdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCardPwdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCardPwdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aOS(2, _omitFieldNames ? '' : 'pwd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCardPwdRequest clone() => SetCardPwdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCardPwdRequest copyWith(void Function(SetCardPwdRequest) updates) => super.copyWith((message) => updates(message as SetCardPwdRequest)) as SetCardPwdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCardPwdRequest create() => SetCardPwdRequest._();
  SetCardPwdRequest createEmptyInstance() => create();
  static $pb.PbList<SetCardPwdRequest> createRepeated() => $pb.PbList<SetCardPwdRequest>();
  @$core.pragma('dart2js:noInline')
  static SetCardPwdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCardPwdRequest>(create);
  static SetCardPwdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pwd => $_getSZ(1);
  @$pb.TagNumber(2)
  set pwd($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPwd() => $_has(1);
  @$pb.TagNumber(2)
  void clearPwd() => clearField(2);
}

class SetCardPwdResponse extends $pb.GeneratedMessage {
  factory SetCardPwdResponse() => create();
  SetCardPwdResponse._() : super();
  factory SetCardPwdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetCardPwdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SetCardPwdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetCardPwdResponse clone() => SetCardPwdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetCardPwdResponse copyWith(void Function(SetCardPwdResponse) updates) => super.copyWith((message) => updates(message as SetCardPwdResponse)) as SetCardPwdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetCardPwdResponse create() => SetCardPwdResponse._();
  SetCardPwdResponse createEmptyInstance() => create();
  static $pb.PbList<SetCardPwdResponse> createRepeated() => $pb.PbList<SetCardPwdResponse>();
  @$core.pragma('dart2js:noInline')
  static SetCardPwdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetCardPwdResponse>(create);
  static SetCardPwdResponse? _defaultInstance;
}

class CardBindRequest extends $pb.GeneratedMessage {
  factory CardBindRequest() => create();
  CardBindRequest._() : super();
  factory CardBindRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardBindRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardBindRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cardNo', protoName: 'cardNo')
    ..aOS(3, _omitFieldNames ? '' : 'cid')
    ..aOS(4, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(5, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(6, _omitFieldNames ? '' : 'email')
    ..aOS(7, _omitFieldNames ? '' : 'mobile')
    ..aOS(8, _omitFieldNames ? '' : 'areaCode', protoName: 'areaCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardBindRequest clone() => CardBindRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardBindRequest copyWith(void Function(CardBindRequest) updates) => super.copyWith((message) => updates(message as CardBindRequest)) as CardBindRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardBindRequest create() => CardBindRequest._();
  CardBindRequest createEmptyInstance() => create();
  static $pb.PbList<CardBindRequest> createRepeated() => $pb.PbList<CardBindRequest>();
  @$core.pragma('dart2js:noInline')
  static CardBindRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardBindRequest>(create);
  static CardBindRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardNo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardNo() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get cid => $_getSZ(1);
  @$pb.TagNumber(3)
  set cid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasCid() => $_has(1);
  @$pb.TagNumber(3)
  void clearCid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get firstName => $_getSZ(2);
  @$pb.TagNumber(4)
  set firstName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasFirstName() => $_has(2);
  @$pb.TagNumber(4)
  void clearFirstName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastName => $_getSZ(3);
  @$pb.TagNumber(5)
  set lastName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastName() => $_has(3);
  @$pb.TagNumber(5)
  void clearLastName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get email => $_getSZ(4);
  @$pb.TagNumber(6)
  set email($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasEmail() => $_has(4);
  @$pb.TagNumber(6)
  void clearEmail() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get mobile => $_getSZ(5);
  @$pb.TagNumber(7)
  set mobile($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasMobile() => $_has(5);
  @$pb.TagNumber(7)
  void clearMobile() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get areaCode => $_getSZ(6);
  @$pb.TagNumber(8)
  set areaCode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasAreaCode() => $_has(6);
  @$pb.TagNumber(8)
  void clearAreaCode() => clearField(8);
}

class CardBindResponse extends $pb.GeneratedMessage {
  factory CardBindResponse() => create();
  CardBindResponse._() : super();
  factory CardBindResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CardBindResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CardBindResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CardBindResponse clone() => CardBindResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CardBindResponse copyWith(void Function(CardBindResponse) updates) => super.copyWith((message) => updates(message as CardBindResponse)) as CardBindResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CardBindResponse create() => CardBindResponse._();
  CardBindResponse createEmptyInstance() => create();
  static $pb.PbList<CardBindResponse> createRepeated() => $pb.PbList<CardBindResponse>();
  @$core.pragma('dart2js:noInline')
  static CardBindResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CardBindResponse>(create);
  static CardBindResponse? _defaultInstance;
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
