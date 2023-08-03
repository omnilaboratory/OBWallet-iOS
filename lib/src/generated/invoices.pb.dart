///
//  Generated code. Do not modify.
//  source: invoices.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lightning.pb.dart' as $0;

import 'invoices.pbenum.dart';

export 'invoices.pbenum.dart';

class CancelInvoiceMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelInvoiceMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CancelInvoiceMsg._() : super();
  factory CancelInvoiceMsg({
    $core.List<$core.int>? paymentHash,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    return _result;
  }
  factory CancelInvoiceMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelInvoiceMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelInvoiceMsg clone() => CancelInvoiceMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelInvoiceMsg copyWith(void Function(CancelInvoiceMsg) updates) => super.copyWith((message) => updates(message as CancelInvoiceMsg)) as CancelInvoiceMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceMsg create() => CancelInvoiceMsg._();
  CancelInvoiceMsg createEmptyInstance() => create();
  static $pb.PbList<CancelInvoiceMsg> createRepeated() => $pb.PbList<CancelInvoiceMsg>();
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelInvoiceMsg>(create);
  static CancelInvoiceMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get paymentHash => $_getN(0);
  @$pb.TagNumber(1)
  set paymentHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentHash() => clearField(1);
}

class CancelInvoiceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelInvoiceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CancelInvoiceResp._() : super();
  factory CancelInvoiceResp() => create();
  factory CancelInvoiceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelInvoiceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelInvoiceResp clone() => CancelInvoiceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelInvoiceResp copyWith(void Function(CancelInvoiceResp) updates) => super.copyWith((message) => updates(message as CancelInvoiceResp)) as CancelInvoiceResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceResp create() => CancelInvoiceResp._();
  CancelInvoiceResp createEmptyInstance() => create();
  static $pb.PbList<CancelInvoiceResp> createRepeated() => $pb.PbList<CancelInvoiceResp>();
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelInvoiceResp>(create);
  static CancelInvoiceResp? _defaultInstance;
}

class AddHoldInvoiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHoldInvoiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'descriptionHash', $pb.PbFieldType.OY)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallbackAddr')
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvExpiry', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$0.RouteHint>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeHints', $pb.PbFieldType.PM, subBuilder: $0.RouteHint.create)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueMsat')
    ..hasRequiredFields = false
  ;

  AddHoldInvoiceRequest._() : super();
  factory AddHoldInvoiceRequest({
    $core.String? memo,
    $core.List<$core.int>? hash,
    $core.List<$core.int>? descriptionHash,
    $fixnum.Int64? expiry,
    $core.String? fallbackAddr,
    $fixnum.Int64? cltvExpiry,
    $core.Iterable<$0.RouteHint>? routeHints,
    $core.bool? private,
    $fixnum.Int64? valueMsat,
  }) {
    final _result = create();
    if (memo != null) {
      _result.memo = memo;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (descriptionHash != null) {
      _result.descriptionHash = descriptionHash;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (fallbackAddr != null) {
      _result.fallbackAddr = fallbackAddr;
    }
    if (cltvExpiry != null) {
      _result.cltvExpiry = cltvExpiry;
    }
    if (routeHints != null) {
      _result.routeHints.addAll(routeHints);
    }
    if (private != null) {
      _result.private = private;
    }
    if (valueMsat != null) {
      _result.valueMsat = valueMsat;
    }
    return _result;
  }
  factory AddHoldInvoiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddHoldInvoiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceRequest clone() => AddHoldInvoiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceRequest copyWith(void Function(AddHoldInvoiceRequest) updates) => super.copyWith((message) => updates(message as AddHoldInvoiceRequest)) as AddHoldInvoiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceRequest create() => AddHoldInvoiceRequest._();
  AddHoldInvoiceRequest createEmptyInstance() => create();
  static $pb.PbList<AddHoldInvoiceRequest> createRepeated() => $pb.PbList<AddHoldInvoiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddHoldInvoiceRequest>(create);
  static AddHoldInvoiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get memo => $_getSZ(0);
  @$pb.TagNumber(1)
  set memo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemo() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get descriptionHash => $_getN(2);
  @$pb.TagNumber(4)
  set descriptionHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescriptionHash() => $_has(2);
  @$pb.TagNumber(4)
  void clearDescriptionHash() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get expiry => $_getI64(3);
  @$pb.TagNumber(5)
  set expiry($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpiry() => $_has(3);
  @$pb.TagNumber(5)
  void clearExpiry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get fallbackAddr => $_getSZ(4);
  @$pb.TagNumber(6)
  set fallbackAddr($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasFallbackAddr() => $_has(4);
  @$pb.TagNumber(6)
  void clearFallbackAddr() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get cltvExpiry => $_getI64(5);
  @$pb.TagNumber(7)
  set cltvExpiry($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasCltvExpiry() => $_has(5);
  @$pb.TagNumber(7)
  void clearCltvExpiry() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$0.RouteHint> get routeHints => $_getList(6);

  @$pb.TagNumber(9)
  $core.bool get private => $_getBF(7);
  @$pb.TagNumber(9)
  set private($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasPrivate() => $_has(7);
  @$pb.TagNumber(9)
  void clearPrivate() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get valueMsat => $_getI64(8);
  @$pb.TagNumber(10)
  set valueMsat($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasValueMsat() => $_has(8);
  @$pb.TagNumber(10)
  void clearValueMsat() => clearField(10);
}

class AddHoldInvoiceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHoldInvoiceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AddHoldInvoiceResp._() : super();
  factory AddHoldInvoiceResp({
    $core.String? paymentRequest,
    $fixnum.Int64? addIndex,
    $core.List<$core.int>? paymentAddr,
  }) {
    final _result = create();
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
    }
    if (addIndex != null) {
      _result.addIndex = addIndex;
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    return _result;
  }
  factory AddHoldInvoiceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddHoldInvoiceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceResp clone() => AddHoldInvoiceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceResp copyWith(void Function(AddHoldInvoiceResp) updates) => super.copyWith((message) => updates(message as AddHoldInvoiceResp)) as AddHoldInvoiceResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceResp create() => AddHoldInvoiceResp._();
  AddHoldInvoiceResp createEmptyInstance() => create();
  static $pb.PbList<AddHoldInvoiceResp> createRepeated() => $pb.PbList<AddHoldInvoiceResp>();
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddHoldInvoiceResp>(create);
  static AddHoldInvoiceResp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paymentRequest => $_getSZ(0);
  @$pb.TagNumber(1)
  set paymentRequest($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentRequest() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get addIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set addIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get paymentAddr => $_getN(2);
  @$pb.TagNumber(3)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaymentAddr() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaymentAddr() => clearField(3);
}

class SettleInvoiceMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleInvoiceMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preimage', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SettleInvoiceMsg._() : super();
  factory SettleInvoiceMsg({
    $core.List<$core.int>? preimage,
  }) {
    final _result = create();
    if (preimage != null) {
      _result.preimage = preimage;
    }
    return _result;
  }
  factory SettleInvoiceMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleInvoiceMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleInvoiceMsg clone() => SettleInvoiceMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleInvoiceMsg copyWith(void Function(SettleInvoiceMsg) updates) => super.copyWith((message) => updates(message as SettleInvoiceMsg)) as SettleInvoiceMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceMsg create() => SettleInvoiceMsg._();
  SettleInvoiceMsg createEmptyInstance() => create();
  static $pb.PbList<SettleInvoiceMsg> createRepeated() => $pb.PbList<SettleInvoiceMsg>();
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleInvoiceMsg>(create);
  static SettleInvoiceMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get preimage => $_getN(0);
  @$pb.TagNumber(1)
  set preimage($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreimage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreimage() => clearField(1);
}

class SettleInvoiceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleInvoiceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SettleInvoiceResp._() : super();
  factory SettleInvoiceResp() => create();
  factory SettleInvoiceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleInvoiceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleInvoiceResp clone() => SettleInvoiceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleInvoiceResp copyWith(void Function(SettleInvoiceResp) updates) => super.copyWith((message) => updates(message as SettleInvoiceResp)) as SettleInvoiceResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceResp create() => SettleInvoiceResp._();
  SettleInvoiceResp createEmptyInstance() => create();
  static $pb.PbList<SettleInvoiceResp> createRepeated() => $pb.PbList<SettleInvoiceResp>();
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleInvoiceResp>(create);
  static SettleInvoiceResp? _defaultInstance;
}

class SubscribeSingleInvoiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeSingleInvoiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SubscribeSingleInvoiceRequest._() : super();
  factory SubscribeSingleInvoiceRequest({
    $core.List<$core.int>? rHash,
  }) {
    final _result = create();
    if (rHash != null) {
      _result.rHash = rHash;
    }
    return _result;
  }
  factory SubscribeSingleInvoiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeSingleInvoiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeSingleInvoiceRequest clone() => SubscribeSingleInvoiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeSingleInvoiceRequest copyWith(void Function(SubscribeSingleInvoiceRequest) updates) => super.copyWith((message) => updates(message as SubscribeSingleInvoiceRequest)) as SubscribeSingleInvoiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeSingleInvoiceRequest create() => SubscribeSingleInvoiceRequest._();
  SubscribeSingleInvoiceRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeSingleInvoiceRequest> createRepeated() => $pb.PbList<SubscribeSingleInvoiceRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeSingleInvoiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeSingleInvoiceRequest>(create);
  static SubscribeSingleInvoiceRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get rHash => $_getN(0);
  @$pb.TagNumber(2)
  set rHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasRHash() => $_has(0);
  @$pb.TagNumber(2)
  void clearRHash() => clearField(2);
}

enum LookupInvoiceMsg_InvoiceRef {
  paymentHash, 
  paymentAddr, 
  setId, 
  notSet
}

class LookupInvoiceMsg extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, LookupInvoiceMsg_InvoiceRef> _LookupInvoiceMsg_InvoiceRefByTag = {
    1 : LookupInvoiceMsg_InvoiceRef.paymentHash,
    2 : LookupInvoiceMsg_InvoiceRef.paymentAddr,
    3 : LookupInvoiceMsg_InvoiceRef.setId,
    0 : LookupInvoiceMsg_InvoiceRef.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LookupInvoiceMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'setId', $pb.PbFieldType.OY)
    ..e<LookupModifier>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lookupModifier', $pb.PbFieldType.OE, defaultOrMaker: LookupModifier.DEFAULT, valueOf: LookupModifier.valueOf, enumValues: LookupModifier.values)
    ..hasRequiredFields = false
  ;

  LookupInvoiceMsg._() : super();
  factory LookupInvoiceMsg({
    $core.List<$core.int>? paymentHash,
    $core.List<$core.int>? paymentAddr,
    $core.List<$core.int>? setId,
    LookupModifier? lookupModifier,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    if (setId != null) {
      _result.setId = setId;
    }
    if (lookupModifier != null) {
      _result.lookupModifier = lookupModifier;
    }
    return _result;
  }
  factory LookupInvoiceMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LookupInvoiceMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LookupInvoiceMsg clone() => LookupInvoiceMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LookupInvoiceMsg copyWith(void Function(LookupInvoiceMsg) updates) => super.copyWith((message) => updates(message as LookupInvoiceMsg)) as LookupInvoiceMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LookupInvoiceMsg create() => LookupInvoiceMsg._();
  LookupInvoiceMsg createEmptyInstance() => create();
  static $pb.PbList<LookupInvoiceMsg> createRepeated() => $pb.PbList<LookupInvoiceMsg>();
  @$core.pragma('dart2js:noInline')
  static LookupInvoiceMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LookupInvoiceMsg>(create);
  static LookupInvoiceMsg? _defaultInstance;

  LookupInvoiceMsg_InvoiceRef whichInvoiceRef() => _LookupInvoiceMsg_InvoiceRefByTag[$_whichOneof(0)]!;
  void clearInvoiceRef() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get paymentHash => $_getN(0);
  @$pb.TagNumber(1)
  set paymentHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get paymentAddr => $_getN(1);
  @$pb.TagNumber(2)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentAddr() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get setId => $_getN(2);
  @$pb.TagNumber(3)
  set setId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSetId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetId() => clearField(3);

  @$pb.TagNumber(4)
  LookupModifier get lookupModifier => $_getN(3);
  @$pb.TagNumber(4)
  set lookupModifier(LookupModifier v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLookupModifier() => $_has(3);
  @$pb.TagNumber(4)
  void clearLookupModifier() => clearField(4);
}

