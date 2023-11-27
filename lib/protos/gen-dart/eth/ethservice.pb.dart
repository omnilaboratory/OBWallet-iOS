//
//  Generated code. Do not modify.
//  source: eth/ethservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class EthImportKeyRequest extends $pb.GeneratedMessage {
  factory EthImportKeyRequest() => create();
  EthImportKeyRequest._() : super();
  factory EthImportKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthImportKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthImportKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'keyhex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthImportKeyRequest clone() => EthImportKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthImportKeyRequest copyWith(void Function(EthImportKeyRequest) updates) => super.copyWith((message) => updates(message as EthImportKeyRequest)) as EthImportKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthImportKeyRequest create() => EthImportKeyRequest._();
  EthImportKeyRequest createEmptyInstance() => create();
  static $pb.PbList<EthImportKeyRequest> createRepeated() => $pb.PbList<EthImportKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static EthImportKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthImportKeyRequest>(create);
  static EthImportKeyRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get keyhex => $_getSZ(0);
  @$pb.TagNumber(1)
  set keyhex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyhex() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyhex() => clearField(1);
}

class EthImportKeyResponse extends $pb.GeneratedMessage {
  factory EthImportKeyResponse() => create();
  EthImportKeyResponse._() : super();
  factory EthImportKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthImportKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthImportKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthImportKeyResponse clone() => EthImportKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthImportKeyResponse copyWith(void Function(EthImportKeyResponse) updates) => super.copyWith((message) => updates(message as EthImportKeyResponse)) as EthImportKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthImportKeyResponse create() => EthImportKeyResponse._();
  EthImportKeyResponse createEmptyInstance() => create();
  static $pb.PbList<EthImportKeyResponse> createRepeated() => $pb.PbList<EthImportKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static EthImportKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthImportKeyResponse>(create);
  static EthImportKeyResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class EthGetTokenBalalanceRequest extends $pb.GeneratedMessage {
  factory EthGetTokenBalalanceRequest() => create();
  EthGetTokenBalalanceRequest._() : super();
  factory EthGetTokenBalalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetTokenBalalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetTokenBalalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tokenAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetTokenBalalanceRequest clone() => EthGetTokenBalalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetTokenBalalanceRequest copyWith(void Function(EthGetTokenBalalanceRequest) updates) => super.copyWith((message) => updates(message as EthGetTokenBalalanceRequest)) as EthGetTokenBalalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetTokenBalalanceRequest create() => EthGetTokenBalalanceRequest._();
  EthGetTokenBalalanceRequest createEmptyInstance() => create();
  static $pb.PbList<EthGetTokenBalalanceRequest> createRepeated() => $pb.PbList<EthGetTokenBalalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static EthGetTokenBalalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetTokenBalalanceRequest>(create);
  static EthGetTokenBalalanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tokenAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set tokenAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTokenAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearTokenAddress() => clearField(1);
}

class EthGetTokenBalalanceResponse extends $pb.GeneratedMessage {
  factory EthGetTokenBalalanceResponse() => create();
  EthGetTokenBalalanceResponse._() : super();
  factory EthGetTokenBalalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetTokenBalalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetTokenBalalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetTokenBalalanceResponse clone() => EthGetTokenBalalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetTokenBalalanceResponse copyWith(void Function(EthGetTokenBalalanceResponse) updates) => super.copyWith((message) => updates(message as EthGetTokenBalalanceResponse)) as EthGetTokenBalalanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetTokenBalalanceResponse create() => EthGetTokenBalalanceResponse._();
  EthGetTokenBalalanceResponse createEmptyInstance() => create();
  static $pb.PbList<EthGetTokenBalalanceResponse> createRepeated() => $pb.PbList<EthGetTokenBalalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static EthGetTokenBalalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetTokenBalalanceResponse>(create);
  static EthGetTokenBalalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get balance => $_getN(0);
  @$pb.TagNumber(1)
  set balance($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
}

class EthGetBalalanceRequest extends $pb.GeneratedMessage {
  factory EthGetBalalanceRequest() => create();
  EthGetBalalanceRequest._() : super();
  factory EthGetBalalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetBalalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetBalalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetBalalanceRequest clone() => EthGetBalalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetBalalanceRequest copyWith(void Function(EthGetBalalanceRequest) updates) => super.copyWith((message) => updates(message as EthGetBalalanceRequest)) as EthGetBalalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetBalalanceRequest create() => EthGetBalalanceRequest._();
  EthGetBalalanceRequest createEmptyInstance() => create();
  static $pb.PbList<EthGetBalalanceRequest> createRepeated() => $pb.PbList<EthGetBalalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static EthGetBalalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetBalalanceRequest>(create);
  static EthGetBalalanceRequest? _defaultInstance;
}

class EthGetBalalanceResponse extends $pb.GeneratedMessage {
  factory EthGetBalalanceResponse() => create();
  EthGetBalalanceResponse._() : super();
  factory EthGetBalalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetBalalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetBalalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetBalalanceResponse clone() => EthGetBalalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetBalalanceResponse copyWith(void Function(EthGetBalalanceResponse) updates) => super.copyWith((message) => updates(message as EthGetBalalanceResponse)) as EthGetBalalanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetBalalanceResponse create() => EthGetBalalanceResponse._();
  EthGetBalalanceResponse createEmptyInstance() => create();
  static $pb.PbList<EthGetBalalanceResponse> createRepeated() => $pb.PbList<EthGetBalalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static EthGetBalalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetBalalanceResponse>(create);
  static EthGetBalalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get balance => $_getN(0);
  @$pb.TagNumber(1)
  set balance($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
}

class ETHGetAppConfRequest extends $pb.GeneratedMessage {
  factory ETHGetAppConfRequest() => create();
  ETHGetAppConfRequest._() : super();
  factory ETHGetAppConfRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETHGetAppConfRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ETHGetAppConfRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ETHGetAppConfRequest clone() => ETHGetAppConfRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ETHGetAppConfRequest copyWith(void Function(ETHGetAppConfRequest) updates) => super.copyWith((message) => updates(message as ETHGetAppConfRequest)) as ETHGetAppConfRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHGetAppConfRequest create() => ETHGetAppConfRequest._();
  ETHGetAppConfRequest createEmptyInstance() => create();
  static $pb.PbList<ETHGetAppConfRequest> createRepeated() => $pb.PbList<ETHGetAppConfRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHGetAppConfRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ETHGetAppConfRequest>(create);
  static ETHGetAppConfRequest? _defaultInstance;
}

class ETHGetAppConfResponse extends $pb.GeneratedMessage {
  factory ETHGetAppConfResponse() => create();
  ETHGetAppConfResponse._() : super();
  factory ETHGetAppConfResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETHGetAppConfResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ETHGetAppConfResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serverAddress')
    ..aOS(2, _omitFieldNames ? '' : 'nftAddress')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'swapDiscount', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'createCardFee', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ETHGetAppConfResponse clone() => ETHGetAppConfResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ETHGetAppConfResponse copyWith(void Function(ETHGetAppConfResponse) updates) => super.copyWith((message) => updates(message as ETHGetAppConfResponse)) as ETHGetAppConfResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHGetAppConfResponse create() => ETHGetAppConfResponse._();
  ETHGetAppConfResponse createEmptyInstance() => create();
  static $pb.PbList<ETHGetAppConfResponse> createRepeated() => $pb.PbList<ETHGetAppConfResponse>();
  @$core.pragma('dart2js:noInline')
  static ETHGetAppConfResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ETHGetAppConfResponse>(create);
  static ETHGetAppConfResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serverAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set serverAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServerAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearServerAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get nftAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set nftAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNftAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearNftAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get swapDiscount => $_getN(2);
  @$pb.TagNumber(3)
  set swapDiscount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwapDiscount() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwapDiscount() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get createCardFee => $_getN(3);
  @$pb.TagNumber(4)
  set createCardFee($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreateCardFee() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreateCardFee() => clearField(4);
}

class UpdateSwapDiscountRequest extends $pb.GeneratedMessage {
  factory UpdateSwapDiscountRequest() => create();
  UpdateSwapDiscountRequest._() : super();
  factory UpdateSwapDiscountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSwapDiscountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSwapDiscountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'swapDiscount', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'createCardFee', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSwapDiscountRequest clone() => UpdateSwapDiscountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSwapDiscountRequest copyWith(void Function(UpdateSwapDiscountRequest) updates) => super.copyWith((message) => updates(message as UpdateSwapDiscountRequest)) as UpdateSwapDiscountRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSwapDiscountRequest create() => UpdateSwapDiscountRequest._();
  UpdateSwapDiscountRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateSwapDiscountRequest> createRepeated() => $pb.PbList<UpdateSwapDiscountRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateSwapDiscountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSwapDiscountRequest>(create);
  static UpdateSwapDiscountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get swapDiscount => $_getN(0);
  @$pb.TagNumber(1)
  set swapDiscount($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSwapDiscount() => $_has(0);
  @$pb.TagNumber(1)
  void clearSwapDiscount() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get createCardFee => $_getN(1);
  @$pb.TagNumber(2)
  set createCardFee($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateCardFee() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateCardFee() => clearField(2);
}

class UpdateSwapDiscountResponse extends $pb.GeneratedMessage {
  factory UpdateSwapDiscountResponse() => create();
  UpdateSwapDiscountResponse._() : super();
  factory UpdateSwapDiscountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateSwapDiscountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSwapDiscountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateSwapDiscountResponse clone() => UpdateSwapDiscountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateSwapDiscountResponse copyWith(void Function(UpdateSwapDiscountResponse) updates) => super.copyWith((message) => updates(message as UpdateSwapDiscountResponse)) as UpdateSwapDiscountResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSwapDiscountResponse create() => UpdateSwapDiscountResponse._();
  UpdateSwapDiscountResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSwapDiscountResponse> createRepeated() => $pb.PbList<UpdateSwapDiscountResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSwapDiscountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSwapDiscountResponse>(create);
  static UpdateSwapDiscountResponse? _defaultInstance;
}

class ETHGetAddressRequest extends $pb.GeneratedMessage {
  factory ETHGetAddressRequest() => create();
  ETHGetAddressRequest._() : super();
  factory ETHGetAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETHGetAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ETHGetAddressRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ETHGetAddressRequest clone() => ETHGetAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ETHGetAddressRequest copyWith(void Function(ETHGetAddressRequest) updates) => super.copyWith((message) => updates(message as ETHGetAddressRequest)) as ETHGetAddressRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHGetAddressRequest create() => ETHGetAddressRequest._();
  ETHGetAddressRequest createEmptyInstance() => create();
  static $pb.PbList<ETHGetAddressRequest> createRepeated() => $pb.PbList<ETHGetAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHGetAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ETHGetAddressRequest>(create);
  static ETHGetAddressRequest? _defaultInstance;
}

class ETHGetAddressResponse extends $pb.GeneratedMessage {
  factory ETHGetAddressResponse() => create();
  ETHGetAddressResponse._() : super();
  factory ETHGetAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETHGetAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ETHGetAddressResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ETHGetAddressResponse clone() => ETHGetAddressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ETHGetAddressResponse copyWith(void Function(ETHGetAddressResponse) updates) => super.copyWith((message) => updates(message as ETHGetAddressResponse)) as ETHGetAddressResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHGetAddressResponse create() => ETHGetAddressResponse._();
  ETHGetAddressResponse createEmptyInstance() => create();
  static $pb.PbList<ETHGetAddressResponse> createRepeated() => $pb.PbList<ETHGetAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static ETHGetAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ETHGetAddressResponse>(create);
  static ETHGetAddressResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class ETHDumpKeyRequest extends $pb.GeneratedMessage {
  factory ETHDumpKeyRequest() => create();
  ETHDumpKeyRequest._() : super();
  factory ETHDumpKeyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETHDumpKeyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ETHDumpKeyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ETHDumpKeyRequest clone() => ETHDumpKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ETHDumpKeyRequest copyWith(void Function(ETHDumpKeyRequest) updates) => super.copyWith((message) => updates(message as ETHDumpKeyRequest)) as ETHDumpKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHDumpKeyRequest create() => ETHDumpKeyRequest._();
  ETHDumpKeyRequest createEmptyInstance() => create();
  static $pb.PbList<ETHDumpKeyRequest> createRepeated() => $pb.PbList<ETHDumpKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static ETHDumpKeyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ETHDumpKeyRequest>(create);
  static ETHDumpKeyRequest? _defaultInstance;
}

class ETHDumpKeyResponse extends $pb.GeneratedMessage {
  factory ETHDumpKeyResponse() => create();
  ETHDumpKeyResponse._() : super();
  factory ETHDumpKeyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ETHDumpKeyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ETHDumpKeyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ETHDumpKeyResponse clone() => ETHDumpKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ETHDumpKeyResponse copyWith(void Function(ETHDumpKeyResponse) updates) => super.copyWith((message) => updates(message as ETHDumpKeyResponse)) as ETHDumpKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ETHDumpKeyResponse create() => ETHDumpKeyResponse._();
  ETHDumpKeyResponse createEmptyInstance() => create();
  static $pb.PbList<ETHDumpKeyResponse> createRepeated() => $pb.PbList<ETHDumpKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static ETHDumpKeyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ETHDumpKeyResponse>(create);
  static ETHDumpKeyResponse? _defaultInstance;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StateTestRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StateTestResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
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

class EthListHistoryRequest extends $pb.GeneratedMessage {
  factory EthListHistoryRequest() => create();
  EthListHistoryRequest._() : super();
  factory EthListHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthListHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthListHistoryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aInt64(2, _omitFieldNames ? '' : 'page')
    ..aInt64(3, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthListHistoryRequest clone() => EthListHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthListHistoryRequest copyWith(void Function(EthListHistoryRequest) updates) => super.copyWith((message) => updates(message as EthListHistoryRequest)) as EthListHistoryRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthListHistoryRequest create() => EthListHistoryRequest._();
  EthListHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<EthListHistoryRequest> createRepeated() => $pb.PbList<EthListHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static EthListHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthListHistoryRequest>(create);
  static EthListHistoryRequest? _defaultInstance;

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
  $fixnum.Int64 get size => $_getI64(2);
  @$pb.TagNumber(3)
  set size($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => clearField(3);
}

class EthListHistoryResponse extends $pb.GeneratedMessage {
  factory EthListHistoryResponse() => create();
  EthListHistoryResponse._() : super();
  factory EthListHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthListHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthListHistoryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aInt64(2, _omitFieldNames ? '' : 'page')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..pc<EthHistory>(5, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: EthHistory.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthListHistoryResponse clone() => EthListHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthListHistoryResponse copyWith(void Function(EthListHistoryResponse) updates) => super.copyWith((message) => updates(message as EthListHistoryResponse)) as EthListHistoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthListHistoryResponse create() => EthListHistoryResponse._();
  EthListHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<EthListHistoryResponse> createRepeated() => $pb.PbList<EthListHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static EthListHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthListHistoryResponse>(create);
  static EthListHistoryResponse? _defaultInstance;

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
  $core.List<EthHistory> get items => $_getList(3);
}

class EthGetAddressRequest extends $pb.GeneratedMessage {
  factory EthGetAddressRequest() => create();
  EthGetAddressRequest._() : super();
  factory EthGetAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetAddressRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetAddressRequest clone() => EthGetAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetAddressRequest copyWith(void Function(EthGetAddressRequest) updates) => super.copyWith((message) => updates(message as EthGetAddressRequest)) as EthGetAddressRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetAddressRequest create() => EthGetAddressRequest._();
  EthGetAddressRequest createEmptyInstance() => create();
  static $pb.PbList<EthGetAddressRequest> createRepeated() => $pb.PbList<EthGetAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static EthGetAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetAddressRequest>(create);
  static EthGetAddressRequest? _defaultInstance;
}

class EthGetAddressResponse extends $pb.GeneratedMessage {
  factory EthGetAddressResponse() => create();
  EthGetAddressResponse._() : super();
  factory EthGetAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetAddressResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Address', protoName: 'Address')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetAddressResponse clone() => EthGetAddressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetAddressResponse copyWith(void Function(EthGetAddressResponse) updates) => super.copyWith((message) => updates(message as EthGetAddressResponse)) as EthGetAddressResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetAddressResponse create() => EthGetAddressResponse._();
  EthGetAddressResponse createEmptyInstance() => create();
  static $pb.PbList<EthGetAddressResponse> createRepeated() => $pb.PbList<EthGetAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static EthGetAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetAddressResponse>(create);
  static EthGetAddressResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class EthTransferEthRequest extends $pb.GeneratedMessage {
  factory EthTransferEthRequest() => create();
  EthTransferEthRequest._() : super();
  factory EthTransferEthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthTransferEthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthTransferEthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'to')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthTransferEthRequest clone() => EthTransferEthRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthTransferEthRequest copyWith(void Function(EthTransferEthRequest) updates) => super.copyWith((message) => updates(message as EthTransferEthRequest)) as EthTransferEthRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthTransferEthRequest create() => EthTransferEthRequest._();
  EthTransferEthRequest createEmptyInstance() => create();
  static $pb.PbList<EthTransferEthRequest> createRepeated() => $pb.PbList<EthTransferEthRequest>();
  @$core.pragma('dart2js:noInline')
  static EthTransferEthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthTransferEthRequest>(create);
  static EthTransferEthRequest? _defaultInstance;

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
}

class EthTransferEthResponse extends $pb.GeneratedMessage {
  factory EthTransferEthResponse() => create();
  EthTransferEthResponse._() : super();
  factory EthTransferEthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthTransferEthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthTransferEthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthTransferEthResponse clone() => EthTransferEthResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthTransferEthResponse copyWith(void Function(EthTransferEthResponse) updates) => super.copyWith((message) => updates(message as EthTransferEthResponse)) as EthTransferEthResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthTransferEthResponse create() => EthTransferEthResponse._();
  EthTransferEthResponse createEmptyInstance() => create();
  static $pb.PbList<EthTransferEthResponse> createRepeated() => $pb.PbList<EthTransferEthResponse>();
  @$core.pragma('dart2js:noInline')
  static EthTransferEthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthTransferEthResponse>(create);
  static EthTransferEthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);
}

class EthTransferTokenRequest extends $pb.GeneratedMessage {
  factory EthTransferTokenRequest() => create();
  EthTransferTokenRequest._() : super();
  factory EthTransferTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthTransferTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthTransferTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOS(2, _omitFieldNames ? '' : 'to')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthTransferTokenRequest clone() => EthTransferTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthTransferTokenRequest copyWith(void Function(EthTransferTokenRequest) updates) => super.copyWith((message) => updates(message as EthTransferTokenRequest)) as EthTransferTokenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthTransferTokenRequest create() => EthTransferTokenRequest._();
  EthTransferTokenRequest createEmptyInstance() => create();
  static $pb.PbList<EthTransferTokenRequest> createRepeated() => $pb.PbList<EthTransferTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static EthTransferTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthTransferTokenRequest>(create);
  static EthTransferTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
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
}

class EthTransferTokenResponse extends $pb.GeneratedMessage {
  factory EthTransferTokenResponse() => create();
  EthTransferTokenResponse._() : super();
  factory EthTransferTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthTransferTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthTransferTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthTransferTokenResponse clone() => EthTransferTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthTransferTokenResponse copyWith(void Function(EthTransferTokenResponse) updates) => super.copyWith((message) => updates(message as EthTransferTokenResponse)) as EthTransferTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthTransferTokenResponse create() => EthTransferTokenResponse._();
  EthTransferTokenResponse createEmptyInstance() => create();
  static $pb.PbList<EthTransferTokenResponse> createRepeated() => $pb.PbList<EthTransferTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static EthTransferTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthTransferTokenResponse>(create);
  static EthTransferTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);
}

class EthTrackTxRequest extends $pb.GeneratedMessage {
  factory EthTrackTxRequest() => create();
  EthTrackTxRequest._() : super();
  factory EthTrackTxRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthTrackTxRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthTrackTxRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthTrackTxRequest clone() => EthTrackTxRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthTrackTxRequest copyWith(void Function(EthTrackTxRequest) updates) => super.copyWith((message) => updates(message as EthTrackTxRequest)) as EthTrackTxRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthTrackTxRequest create() => EthTrackTxRequest._();
  EthTrackTxRequest createEmptyInstance() => create();
  static $pb.PbList<EthTrackTxRequest> createRepeated() => $pb.PbList<EthTrackTxRequest>();
  @$core.pragma('dart2js:noInline')
  static EthTrackTxRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthTrackTxRequest>(create);
  static EthTrackTxRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txId => $_getSZ(0);
  @$pb.TagNumber(1)
  set txId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxId() => clearField(1);
}

class EthTrackTxResponse extends $pb.GeneratedMessage {
  factory EthTrackTxResponse() => create();
  EthTrackTxResponse._() : super();
  factory EthTrackTxResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthTrackTxResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthTrackTxResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthTrackTxResponse clone() => EthTrackTxResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthTrackTxResponse copyWith(void Function(EthTrackTxResponse) updates) => super.copyWith((message) => updates(message as EthTrackTxResponse)) as EthTrackTxResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthTrackTxResponse create() => EthTrackTxResponse._();
  EthTrackTxResponse createEmptyInstance() => create();
  static $pb.PbList<EthTrackTxResponse> createRepeated() => $pb.PbList<EthTrackTxResponse>();
  @$core.pragma('dart2js:noInline')
  static EthTrackTxResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthTrackTxResponse>(create);
  static EthTrackTxResponse? _defaultInstance;
}

class EthAddTokenResponse extends $pb.GeneratedMessage {
  factory EthAddTokenResponse() => create();
  EthAddTokenResponse._() : super();
  factory EthAddTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthAddTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthAddTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthAddTokenResponse clone() => EthAddTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthAddTokenResponse copyWith(void Function(EthAddTokenResponse) updates) => super.copyWith((message) => updates(message as EthAddTokenResponse)) as EthAddTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthAddTokenResponse create() => EthAddTokenResponse._();
  EthAddTokenResponse createEmptyInstance() => create();
  static $pb.PbList<EthAddTokenResponse> createRepeated() => $pb.PbList<EthAddTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static EthAddTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthAddTokenResponse>(create);
  static EthAddTokenResponse? _defaultInstance;
}

class EthGetAllTokenRequest extends $pb.GeneratedMessage {
  factory EthGetAllTokenRequest() => create();
  EthGetAllTokenRequest._() : super();
  factory EthGetAllTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetAllTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetAllTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetAllTokenRequest clone() => EthGetAllTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetAllTokenRequest copyWith(void Function(EthGetAllTokenRequest) updates) => super.copyWith((message) => updates(message as EthGetAllTokenRequest)) as EthGetAllTokenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetAllTokenRequest create() => EthGetAllTokenRequest._();
  EthGetAllTokenRequest createEmptyInstance() => create();
  static $pb.PbList<EthGetAllTokenRequest> createRepeated() => $pb.PbList<EthGetAllTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static EthGetAllTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetAllTokenRequest>(create);
  static EthGetAllTokenRequest? _defaultInstance;
}

class EthGetAllTokenResponse extends $pb.GeneratedMessage {
  factory EthGetAllTokenResponse() => create();
  EthGetAllTokenResponse._() : super();
  factory EthGetAllTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthGetAllTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthGetAllTokenResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<EthToken>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: EthToken.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthGetAllTokenResponse clone() => EthGetAllTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthGetAllTokenResponse copyWith(void Function(EthGetAllTokenResponse) updates) => super.copyWith((message) => updates(message as EthGetAllTokenResponse)) as EthGetAllTokenResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthGetAllTokenResponse create() => EthGetAllTokenResponse._();
  EthGetAllTokenResponse createEmptyInstance() => create();
  static $pb.PbList<EthGetAllTokenResponse> createRepeated() => $pb.PbList<EthGetAllTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static EthGetAllTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthGetAllTokenResponse>(create);
  static EthGetAllTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<EthToken> get items => $_getList(0);
}

class EthHistory extends $pb.GeneratedMessage {
  factory EthHistory() => create();
  EthHistory._() : super();
  factory EthHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthHistory', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'TokenAddress', protoName: 'TokenAddress')
    ..aOS(3, _omitFieldNames ? '' : 'TokenName', protoName: 'TokenName')
    ..aOS(4, _omitFieldNames ? '' : 'To', protoName: 'To')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'txId')
    ..aInt64(7, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthHistory clone() => EthHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthHistory copyWith(void Function(EthHistory) updates) => super.copyWith((message) => updates(message as EthHistory)) as EthHistory;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthHistory create() => EthHistory._();
  EthHistory createEmptyInstance() => create();
  static $pb.PbList<EthHistory> createRepeated() => $pb.PbList<EthHistory>();
  @$core.pragma('dart2js:noInline')
  static EthHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthHistory>(create);
  static EthHistory? _defaultInstance;

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
}

class EthToken extends $pb.GeneratedMessage {
  factory EthToken() => create();
  EthToken._() : super();
  factory EthToken.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EthToken.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EthToken', package: const $pb.PackageName(_omitMessageNames ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'tokenName')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'decimals', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(4, _omitFieldNames ? '' : 'id')
    ..aInt64(5, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EthToken clone() => EthToken()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EthToken copyWith(void Function(EthToken) updates) => super.copyWith((message) => updates(message as EthToken)) as EthToken;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EthToken create() => EthToken._();
  EthToken createEmptyInstance() => create();
  static $pb.PbList<EthToken> createRepeated() => $pb.PbList<EthToken>();
  @$core.pragma('dart2js:noInline')
  static EthToken getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EthToken>(create);
  static EthToken? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tokenName => $_getSZ(1);
  @$pb.TagNumber(2)
  set tokenName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTokenName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTokenName() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get decimals => $_getI64(2);
  @$pb.TagNumber(3)
  set decimals($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDecimals() => $_has(2);
  @$pb.TagNumber(3)
  void clearDecimals() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get id => $_getI64(3);
  @$pb.TagNumber(4)
  set id($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get updatedAt => $_getI64(4);
  @$pb.TagNumber(5)
  set updatedAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
