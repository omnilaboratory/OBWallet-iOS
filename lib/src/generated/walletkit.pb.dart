///
//  Generated code. Do not modify.
//  source: walletkit.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lightning.pb.dart' as $0;
import 'signer.pb.dart' as $1;

import 'walletkit.pbenum.dart';

export 'walletkit.pbenum.dart';

class ListUnspentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListUnspentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxConfs', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..hasRequiredFields = false
  ;

  ListUnspentRequest._() : super();
  factory ListUnspentRequest({
    $core.int? minConfs,
    $core.int? maxConfs,
    $core.String? account,
  }) {
    final _result = create();
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (maxConfs != null) {
      _result.maxConfs = maxConfs;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory ListUnspentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUnspentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListUnspentRequest clone() => ListUnspentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListUnspentRequest copyWith(void Function(ListUnspentRequest) updates) => super.copyWith((message) => updates(message as ListUnspentRequest)) as ListUnspentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUnspentRequest create() => ListUnspentRequest._();
  ListUnspentRequest createEmptyInstance() => create();
  static $pb.PbList<ListUnspentRequest> createRepeated() => $pb.PbList<ListUnspentRequest>();
  @$core.pragma('dart2js:noInline')
  static ListUnspentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUnspentRequest>(create);
  static ListUnspentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get minConfs => $_getIZ(0);
  @$pb.TagNumber(1)
  set minConfs($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinConfs() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinConfs() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxConfs => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxConfs($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxConfs() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxConfs() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get account => $_getSZ(2);
  @$pb.TagNumber(3)
  set account($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);
}

class ListUnspentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListUnspentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..pc<$0.Utxo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utxos', $pb.PbFieldType.PM, subBuilder: $0.Utxo.create)
    ..hasRequiredFields = false
  ;

  ListUnspentResponse._() : super();
  factory ListUnspentResponse({
    $core.Iterable<$0.Utxo>? utxos,
  }) {
    final _result = create();
    if (utxos != null) {
      _result.utxos.addAll(utxos);
    }
    return _result;
  }
  factory ListUnspentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUnspentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListUnspentResponse clone() => ListUnspentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListUnspentResponse copyWith(void Function(ListUnspentResponse) updates) => super.copyWith((message) => updates(message as ListUnspentResponse)) as ListUnspentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUnspentResponse create() => ListUnspentResponse._();
  ListUnspentResponse createEmptyInstance() => create();
  static $pb.PbList<ListUnspentResponse> createRepeated() => $pb.PbList<ListUnspentResponse>();
  @$core.pragma('dart2js:noInline')
  static ListUnspentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUnspentResponse>(create);
  static ListUnspentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.Utxo> get utxos => $_getList(0);
}

class LeaseOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseOutputRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..aOM<$0.OutPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: $0.OutPoint.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expirationSeconds', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  LeaseOutputRequest._() : super();
  factory LeaseOutputRequest({
    $core.List<$core.int>? id,
    $0.OutPoint? outpoint,
    $fixnum.Int64? expirationSeconds,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (expirationSeconds != null) {
      _result.expirationSeconds = expirationSeconds;
    }
    return _result;
  }
  factory LeaseOutputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseOutputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseOutputRequest clone() => LeaseOutputRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseOutputRequest copyWith(void Function(LeaseOutputRequest) updates) => super.copyWith((message) => updates(message as LeaseOutputRequest)) as LeaseOutputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseOutputRequest create() => LeaseOutputRequest._();
  LeaseOutputRequest createEmptyInstance() => create();
  static $pb.PbList<LeaseOutputRequest> createRepeated() => $pb.PbList<LeaseOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static LeaseOutputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseOutputRequest>(create);
  static LeaseOutputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.OutPoint get outpoint => $_getN(1);
  @$pb.TagNumber(2)
  set outpoint($0.OutPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutpoint() => clearField(2);
  @$pb.TagNumber(2)
  $0.OutPoint ensureOutpoint() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expirationSeconds => $_getI64(2);
  @$pb.TagNumber(3)
  set expirationSeconds($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpirationSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpirationSeconds() => clearField(3);
}

class LeaseOutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LeaseOutputResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiration', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  LeaseOutputResponse._() : super();
  factory LeaseOutputResponse({
    $fixnum.Int64? expiration,
  }) {
    final _result = create();
    if (expiration != null) {
      _result.expiration = expiration;
    }
    return _result;
  }
  factory LeaseOutputResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseOutputResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseOutputResponse clone() => LeaseOutputResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseOutputResponse copyWith(void Function(LeaseOutputResponse) updates) => super.copyWith((message) => updates(message as LeaseOutputResponse)) as LeaseOutputResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LeaseOutputResponse create() => LeaseOutputResponse._();
  LeaseOutputResponse createEmptyInstance() => create();
  static $pb.PbList<LeaseOutputResponse> createRepeated() => $pb.PbList<LeaseOutputResponse>();
  @$core.pragma('dart2js:noInline')
  static LeaseOutputResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseOutputResponse>(create);
  static LeaseOutputResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get expiration => $_getI64(0);
  @$pb.TagNumber(1)
  set expiration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpiration() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpiration() => clearField(1);
}

class ReleaseOutputRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReleaseOutputRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..aOM<$0.OutPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: $0.OutPoint.create)
    ..hasRequiredFields = false
  ;

  ReleaseOutputRequest._() : super();
  factory ReleaseOutputRequest({
    $core.List<$core.int>? id,
    $0.OutPoint? outpoint,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    return _result;
  }
  factory ReleaseOutputRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReleaseOutputRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReleaseOutputRequest clone() => ReleaseOutputRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReleaseOutputRequest copyWith(void Function(ReleaseOutputRequest) updates) => super.copyWith((message) => updates(message as ReleaseOutputRequest)) as ReleaseOutputRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReleaseOutputRequest create() => ReleaseOutputRequest._();
  ReleaseOutputRequest createEmptyInstance() => create();
  static $pb.PbList<ReleaseOutputRequest> createRepeated() => $pb.PbList<ReleaseOutputRequest>();
  @$core.pragma('dart2js:noInline')
  static ReleaseOutputRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReleaseOutputRequest>(create);
  static ReleaseOutputRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.OutPoint get outpoint => $_getN(1);
  @$pb.TagNumber(2)
  set outpoint($0.OutPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutpoint() => clearField(2);
  @$pb.TagNumber(2)
  $0.OutPoint ensureOutpoint() => $_ensure(1);
}

class ReleaseOutputResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReleaseOutputResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ReleaseOutputResponse._() : super();
  factory ReleaseOutputResponse() => create();
  factory ReleaseOutputResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReleaseOutputResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReleaseOutputResponse clone() => ReleaseOutputResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReleaseOutputResponse copyWith(void Function(ReleaseOutputResponse) updates) => super.copyWith((message) => updates(message as ReleaseOutputResponse)) as ReleaseOutputResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReleaseOutputResponse create() => ReleaseOutputResponse._();
  ReleaseOutputResponse createEmptyInstance() => create();
  static $pb.PbList<ReleaseOutputResponse> createRepeated() => $pb.PbList<ReleaseOutputResponse>();
  @$core.pragma('dart2js:noInline')
  static ReleaseOutputResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReleaseOutputResponse>(create);
  static ReleaseOutputResponse? _defaultInstance;
}

class KeyReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyFingerPrint', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyFamily', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  KeyReq._() : super();
  factory KeyReq({
    $core.int? keyFingerPrint,
    $core.int? keyFamily,
  }) {
    final _result = create();
    if (keyFingerPrint != null) {
      _result.keyFingerPrint = keyFingerPrint;
    }
    if (keyFamily != null) {
      _result.keyFamily = keyFamily;
    }
    return _result;
  }
  factory KeyReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyReq clone() => KeyReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyReq copyWith(void Function(KeyReq) updates) => super.copyWith((message) => updates(message as KeyReq)) as KeyReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyReq create() => KeyReq._();
  KeyReq createEmptyInstance() => create();
  static $pb.PbList<KeyReq> createRepeated() => $pb.PbList<KeyReq>();
  @$core.pragma('dart2js:noInline')
  static KeyReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyReq>(create);
  static KeyReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get keyFingerPrint => $_getIZ(0);
  @$pb.TagNumber(1)
  set keyFingerPrint($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyFingerPrint() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyFingerPrint() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get keyFamily => $_getIZ(1);
  @$pb.TagNumber(2)
  set keyFamily($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyFamily() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyFamily() => clearField(2);
}

class AddrRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddrRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..e<AddressType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: AddressType.UNKNOWN, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'change')
    ..hasRequiredFields = false
  ;

  AddrRequest._() : super();
  factory AddrRequest({
    $core.String? account,
    AddressType? type,
    $core.bool? change,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (type != null) {
      _result.type = type;
    }
    if (change != null) {
      _result.change = change;
    }
    return _result;
  }
  factory AddrRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddrRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddrRequest clone() => AddrRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddrRequest copyWith(void Function(AddrRequest) updates) => super.copyWith((message) => updates(message as AddrRequest)) as AddrRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddrRequest create() => AddrRequest._();
  AddrRequest createEmptyInstance() => create();
  static $pb.PbList<AddrRequest> createRepeated() => $pb.PbList<AddrRequest>();
  @$core.pragma('dart2js:noInline')
  static AddrRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddrRequest>(create);
  static AddrRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get account => $_getSZ(0);
  @$pb.TagNumber(1)
  set account($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);

  @$pb.TagNumber(2)
  AddressType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(AddressType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get change => $_getBF(2);
  @$pb.TagNumber(3)
  set change($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChange() => $_has(2);
  @$pb.TagNumber(3)
  void clearChange() => clearField(3);
}

class AddrResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddrResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr')
    ..hasRequiredFields = false
  ;

  AddrResponse._() : super();
  factory AddrResponse({
    $core.String? addr,
  }) {
    final _result = create();
    if (addr != null) {
      _result.addr = addr;
    }
    return _result;
  }
  factory AddrResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddrResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddrResponse clone() => AddrResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddrResponse copyWith(void Function(AddrResponse) updates) => super.copyWith((message) => updates(message as AddrResponse)) as AddrResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddrResponse create() => AddrResponse._();
  AddrResponse createEmptyInstance() => create();
  static $pb.PbList<AddrResponse> createRepeated() => $pb.PbList<AddrResponse>();
  @$core.pragma('dart2js:noInline')
  static AddrResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddrResponse>(create);
  static AddrResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addr => $_getSZ(0);
  @$pb.TagNumber(1)
  set addr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddr() => clearField(1);
}

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Account', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<AddressType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressType', $pb.PbFieldType.OE, defaultOrMaker: AddressType.UNKNOWN, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extendedPublicKey')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterKeyFingerprint', $pb.PbFieldType.OY)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'derivationPath')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'externalKeyCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'internalKeyCount', $pb.PbFieldType.OU3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchOnly')
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account({
    $core.String? name,
    AddressType? addressType,
    $core.String? extendedPublicKey,
    $core.List<$core.int>? masterKeyFingerprint,
    $core.String? derivationPath,
    $core.int? externalKeyCount,
    $core.int? internalKeyCount,
    $core.bool? watchOnly,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (addressType != null) {
      _result.addressType = addressType;
    }
    if (extendedPublicKey != null) {
      _result.extendedPublicKey = extendedPublicKey;
    }
    if (masterKeyFingerprint != null) {
      _result.masterKeyFingerprint = masterKeyFingerprint;
    }
    if (derivationPath != null) {
      _result.derivationPath = derivationPath;
    }
    if (externalKeyCount != null) {
      _result.externalKeyCount = externalKeyCount;
    }
    if (internalKeyCount != null) {
      _result.internalKeyCount = internalKeyCount;
    }
    if (watchOnly != null) {
      _result.watchOnly = watchOnly;
    }
    return _result;
  }
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  AddressType get addressType => $_getN(1);
  @$pb.TagNumber(2)
  set addressType(AddressType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressType() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get extendedPublicKey => $_getSZ(2);
  @$pb.TagNumber(3)
  set extendedPublicKey($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExtendedPublicKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearExtendedPublicKey() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get masterKeyFingerprint => $_getN(3);
  @$pb.TagNumber(4)
  set masterKeyFingerprint($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMasterKeyFingerprint() => $_has(3);
  @$pb.TagNumber(4)
  void clearMasterKeyFingerprint() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get derivationPath => $_getSZ(4);
  @$pb.TagNumber(5)
  set derivationPath($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDerivationPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearDerivationPath() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get externalKeyCount => $_getIZ(5);
  @$pb.TagNumber(6)
  set externalKeyCount($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExternalKeyCount() => $_has(5);
  @$pb.TagNumber(6)
  void clearExternalKeyCount() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get internalKeyCount => $_getIZ(6);
  @$pb.TagNumber(7)
  set internalKeyCount($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasInternalKeyCount() => $_has(6);
  @$pb.TagNumber(7)
  void clearInternalKeyCount() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get watchOnly => $_getBF(7);
  @$pb.TagNumber(8)
  set watchOnly($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasWatchOnly() => $_has(7);
  @$pb.TagNumber(8)
  void clearWatchOnly() => clearField(8);
}

class ListAccountsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAccountsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..e<AddressType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressType', $pb.PbFieldType.OE, defaultOrMaker: AddressType.UNKNOWN, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..hasRequiredFields = false
  ;

  ListAccountsRequest._() : super();
  factory ListAccountsRequest({
    $core.String? name,
    AddressType? addressType,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (addressType != null) {
      _result.addressType = addressType;
    }
    return _result;
  }
  factory ListAccountsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAccountsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAccountsRequest clone() => ListAccountsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAccountsRequest copyWith(void Function(ListAccountsRequest) updates) => super.copyWith((message) => updates(message as ListAccountsRequest)) as ListAccountsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAccountsRequest create() => ListAccountsRequest._();
  ListAccountsRequest createEmptyInstance() => create();
  static $pb.PbList<ListAccountsRequest> createRepeated() => $pb.PbList<ListAccountsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAccountsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountsRequest>(create);
  static ListAccountsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  AddressType get addressType => $_getN(1);
  @$pb.TagNumber(2)
  set addressType(AddressType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressType() => clearField(2);
}

class ListAccountsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAccountsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..pc<Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accounts', $pb.PbFieldType.PM, subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  ListAccountsResponse._() : super();
  factory ListAccountsResponse({
    $core.Iterable<Account>? accounts,
  }) {
    final _result = create();
    if (accounts != null) {
      _result.accounts.addAll(accounts);
    }
    return _result;
  }
  factory ListAccountsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAccountsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAccountsResponse clone() => ListAccountsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAccountsResponse copyWith(void Function(ListAccountsResponse) updates) => super.copyWith((message) => updates(message as ListAccountsResponse)) as ListAccountsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAccountsResponse create() => ListAccountsResponse._();
  ListAccountsResponse createEmptyInstance() => create();
  static $pb.PbList<ListAccountsResponse> createRepeated() => $pb.PbList<ListAccountsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAccountsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountsResponse>(create);
  static ListAccountsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Account> get accounts => $_getList(0);
}

class ImportAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImportAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extendedPublicKey')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterKeyFingerprint', $pb.PbFieldType.OY)
    ..e<AddressType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressType', $pb.PbFieldType.OE, defaultOrMaker: AddressType.UNKNOWN, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dryRun')
    ..hasRequiredFields = false
  ;

  ImportAccountRequest._() : super();
  factory ImportAccountRequest({
    $core.String? name,
    $core.String? extendedPublicKey,
    $core.List<$core.int>? masterKeyFingerprint,
    AddressType? addressType,
    $core.bool? dryRun,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (extendedPublicKey != null) {
      _result.extendedPublicKey = extendedPublicKey;
    }
    if (masterKeyFingerprint != null) {
      _result.masterKeyFingerprint = masterKeyFingerprint;
    }
    if (addressType != null) {
      _result.addressType = addressType;
    }
    if (dryRun != null) {
      _result.dryRun = dryRun;
    }
    return _result;
  }
  factory ImportAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImportAccountRequest clone() => ImportAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImportAccountRequest copyWith(void Function(ImportAccountRequest) updates) => super.copyWith((message) => updates(message as ImportAccountRequest)) as ImportAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportAccountRequest create() => ImportAccountRequest._();
  ImportAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ImportAccountRequest> createRepeated() => $pb.PbList<ImportAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ImportAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportAccountRequest>(create);
  static ImportAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extendedPublicKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set extendedPublicKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtendedPublicKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtendedPublicKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get masterKeyFingerprint => $_getN(2);
  @$pb.TagNumber(3)
  set masterKeyFingerprint($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMasterKeyFingerprint() => $_has(2);
  @$pb.TagNumber(3)
  void clearMasterKeyFingerprint() => clearField(3);

  @$pb.TagNumber(4)
  AddressType get addressType => $_getN(3);
  @$pb.TagNumber(4)
  set addressType(AddressType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddressType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddressType() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get dryRun => $_getBF(4);
  @$pb.TagNumber(5)
  set dryRun($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDryRun() => $_has(4);
  @$pb.TagNumber(5)
  void clearDryRun() => clearField(5);
}

class ImportAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImportAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOM<Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: Account.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dryRunExternalAddrs')
    ..pPS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dryRunInternalAddrs')
    ..hasRequiredFields = false
  ;

  ImportAccountResponse._() : super();
  factory ImportAccountResponse({
    Account? account,
    $core.Iterable<$core.String>? dryRunExternalAddrs,
    $core.Iterable<$core.String>? dryRunInternalAddrs,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (dryRunExternalAddrs != null) {
      _result.dryRunExternalAddrs.addAll(dryRunExternalAddrs);
    }
    if (dryRunInternalAddrs != null) {
      _result.dryRunInternalAddrs.addAll(dryRunInternalAddrs);
    }
    return _result;
  }
  factory ImportAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImportAccountResponse clone() => ImportAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImportAccountResponse copyWith(void Function(ImportAccountResponse) updates) => super.copyWith((message) => updates(message as ImportAccountResponse)) as ImportAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportAccountResponse create() => ImportAccountResponse._();
  ImportAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ImportAccountResponse> createRepeated() => $pb.PbList<ImportAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ImportAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportAccountResponse>(create);
  static ImportAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account(Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  Account ensureAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get dryRunExternalAddrs => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.String> get dryRunInternalAddrs => $_getList(2);
}

class ImportPublicKeyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImportPublicKeyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicKey', $pb.PbFieldType.OY)
    ..e<AddressType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressType', $pb.PbFieldType.OE, defaultOrMaker: AddressType.UNKNOWN, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..hasRequiredFields = false
  ;

  ImportPublicKeyRequest._() : super();
  factory ImportPublicKeyRequest({
    $core.List<$core.int>? publicKey,
    AddressType? addressType,
  }) {
    final _result = create();
    if (publicKey != null) {
      _result.publicKey = publicKey;
    }
    if (addressType != null) {
      _result.addressType = addressType;
    }
    return _result;
  }
  factory ImportPublicKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportPublicKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImportPublicKeyRequest clone() => ImportPublicKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImportPublicKeyRequest copyWith(void Function(ImportPublicKeyRequest) updates) => super.copyWith((message) => updates(message as ImportPublicKeyRequest)) as ImportPublicKeyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportPublicKeyRequest create() => ImportPublicKeyRequest._();
  ImportPublicKeyRequest createEmptyInstance() => create();
  static $pb.PbList<ImportPublicKeyRequest> createRepeated() => $pb.PbList<ImportPublicKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static ImportPublicKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportPublicKeyRequest>(create);
  static ImportPublicKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get publicKey => $_getN(0);
  @$pb.TagNumber(1)
  set publicKey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublicKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublicKey() => clearField(1);

  @$pb.TagNumber(2)
  AddressType get addressType => $_getN(1);
  @$pb.TagNumber(2)
  set addressType(AddressType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressType() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressType() => clearField(2);
}

class ImportPublicKeyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImportPublicKeyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ImportPublicKeyResponse._() : super();
  factory ImportPublicKeyResponse() => create();
  factory ImportPublicKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImportPublicKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImportPublicKeyResponse clone() => ImportPublicKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImportPublicKeyResponse copyWith(void Function(ImportPublicKeyResponse) updates) => super.copyWith((message) => updates(message as ImportPublicKeyResponse)) as ImportPublicKeyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImportPublicKeyResponse create() => ImportPublicKeyResponse._();
  ImportPublicKeyResponse createEmptyInstance() => create();
  static $pb.PbList<ImportPublicKeyResponse> createRepeated() => $pb.PbList<ImportPublicKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static ImportPublicKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImportPublicKeyResponse>(create);
  static ImportPublicKeyResponse? _defaultInstance;
}

class Transaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txHex', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..hasRequiredFields = false
  ;

  Transaction._() : super();
  factory Transaction({
    $core.List<$core.int>? txHex,
    $core.String? label,
  }) {
    final _result = create();
    if (txHex != null) {
      _result.txHex = txHex;
    }
    if (label != null) {
      _result.label = label;
    }
    return _result;
  }
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txHex => $_getN(0);
  @$pb.TagNumber(1)
  set txHex($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxHex() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxHex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);
}

class PublishResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PublishResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publishError')
    ..hasRequiredFields = false
  ;

  PublishResponse._() : super();
  factory PublishResponse({
    $core.String? publishError,
  }) {
    final _result = create();
    if (publishError != null) {
      _result.publishError = publishError;
    }
    return _result;
  }
  factory PublishResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PublishResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PublishResponse clone() => PublishResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PublishResponse copyWith(void Function(PublishResponse) updates) => super.copyWith((message) => updates(message as PublishResponse)) as PublishResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PublishResponse create() => PublishResponse._();
  PublishResponse createEmptyInstance() => create();
  static $pb.PbList<PublishResponse> createRepeated() => $pb.PbList<PublishResponse>();
  @$core.pragma('dart2js:noInline')
  static PublishResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PublishResponse>(create);
  static PublishResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get publishError => $_getSZ(0);
  @$pb.TagNumber(1)
  set publishError($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPublishError() => $_has(0);
  @$pb.TagNumber(1)
  void clearPublishError() => clearField(1);
}

class SendOutputsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendOutputsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerKw')
    ..pc<$1.TxOut>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs', $pb.PbFieldType.PM, subBuilder: $1.TxOut.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendUnconfirmed')
    ..hasRequiredFields = false
  ;

  SendOutputsRequest._() : super();
  factory SendOutputsRequest({
    $fixnum.Int64? satPerKw,
    $core.Iterable<$1.TxOut>? outputs,
    $core.String? label,
    $core.int? minConfs,
    $core.bool? spendUnconfirmed,
  }) {
    final _result = create();
    if (satPerKw != null) {
      _result.satPerKw = satPerKw;
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    if (label != null) {
      _result.label = label;
    }
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (spendUnconfirmed != null) {
      _result.spendUnconfirmed = spendUnconfirmed;
    }
    return _result;
  }
  factory SendOutputsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendOutputsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendOutputsRequest clone() => SendOutputsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendOutputsRequest copyWith(void Function(SendOutputsRequest) updates) => super.copyWith((message) => updates(message as SendOutputsRequest)) as SendOutputsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendOutputsRequest create() => SendOutputsRequest._();
  SendOutputsRequest createEmptyInstance() => create();
  static $pb.PbList<SendOutputsRequest> createRepeated() => $pb.PbList<SendOutputsRequest>();
  @$core.pragma('dart2js:noInline')
  static SendOutputsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendOutputsRequest>(create);
  static SendOutputsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get satPerKw => $_getI64(0);
  @$pb.TagNumber(1)
  set satPerKw($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSatPerKw() => $_has(0);
  @$pb.TagNumber(1)
  void clearSatPerKw() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$1.TxOut> get outputs => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get minConfs => $_getIZ(3);
  @$pb.TagNumber(4)
  set minConfs($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinConfs() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinConfs() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get spendUnconfirmed => $_getBF(4);
  @$pb.TagNumber(5)
  set spendUnconfirmed($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpendUnconfirmed() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpendUnconfirmed() => clearField(5);
}

class SendOutputsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendOutputsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawTx', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SendOutputsResponse._() : super();
  factory SendOutputsResponse({
    $core.List<$core.int>? rawTx,
  }) {
    final _result = create();
    if (rawTx != null) {
      _result.rawTx = rawTx;
    }
    return _result;
  }
  factory SendOutputsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendOutputsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendOutputsResponse clone() => SendOutputsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendOutputsResponse copyWith(void Function(SendOutputsResponse) updates) => super.copyWith((message) => updates(message as SendOutputsResponse)) as SendOutputsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendOutputsResponse create() => SendOutputsResponse._();
  SendOutputsResponse createEmptyInstance() => create();
  static $pb.PbList<SendOutputsResponse> createRepeated() => $pb.PbList<SendOutputsResponse>();
  @$core.pragma('dart2js:noInline')
  static SendOutputsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendOutputsResponse>(create);
  static SendOutputsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get rawTx => $_getN(0);
  @$pb.TagNumber(1)
  set rawTx($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRawTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawTx() => clearField(1);
}

class EstimateFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EstimateFeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confTarget', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  EstimateFeeRequest._() : super();
  factory EstimateFeeRequest({
    $core.int? confTarget,
  }) {
    final _result = create();
    if (confTarget != null) {
      _result.confTarget = confTarget;
    }
    return _result;
  }
  factory EstimateFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateFeeRequest clone() => EstimateFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateFeeRequest copyWith(void Function(EstimateFeeRequest) updates) => super.copyWith((message) => updates(message as EstimateFeeRequest)) as EstimateFeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateFeeRequest create() => EstimateFeeRequest._();
  EstimateFeeRequest createEmptyInstance() => create();
  static $pb.PbList<EstimateFeeRequest> createRepeated() => $pb.PbList<EstimateFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static EstimateFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateFeeRequest>(create);
  static EstimateFeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get confTarget => $_getIZ(0);
  @$pb.TagNumber(1)
  set confTarget($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConfTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfTarget() => clearField(1);
}

class EstimateFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EstimateFeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerKw')
    ..hasRequiredFields = false
  ;

  EstimateFeeResponse._() : super();
  factory EstimateFeeResponse({
    $fixnum.Int64? satPerKw,
  }) {
    final _result = create();
    if (satPerKw != null) {
      _result.satPerKw = satPerKw;
    }
    return _result;
  }
  factory EstimateFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateFeeResponse clone() => EstimateFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateFeeResponse copyWith(void Function(EstimateFeeResponse) updates) => super.copyWith((message) => updates(message as EstimateFeeResponse)) as EstimateFeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateFeeResponse create() => EstimateFeeResponse._();
  EstimateFeeResponse createEmptyInstance() => create();
  static $pb.PbList<EstimateFeeResponse> createRepeated() => $pb.PbList<EstimateFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static EstimateFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateFeeResponse>(create);
  static EstimateFeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get satPerKw => $_getI64(0);
  @$pb.TagNumber(1)
  set satPerKw($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSatPerKw() => $_has(0);
  @$pb.TagNumber(1)
  void clearSatPerKw() => clearField(1);
}

class PendingSweep extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingSweep', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOM<$0.OutPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: $0.OutPoint.create)
    ..e<WitnessType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'witnessType', $pb.PbFieldType.OE, defaultOrMaker: WitnessType.UNKNOWN_WITNESS, valueOf: WitnessType.valueOf, enumValues: WitnessType.values)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountSat', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerByte', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'broadcastAttempts', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextBroadcastHeight', $pb.PbFieldType.OU3)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'force')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedConfTarget', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedSatPerByte', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerVbyte', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedSatPerVbyte', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  PendingSweep._() : super();
  factory PendingSweep({
    $0.OutPoint? outpoint,
    WitnessType? witnessType,
    $core.int? amountSat,
  @$core.Deprecated('This field is deprecated.')
    $core.int? satPerByte,
    $core.int? broadcastAttempts,
    $core.int? nextBroadcastHeight,
    $core.bool? force,
    $core.int? requestedConfTarget,
  @$core.Deprecated('This field is deprecated.')
    $core.int? requestedSatPerByte,
    $fixnum.Int64? satPerVbyte,
    $fixnum.Int64? requestedSatPerVbyte,
  }) {
    final _result = create();
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (witnessType != null) {
      _result.witnessType = witnessType;
    }
    if (amountSat != null) {
      _result.amountSat = amountSat;
    }
    if (satPerByte != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.satPerByte = satPerByte;
    }
    if (broadcastAttempts != null) {
      _result.broadcastAttempts = broadcastAttempts;
    }
    if (nextBroadcastHeight != null) {
      _result.nextBroadcastHeight = nextBroadcastHeight;
    }
    if (force != null) {
      _result.force = force;
    }
    if (requestedConfTarget != null) {
      _result.requestedConfTarget = requestedConfTarget;
    }
    if (requestedSatPerByte != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.requestedSatPerByte = requestedSatPerByte;
    }
    if (satPerVbyte != null) {
      _result.satPerVbyte = satPerVbyte;
    }
    if (requestedSatPerVbyte != null) {
      _result.requestedSatPerVbyte = requestedSatPerVbyte;
    }
    return _result;
  }
  factory PendingSweep.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingSweep.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingSweep clone() => PendingSweep()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingSweep copyWith(void Function(PendingSweep) updates) => super.copyWith((message) => updates(message as PendingSweep)) as PendingSweep; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingSweep create() => PendingSweep._();
  PendingSweep createEmptyInstance() => create();
  static $pb.PbList<PendingSweep> createRepeated() => $pb.PbList<PendingSweep>();
  @$core.pragma('dart2js:noInline')
  static PendingSweep getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingSweep>(create);
  static PendingSweep? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OutPoint get outpoint => $_getN(0);
  @$pb.TagNumber(1)
  set outpoint($0.OutPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  $0.OutPoint ensureOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  WitnessType get witnessType => $_getN(1);
  @$pb.TagNumber(2)
  set witnessType(WitnessType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWitnessType() => $_has(1);
  @$pb.TagNumber(2)
  void clearWitnessType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get amountSat => $_getIZ(2);
  @$pb.TagNumber(3)
  set amountSat($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmountSat() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmountSat() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.int get satPerByte => $_getIZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set satPerByte($core.int v) { $_setUnsignedInt32(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasSatPerByte() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearSatPerByte() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get broadcastAttempts => $_getIZ(4);
  @$pb.TagNumber(5)
  set broadcastAttempts($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBroadcastAttempts() => $_has(4);
  @$pb.TagNumber(5)
  void clearBroadcastAttempts() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get nextBroadcastHeight => $_getIZ(5);
  @$pb.TagNumber(6)
  set nextBroadcastHeight($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNextBroadcastHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearNextBroadcastHeight() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get force => $_getBF(6);
  @$pb.TagNumber(7)
  set force($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasForce() => $_has(6);
  @$pb.TagNumber(7)
  void clearForce() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get requestedConfTarget => $_getIZ(7);
  @$pb.TagNumber(8)
  set requestedConfTarget($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestedConfTarget() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestedConfTarget() => clearField(8);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.int get requestedSatPerByte => $_getIZ(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  set requestedSatPerByte($core.int v) { $_setUnsignedInt32(8, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.bool hasRequestedSatPerByte() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  void clearRequestedSatPerByte() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get satPerVbyte => $_getI64(9);
  @$pb.TagNumber(10)
  set satPerVbyte($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSatPerVbyte() => $_has(9);
  @$pb.TagNumber(10)
  void clearSatPerVbyte() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get requestedSatPerVbyte => $_getI64(10);
  @$pb.TagNumber(11)
  set requestedSatPerVbyte($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRequestedSatPerVbyte() => $_has(10);
  @$pb.TagNumber(11)
  void clearRequestedSatPerVbyte() => clearField(11);
}

class PendingSweepsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingSweepsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PendingSweepsRequest._() : super();
  factory PendingSweepsRequest() => create();
  factory PendingSweepsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingSweepsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingSweepsRequest clone() => PendingSweepsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingSweepsRequest copyWith(void Function(PendingSweepsRequest) updates) => super.copyWith((message) => updates(message as PendingSweepsRequest)) as PendingSweepsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingSweepsRequest create() => PendingSweepsRequest._();
  PendingSweepsRequest createEmptyInstance() => create();
  static $pb.PbList<PendingSweepsRequest> createRepeated() => $pb.PbList<PendingSweepsRequest>();
  @$core.pragma('dart2js:noInline')
  static PendingSweepsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingSweepsRequest>(create);
  static PendingSweepsRequest? _defaultInstance;
}

class PendingSweepsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingSweepsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..pc<PendingSweep>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingSweeps', $pb.PbFieldType.PM, subBuilder: PendingSweep.create)
    ..hasRequiredFields = false
  ;

  PendingSweepsResponse._() : super();
  factory PendingSweepsResponse({
    $core.Iterable<PendingSweep>? pendingSweeps,
  }) {
    final _result = create();
    if (pendingSweeps != null) {
      _result.pendingSweeps.addAll(pendingSweeps);
    }
    return _result;
  }
  factory PendingSweepsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingSweepsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingSweepsResponse clone() => PendingSweepsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingSweepsResponse copyWith(void Function(PendingSweepsResponse) updates) => super.copyWith((message) => updates(message as PendingSweepsResponse)) as PendingSweepsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingSweepsResponse create() => PendingSweepsResponse._();
  PendingSweepsResponse createEmptyInstance() => create();
  static $pb.PbList<PendingSweepsResponse> createRepeated() => $pb.PbList<PendingSweepsResponse>();
  @$core.pragma('dart2js:noInline')
  static PendingSweepsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingSweepsResponse>(create);
  static PendingSweepsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PendingSweep> get pendingSweeps => $_getList(0);
}

class BumpFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BumpFeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOM<$0.OutPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: $0.OutPoint.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerByte', $pb.PbFieldType.OU3)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'force')
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerVbyte', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  BumpFeeRequest._() : super();
  factory BumpFeeRequest({
    $0.OutPoint? outpoint,
    $core.int? targetConf,
  @$core.Deprecated('This field is deprecated.')
    $core.int? satPerByte,
    $core.bool? force,
    $fixnum.Int64? satPerVbyte,
  }) {
    final _result = create();
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    if (satPerByte != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.satPerByte = satPerByte;
    }
    if (force != null) {
      _result.force = force;
    }
    if (satPerVbyte != null) {
      _result.satPerVbyte = satPerVbyte;
    }
    return _result;
  }
  factory BumpFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BumpFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BumpFeeRequest clone() => BumpFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BumpFeeRequest copyWith(void Function(BumpFeeRequest) updates) => super.copyWith((message) => updates(message as BumpFeeRequest)) as BumpFeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BumpFeeRequest create() => BumpFeeRequest._();
  BumpFeeRequest createEmptyInstance() => create();
  static $pb.PbList<BumpFeeRequest> createRepeated() => $pb.PbList<BumpFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static BumpFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BumpFeeRequest>(create);
  static BumpFeeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.OutPoint get outpoint => $_getN(0);
  @$pb.TagNumber(1)
  set outpoint($0.OutPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  $0.OutPoint ensureOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get targetConf => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetConf($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetConf() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetConf() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.int get satPerByte => $_getIZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set satPerByte($core.int v) { $_setUnsignedInt32(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasSatPerByte() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearSatPerByte() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get force => $_getBF(3);
  @$pb.TagNumber(4)
  set force($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasForce() => $_has(3);
  @$pb.TagNumber(4)
  void clearForce() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get satPerVbyte => $_getI64(4);
  @$pb.TagNumber(5)
  set satPerVbyte($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSatPerVbyte() => $_has(4);
  @$pb.TagNumber(5)
  void clearSatPerVbyte() => clearField(5);
}

class BumpFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BumpFeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  BumpFeeResponse._() : super();
  factory BumpFeeResponse() => create();
  factory BumpFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BumpFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BumpFeeResponse clone() => BumpFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BumpFeeResponse copyWith(void Function(BumpFeeResponse) updates) => super.copyWith((message) => updates(message as BumpFeeResponse)) as BumpFeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BumpFeeResponse create() => BumpFeeResponse._();
  BumpFeeResponse createEmptyInstance() => create();
  static $pb.PbList<BumpFeeResponse> createRepeated() => $pb.PbList<BumpFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static BumpFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BumpFeeResponse>(create);
  static BumpFeeResponse? _defaultInstance;
}

class ListSweepsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSweepsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verbose')
    ..hasRequiredFields = false
  ;

  ListSweepsRequest._() : super();
  factory ListSweepsRequest({
    $core.bool? verbose,
  }) {
    final _result = create();
    if (verbose != null) {
      _result.verbose = verbose;
    }
    return _result;
  }
  factory ListSweepsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSweepsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSweepsRequest clone() => ListSweepsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSweepsRequest copyWith(void Function(ListSweepsRequest) updates) => super.copyWith((message) => updates(message as ListSweepsRequest)) as ListSweepsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSweepsRequest create() => ListSweepsRequest._();
  ListSweepsRequest createEmptyInstance() => create();
  static $pb.PbList<ListSweepsRequest> createRepeated() => $pb.PbList<ListSweepsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSweepsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSweepsRequest>(create);
  static ListSweepsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get verbose => $_getBF(0);
  @$pb.TagNumber(1)
  set verbose($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerbose() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerbose() => clearField(1);
}

class ListSweepsResponse_TransactionIDs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSweepsResponse.TransactionIDs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionIds')
    ..hasRequiredFields = false
  ;

  ListSweepsResponse_TransactionIDs._() : super();
  factory ListSweepsResponse_TransactionIDs({
    $core.Iterable<$core.String>? transactionIds,
  }) {
    final _result = create();
    if (transactionIds != null) {
      _result.transactionIds.addAll(transactionIds);
    }
    return _result;
  }
  factory ListSweepsResponse_TransactionIDs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSweepsResponse_TransactionIDs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSweepsResponse_TransactionIDs clone() => ListSweepsResponse_TransactionIDs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSweepsResponse_TransactionIDs copyWith(void Function(ListSweepsResponse_TransactionIDs) updates) => super.copyWith((message) => updates(message as ListSweepsResponse_TransactionIDs)) as ListSweepsResponse_TransactionIDs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSweepsResponse_TransactionIDs create() => ListSweepsResponse_TransactionIDs._();
  ListSweepsResponse_TransactionIDs createEmptyInstance() => create();
  static $pb.PbList<ListSweepsResponse_TransactionIDs> createRepeated() => $pb.PbList<ListSweepsResponse_TransactionIDs>();
  @$core.pragma('dart2js:noInline')
  static ListSweepsResponse_TransactionIDs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSweepsResponse_TransactionIDs>(create);
  static ListSweepsResponse_TransactionIDs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get transactionIds => $_getList(0);
}

enum ListSweepsResponse_Sweeps {
  transactionDetails, 
  transactionIds, 
  notSet
}

class ListSweepsResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ListSweepsResponse_Sweeps> _ListSweepsResponse_SweepsByTag = {
    1 : ListSweepsResponse_Sweeps.transactionDetails,
    2 : ListSweepsResponse_Sweeps.transactionIds,
    0 : ListSweepsResponse_Sweeps.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListSweepsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.TransactionDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionDetails', subBuilder: $0.TransactionDetails.create)
    ..aOM<ListSweepsResponse_TransactionIDs>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactionIds', subBuilder: ListSweepsResponse_TransactionIDs.create)
    ..hasRequiredFields = false
  ;

  ListSweepsResponse._() : super();
  factory ListSweepsResponse({
    $0.TransactionDetails? transactionDetails,
    ListSweepsResponse_TransactionIDs? transactionIds,
  }) {
    final _result = create();
    if (transactionDetails != null) {
      _result.transactionDetails = transactionDetails;
    }
    if (transactionIds != null) {
      _result.transactionIds = transactionIds;
    }
    return _result;
  }
  factory ListSweepsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListSweepsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListSweepsResponse clone() => ListSweepsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListSweepsResponse copyWith(void Function(ListSweepsResponse) updates) => super.copyWith((message) => updates(message as ListSweepsResponse)) as ListSweepsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListSweepsResponse create() => ListSweepsResponse._();
  ListSweepsResponse createEmptyInstance() => create();
  static $pb.PbList<ListSweepsResponse> createRepeated() => $pb.PbList<ListSweepsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSweepsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSweepsResponse>(create);
  static ListSweepsResponse? _defaultInstance;

  ListSweepsResponse_Sweeps whichSweeps() => _ListSweepsResponse_SweepsByTag[$_whichOneof(0)]!;
  void clearSweeps() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.TransactionDetails get transactionDetails => $_getN(0);
  @$pb.TagNumber(1)
  set transactionDetails($0.TransactionDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTransactionDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransactionDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.TransactionDetails ensureTransactionDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  ListSweepsResponse_TransactionIDs get transactionIds => $_getN(1);
  @$pb.TagNumber(2)
  set transactionIds(ListSweepsResponse_TransactionIDs v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionIds() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionIds() => clearField(2);
  @$pb.TagNumber(2)
  ListSweepsResponse_TransactionIDs ensureTransactionIds() => $_ensure(1);
}

class LabelTransactionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LabelTransactionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txid', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'overwrite')
    ..hasRequiredFields = false
  ;

  LabelTransactionRequest._() : super();
  factory LabelTransactionRequest({
    $core.List<$core.int>? txid,
    $core.String? label,
    $core.bool? overwrite,
  }) {
    final _result = create();
    if (txid != null) {
      _result.txid = txid;
    }
    if (label != null) {
      _result.label = label;
    }
    if (overwrite != null) {
      _result.overwrite = overwrite;
    }
    return _result;
  }
  factory LabelTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelTransactionRequest clone() => LabelTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelTransactionRequest copyWith(void Function(LabelTransactionRequest) updates) => super.copyWith((message) => updates(message as LabelTransactionRequest)) as LabelTransactionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LabelTransactionRequest create() => LabelTransactionRequest._();
  LabelTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<LabelTransactionRequest> createRepeated() => $pb.PbList<LabelTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static LabelTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelTransactionRequest>(create);
  static LabelTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txid => $_getN(0);
  @$pb.TagNumber(1)
  set txid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get overwrite => $_getBF(2);
  @$pb.TagNumber(3)
  set overwrite($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOverwrite() => $_has(2);
  @$pb.TagNumber(3)
  void clearOverwrite() => clearField(3);
}

class LabelTransactionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LabelTransactionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LabelTransactionResponse._() : super();
  factory LabelTransactionResponse() => create();
  factory LabelTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelTransactionResponse clone() => LabelTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelTransactionResponse copyWith(void Function(LabelTransactionResponse) updates) => super.copyWith((message) => updates(message as LabelTransactionResponse)) as LabelTransactionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LabelTransactionResponse create() => LabelTransactionResponse._();
  LabelTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<LabelTransactionResponse> createRepeated() => $pb.PbList<LabelTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static LabelTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelTransactionResponse>(create);
  static LabelTransactionResponse? _defaultInstance;
}

enum FundPsbtRequest_Template {
  psbt, 
  raw, 
  notSet
}

enum FundPsbtRequest_Fees {
  targetConf, 
  satPerVbyte, 
  notSet
}

class FundPsbtRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundPsbtRequest_Template> _FundPsbtRequest_TemplateByTag = {
    1 : FundPsbtRequest_Template.psbt,
    2 : FundPsbtRequest_Template.raw,
    0 : FundPsbtRequest_Template.notSet
  };
  static const $core.Map<$core.int, FundPsbtRequest_Fees> _FundPsbtRequest_FeesByTag = {
    3 : FundPsbtRequest_Fees.targetConf,
    4 : FundPsbtRequest_Fees.satPerVbyte,
    0 : FundPsbtRequest_Fees.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundPsbtRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..oo(1, [3, 4])
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psbt', $pb.PbFieldType.OY)
    ..aOM<TxTemplate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'raw', subBuilder: TxTemplate.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerVbyte', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..aOB(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendUnconfirmed')
    ..hasRequiredFields = false
  ;

  FundPsbtRequest._() : super();
  factory FundPsbtRequest({
    $core.List<$core.int>? psbt,
    TxTemplate? raw,
    $core.int? targetConf,
    $fixnum.Int64? satPerVbyte,
    $core.String? account,
    $core.int? minConfs,
    $core.bool? spendUnconfirmed,
  }) {
    final _result = create();
    if (psbt != null) {
      _result.psbt = psbt;
    }
    if (raw != null) {
      _result.raw = raw;
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    if (satPerVbyte != null) {
      _result.satPerVbyte = satPerVbyte;
    }
    if (account != null) {
      _result.account = account;
    }
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (spendUnconfirmed != null) {
      _result.spendUnconfirmed = spendUnconfirmed;
    }
    return _result;
  }
  factory FundPsbtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundPsbtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundPsbtRequest clone() => FundPsbtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundPsbtRequest copyWith(void Function(FundPsbtRequest) updates) => super.copyWith((message) => updates(message as FundPsbtRequest)) as FundPsbtRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundPsbtRequest create() => FundPsbtRequest._();
  FundPsbtRequest createEmptyInstance() => create();
  static $pb.PbList<FundPsbtRequest> createRepeated() => $pb.PbList<FundPsbtRequest>();
  @$core.pragma('dart2js:noInline')
  static FundPsbtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundPsbtRequest>(create);
  static FundPsbtRequest? _defaultInstance;

  FundPsbtRequest_Template whichTemplate() => _FundPsbtRequest_TemplateByTag[$_whichOneof(0)]!;
  void clearTemplate() => clearField($_whichOneof(0));

  FundPsbtRequest_Fees whichFees() => _FundPsbtRequest_FeesByTag[$_whichOneof(1)]!;
  void clearFees() => clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.List<$core.int> get psbt => $_getN(0);
  @$pb.TagNumber(1)
  set psbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearPsbt() => clearField(1);

  @$pb.TagNumber(2)
  TxTemplate get raw => $_getN(1);
  @$pb.TagNumber(2)
  set raw(TxTemplate v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRaw() => $_has(1);
  @$pb.TagNumber(2)
  void clearRaw() => clearField(2);
  @$pb.TagNumber(2)
  TxTemplate ensureRaw() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get targetConf => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetConf($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetConf() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetConf() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get satPerVbyte => $_getI64(3);
  @$pb.TagNumber(4)
  set satPerVbyte($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSatPerVbyte() => $_has(3);
  @$pb.TagNumber(4)
  void clearSatPerVbyte() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get account => $_getSZ(4);
  @$pb.TagNumber(5)
  set account($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccount() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccount() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get minConfs => $_getIZ(5);
  @$pb.TagNumber(6)
  set minConfs($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMinConfs() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinConfs() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get spendUnconfirmed => $_getBF(6);
  @$pb.TagNumber(7)
  set spendUnconfirmed($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpendUnconfirmed() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpendUnconfirmed() => clearField(7);
}

class FundPsbtResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundPsbtResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundedPsbt', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'changeOutputIndex', $pb.PbFieldType.O3)
    ..pc<UtxoLease>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockedUtxos', $pb.PbFieldType.PM, subBuilder: UtxoLease.create)
    ..hasRequiredFields = false
  ;

  FundPsbtResponse._() : super();
  factory FundPsbtResponse({
    $core.List<$core.int>? fundedPsbt,
    $core.int? changeOutputIndex,
    $core.Iterable<UtxoLease>? lockedUtxos,
  }) {
    final _result = create();
    if (fundedPsbt != null) {
      _result.fundedPsbt = fundedPsbt;
    }
    if (changeOutputIndex != null) {
      _result.changeOutputIndex = changeOutputIndex;
    }
    if (lockedUtxos != null) {
      _result.lockedUtxos.addAll(lockedUtxos);
    }
    return _result;
  }
  factory FundPsbtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundPsbtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundPsbtResponse clone() => FundPsbtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundPsbtResponse copyWith(void Function(FundPsbtResponse) updates) => super.copyWith((message) => updates(message as FundPsbtResponse)) as FundPsbtResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundPsbtResponse create() => FundPsbtResponse._();
  FundPsbtResponse createEmptyInstance() => create();
  static $pb.PbList<FundPsbtResponse> createRepeated() => $pb.PbList<FundPsbtResponse>();
  @$core.pragma('dart2js:noInline')
  static FundPsbtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundPsbtResponse>(create);
  static FundPsbtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fundedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set fundedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFundedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearFundedPsbt() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get changeOutputIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set changeOutputIndex($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChangeOutputIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearChangeOutputIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<UtxoLease> get lockedUtxos => $_getList(2);
}

class TxTemplate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TxTemplate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..pc<$0.OutPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inputs', $pb.PbFieldType.PM, subBuilder: $0.OutPoint.create)
    ..m<$core.String, $fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputs', entryClassName: 'TxTemplate.OutputsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OU6, packageName: const $pb.PackageName('walletrpc'))
    ..hasRequiredFields = false
  ;

  TxTemplate._() : super();
  factory TxTemplate({
    $core.Iterable<$0.OutPoint>? inputs,
    $core.Map<$core.String, $fixnum.Int64>? outputs,
  }) {
    final _result = create();
    if (inputs != null) {
      _result.inputs.addAll(inputs);
    }
    if (outputs != null) {
      _result.outputs.addAll(outputs);
    }
    return _result;
  }
  factory TxTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TxTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TxTemplate clone() => TxTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TxTemplate copyWith(void Function(TxTemplate) updates) => super.copyWith((message) => updates(message as TxTemplate)) as TxTemplate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxTemplate create() => TxTemplate._();
  TxTemplate createEmptyInstance() => create();
  static $pb.PbList<TxTemplate> createRepeated() => $pb.PbList<TxTemplate>();
  @$core.pragma('dart2js:noInline')
  static TxTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TxTemplate>(create);
  static TxTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$0.OutPoint> get inputs => $_getList(0);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $fixnum.Int64> get outputs => $_getMap(1);
}

class UtxoLease extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UtxoLease', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.OY)
    ..aOM<$0.OutPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: $0.OutPoint.create)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiration', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  UtxoLease._() : super();
  factory UtxoLease({
    $core.List<$core.int>? id,
    $0.OutPoint? outpoint,
    $fixnum.Int64? expiration,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (expiration != null) {
      _result.expiration = expiration;
    }
    return _result;
  }
  factory UtxoLease.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UtxoLease.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UtxoLease clone() => UtxoLease()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UtxoLease copyWith(void Function(UtxoLease) updates) => super.copyWith((message) => updates(message as UtxoLease)) as UtxoLease; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UtxoLease create() => UtxoLease._();
  UtxoLease createEmptyInstance() => create();
  static $pb.PbList<UtxoLease> createRepeated() => $pb.PbList<UtxoLease>();
  @$core.pragma('dart2js:noInline')
  static UtxoLease getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UtxoLease>(create);
  static UtxoLease? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $0.OutPoint get outpoint => $_getN(1);
  @$pb.TagNumber(2)
  set outpoint($0.OutPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutpoint() => clearField(2);
  @$pb.TagNumber(2)
  $0.OutPoint ensureOutpoint() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get expiration => $_getI64(2);
  @$pb.TagNumber(3)
  set expiration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExpiration() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpiration() => clearField(3);
}

class SignPsbtRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignPsbtRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundedPsbt', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignPsbtRequest._() : super();
  factory SignPsbtRequest({
    $core.List<$core.int>? fundedPsbt,
  }) {
    final _result = create();
    if (fundedPsbt != null) {
      _result.fundedPsbt = fundedPsbt;
    }
    return _result;
  }
  factory SignPsbtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignPsbtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignPsbtRequest clone() => SignPsbtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignPsbtRequest copyWith(void Function(SignPsbtRequest) updates) => super.copyWith((message) => updates(message as SignPsbtRequest)) as SignPsbtRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignPsbtRequest create() => SignPsbtRequest._();
  SignPsbtRequest createEmptyInstance() => create();
  static $pb.PbList<SignPsbtRequest> createRepeated() => $pb.PbList<SignPsbtRequest>();
  @$core.pragma('dart2js:noInline')
  static SignPsbtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignPsbtRequest>(create);
  static SignPsbtRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fundedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set fundedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFundedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearFundedPsbt() => clearField(1);
}

class SignPsbtResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignPsbtResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signedPsbt', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignPsbtResponse._() : super();
  factory SignPsbtResponse({
    $core.List<$core.int>? signedPsbt,
  }) {
    final _result = create();
    if (signedPsbt != null) {
      _result.signedPsbt = signedPsbt;
    }
    return _result;
  }
  factory SignPsbtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignPsbtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignPsbtResponse clone() => SignPsbtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignPsbtResponse copyWith(void Function(SignPsbtResponse) updates) => super.copyWith((message) => updates(message as SignPsbtResponse)) as SignPsbtResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignPsbtResponse create() => SignPsbtResponse._();
  SignPsbtResponse createEmptyInstance() => create();
  static $pb.PbList<SignPsbtResponse> createRepeated() => $pb.PbList<SignPsbtResponse>();
  @$core.pragma('dart2js:noInline')
  static SignPsbtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignPsbtResponse>(create);
  static SignPsbtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set signedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignedPsbt() => clearField(1);
}

class FinalizePsbtRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FinalizePsbtRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundedPsbt', $pb.PbFieldType.OY)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account')
    ..hasRequiredFields = false
  ;

  FinalizePsbtRequest._() : super();
  factory FinalizePsbtRequest({
    $core.List<$core.int>? fundedPsbt,
    $core.String? account,
  }) {
    final _result = create();
    if (fundedPsbt != null) {
      _result.fundedPsbt = fundedPsbt;
    }
    if (account != null) {
      _result.account = account;
    }
    return _result;
  }
  factory FinalizePsbtRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinalizePsbtRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinalizePsbtRequest clone() => FinalizePsbtRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinalizePsbtRequest copyWith(void Function(FinalizePsbtRequest) updates) => super.copyWith((message) => updates(message as FinalizePsbtRequest)) as FinalizePsbtRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FinalizePsbtRequest create() => FinalizePsbtRequest._();
  FinalizePsbtRequest createEmptyInstance() => create();
  static $pb.PbList<FinalizePsbtRequest> createRepeated() => $pb.PbList<FinalizePsbtRequest>();
  @$core.pragma('dart2js:noInline')
  static FinalizePsbtRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinalizePsbtRequest>(create);
  static FinalizePsbtRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fundedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set fundedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFundedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearFundedPsbt() => clearField(1);

  @$pb.TagNumber(5)
  $core.String get account => $_getSZ(1);
  @$pb.TagNumber(5)
  set account($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccount() => $_has(1);
  @$pb.TagNumber(5)
  void clearAccount() => clearField(5);
}

class FinalizePsbtResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FinalizePsbtResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signedPsbt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawFinalTx', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  FinalizePsbtResponse._() : super();
  factory FinalizePsbtResponse({
    $core.List<$core.int>? signedPsbt,
    $core.List<$core.int>? rawFinalTx,
  }) {
    final _result = create();
    if (signedPsbt != null) {
      _result.signedPsbt = signedPsbt;
    }
    if (rawFinalTx != null) {
      _result.rawFinalTx = rawFinalTx;
    }
    return _result;
  }
  factory FinalizePsbtResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FinalizePsbtResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FinalizePsbtResponse clone() => FinalizePsbtResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FinalizePsbtResponse copyWith(void Function(FinalizePsbtResponse) updates) => super.copyWith((message) => updates(message as FinalizePsbtResponse)) as FinalizePsbtResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FinalizePsbtResponse create() => FinalizePsbtResponse._();
  FinalizePsbtResponse createEmptyInstance() => create();
  static $pb.PbList<FinalizePsbtResponse> createRepeated() => $pb.PbList<FinalizePsbtResponse>();
  @$core.pragma('dart2js:noInline')
  static FinalizePsbtResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FinalizePsbtResponse>(create);
  static FinalizePsbtResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set signedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignedPsbt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get rawFinalTx => $_getN(1);
  @$pb.TagNumber(2)
  set rawFinalTx($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRawFinalTx() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawFinalTx() => clearField(2);
}

class ListLeasesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLeasesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListLeasesRequest._() : super();
  factory ListLeasesRequest() => create();
  factory ListLeasesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLeasesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLeasesRequest clone() => ListLeasesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLeasesRequest copyWith(void Function(ListLeasesRequest) updates) => super.copyWith((message) => updates(message as ListLeasesRequest)) as ListLeasesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLeasesRequest create() => ListLeasesRequest._();
  ListLeasesRequest createEmptyInstance() => create();
  static $pb.PbList<ListLeasesRequest> createRepeated() => $pb.PbList<ListLeasesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListLeasesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLeasesRequest>(create);
  static ListLeasesRequest? _defaultInstance;
}

class ListLeasesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListLeasesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'walletrpc'), createEmptyInstance: create)
    ..pc<UtxoLease>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lockedUtxos', $pb.PbFieldType.PM, subBuilder: UtxoLease.create)
    ..hasRequiredFields = false
  ;

  ListLeasesResponse._() : super();
  factory ListLeasesResponse({
    $core.Iterable<UtxoLease>? lockedUtxos,
  }) {
    final _result = create();
    if (lockedUtxos != null) {
      _result.lockedUtxos.addAll(lockedUtxos);
    }
    return _result;
  }
  factory ListLeasesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListLeasesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListLeasesResponse clone() => ListLeasesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListLeasesResponse copyWith(void Function(ListLeasesResponse) updates) => super.copyWith((message) => updates(message as ListLeasesResponse)) as ListLeasesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLeasesResponse create() => ListLeasesResponse._();
  ListLeasesResponse createEmptyInstance() => create();
  static $pb.PbList<ListLeasesResponse> createRepeated() => $pb.PbList<ListLeasesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListLeasesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListLeasesResponse>(create);
  static ListLeasesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UtxoLease> get lockedUtxos => $_getList(0);
}

