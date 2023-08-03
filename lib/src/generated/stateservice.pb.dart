///
//  Generated code. Do not modify.
//  source: stateservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'stateservice.pbenum.dart';

export 'stateservice.pbenum.dart';

class SubscribeStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SubscribeStateRequest._() : super();
  factory SubscribeStateRequest() => create();
  factory SubscribeStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeStateRequest clone() => SubscribeStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeStateRequest copyWith(void Function(SubscribeStateRequest) updates) => super.copyWith((message) => updates(message as SubscribeStateRequest)) as SubscribeStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeStateRequest create() => SubscribeStateRequest._();
  SubscribeStateRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeStateRequest> createRepeated() => $pb.PbList<SubscribeStateRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeStateRequest>(create);
  static SubscribeStateRequest? _defaultInstance;
}

class SubscribeStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<WalletState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: WalletState.NON_EXISTING, valueOf: WalletState.valueOf, enumValues: WalletState.values)
    ..hasRequiredFields = false
  ;

  SubscribeStateResponse._() : super();
  factory SubscribeStateResponse({
    WalletState? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory SubscribeStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeStateResponse clone() => SubscribeStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeStateResponse copyWith(void Function(SubscribeStateResponse) updates) => super.copyWith((message) => updates(message as SubscribeStateResponse)) as SubscribeStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeStateResponse create() => SubscribeStateResponse._();
  SubscribeStateResponse createEmptyInstance() => create();
  static $pb.PbList<SubscribeStateResponse> createRepeated() => $pb.PbList<SubscribeStateResponse>();
  @$core.pragma('dart2js:noInline')
  static SubscribeStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeStateResponse>(create);
  static SubscribeStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WalletState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(WalletState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

class GetStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetStateRequest._() : super();
  factory GetStateRequest() => create();
  factory GetStateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStateRequest clone() => GetStateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStateRequest copyWith(void Function(GetStateRequest) updates) => super.copyWith((message) => updates(message as GetStateRequest)) as GetStateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStateRequest create() => GetStateRequest._();
  GetStateRequest createEmptyInstance() => create();
  static $pb.PbList<GetStateRequest> createRepeated() => $pb.PbList<GetStateRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStateRequest>(create);
  static GetStateRequest? _defaultInstance;
}

class GetStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetStateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<WalletState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: WalletState.NON_EXISTING, valueOf: WalletState.valueOf, enumValues: WalletState.values)
    ..hasRequiredFields = false
  ;

  GetStateResponse._() : super();
  factory GetStateResponse({
    WalletState? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory GetStateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetStateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetStateResponse clone() => GetStateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetStateResponse copyWith(void Function(GetStateResponse) updates) => super.copyWith((message) => updates(message as GetStateResponse)) as GetStateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetStateResponse create() => GetStateResponse._();
  GetStateResponse createEmptyInstance() => create();
  static $pb.PbList<GetStateResponse> createRepeated() => $pb.PbList<GetStateResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStateResponse>(create);
  static GetStateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  WalletState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(WalletState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
}

