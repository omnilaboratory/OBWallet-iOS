//
//  Generated code. Do not modify.
//  source: user/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'country.pbenum.dart' as $3;

class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo() => create();
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'userName')
    ..aOS(3, _omitFieldNames ? '' : 'passwordHash')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..e<$3.CountryCode>(5, _omitFieldNames ? '' : 'countryCode', $pb.PbFieldType.OE, defaultOrMaker: $3.CountryCode.UNKNOWNISO, valueOf: $3.CountryCode.valueOf, enumValues: $3.CountryCode.values)
    ..aOS(6, _omitFieldNames ? '' : 'id1')
    ..aOS(7, _omitFieldNames ? '' : 'id2')
    ..aOS(8, _omitFieldNames ? '' : 'idNum')
    ..aOS(9, _omitFieldNames ? '' : 'socialId')
    ..aOS(10, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(11, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(12, _omitFieldNames ? '' : 'mobile')
    ..aOS(13, _omitFieldNames ? '' : 'dob')
    ..aOS(14, _omitFieldNames ? '' : 'address1')
    ..aOS(15, _omitFieldNames ? '' : 'address2')
    ..aOS(16, _omitFieldNames ? '' : 'city')
    ..aOS(17, _omitFieldNames ? '' : 'state')
    ..aOS(18, _omitFieldNames ? '' : 'postCode')
    ..a<$fixnum.Int64>(19, _omitFieldNames ? '' : 'updatedAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(20, _omitFieldNames ? '' : 'kycinfoOk')
    ..aOS(21, _omitFieldNames ? '' : 'openId')
    ..aOS(22, _omitFieldNames ? '' : 'kycStatus')
    ..e<$3.CurrencyCode>(23, _omitFieldNames ? '' : 'currency', $pb.PbFieldType.OE, defaultOrMaker: $3.CurrencyCode.UNKNOWNCurrency, valueOf: $3.CurrencyCode.valueOf, enumValues: $3.CurrencyCode.values)
    ..a<$fixnum.Int64>(24, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(25, _omitFieldNames ? '' : 'ethAddress')
    ..aOS(26, _omitFieldNames ? '' : 'btcAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)) as UserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get userName => $_getSZ(1);
  @$pb.TagNumber(2)
  set userName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserName() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get passwordHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set passwordHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPasswordHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearPasswordHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $3.CountryCode get countryCode => $_getN(4);
  @$pb.TagNumber(5)
  set countryCode($3.CountryCode v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCountryCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountryCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get id1 => $_getSZ(5);
  @$pb.TagNumber(6)
  set id1($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasId1() => $_has(5);
  @$pb.TagNumber(6)
  void clearId1() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get id2 => $_getSZ(6);
  @$pb.TagNumber(7)
  set id2($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasId2() => $_has(6);
  @$pb.TagNumber(7)
  void clearId2() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get idNum => $_getSZ(7);
  @$pb.TagNumber(8)
  set idNum($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasIdNum() => $_has(7);
  @$pb.TagNumber(8)
  void clearIdNum() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get socialId => $_getSZ(8);
  @$pb.TagNumber(9)
  set socialId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSocialId() => $_has(8);
  @$pb.TagNumber(9)
  void clearSocialId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get firstName => $_getSZ(9);
  @$pb.TagNumber(10)
  set firstName($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFirstName() => $_has(9);
  @$pb.TagNumber(10)
  void clearFirstName() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get lastName => $_getSZ(10);
  @$pb.TagNumber(11)
  set lastName($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLastName() => $_has(10);
  @$pb.TagNumber(11)
  void clearLastName() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get mobile => $_getSZ(11);
  @$pb.TagNumber(12)
  set mobile($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMobile() => $_has(11);
  @$pb.TagNumber(12)
  void clearMobile() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get dob => $_getSZ(12);
  @$pb.TagNumber(13)
  set dob($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasDob() => $_has(12);
  @$pb.TagNumber(13)
  void clearDob() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get address1 => $_getSZ(13);
  @$pb.TagNumber(14)
  set address1($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAddress1() => $_has(13);
  @$pb.TagNumber(14)
  void clearAddress1() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get address2 => $_getSZ(14);
  @$pb.TagNumber(15)
  set address2($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAddress2() => $_has(14);
  @$pb.TagNumber(15)
  void clearAddress2() => clearField(15);

  @$pb.TagNumber(16)
  $core.String get city => $_getSZ(15);
  @$pb.TagNumber(16)
  set city($core.String v) { $_setString(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCity() => $_has(15);
  @$pb.TagNumber(16)
  void clearCity() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get state => $_getSZ(16);
  @$pb.TagNumber(17)
  set state($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasState() => $_has(16);
  @$pb.TagNumber(17)
  void clearState() => clearField(17);

  @$pb.TagNumber(18)
  $core.String get postCode => $_getSZ(17);
  @$pb.TagNumber(18)
  set postCode($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasPostCode() => $_has(17);
  @$pb.TagNumber(18)
  void clearPostCode() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get updatedAt => $_getI64(18);
  @$pb.TagNumber(19)
  set updatedAt($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasUpdatedAt() => $_has(18);
  @$pb.TagNumber(19)
  void clearUpdatedAt() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get kycinfoOk => $_getBF(19);
  @$pb.TagNumber(20)
  set kycinfoOk($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasKycinfoOk() => $_has(19);
  @$pb.TagNumber(20)
  void clearKycinfoOk() => clearField(20);

  @$pb.TagNumber(21)
  $core.String get openId => $_getSZ(20);
  @$pb.TagNumber(21)
  set openId($core.String v) { $_setString(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasOpenId() => $_has(20);
  @$pb.TagNumber(21)
  void clearOpenId() => clearField(21);

  @$pb.TagNumber(22)
  $core.String get kycStatus => $_getSZ(21);
  @$pb.TagNumber(22)
  set kycStatus($core.String v) { $_setString(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasKycStatus() => $_has(21);
  @$pb.TagNumber(22)
  void clearKycStatus() => clearField(22);

  @$pb.TagNumber(23)
  $3.CurrencyCode get currency => $_getN(22);
  @$pb.TagNumber(23)
  set currency($3.CurrencyCode v) { setField(23, v); }
  @$pb.TagNumber(23)
  $core.bool hasCurrency() => $_has(22);
  @$pb.TagNumber(23)
  void clearCurrency() => clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get createdAt => $_getI64(23);
  @$pb.TagNumber(24)
  set createdAt($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasCreatedAt() => $_has(23);
  @$pb.TagNumber(24)
  void clearCreatedAt() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get ethAddress => $_getSZ(24);
  @$pb.TagNumber(25)
  set ethAddress($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasEthAddress() => $_has(24);
  @$pb.TagNumber(25)
  void clearEthAddress() => clearField(25);

  @$pb.TagNumber(26)
  $core.String get btcAddress => $_getSZ(25);
  @$pb.TagNumber(26)
  set btcAddress($core.String v) { $_setString(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasBtcAddress() => $_has(25);
  @$pb.TagNumber(26)
  void clearBtcAddress() => clearField(26);
}

class SignUpRequest extends $pb.GeneratedMessage {
  factory SignUpRequest() => create();
  SignUpRequest._() : super();
  factory SignUpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignUpRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userName')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'confirmPassword')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..aOS(5, _omitFieldNames ? '' : 'vcode')
    ..aOS(6, _omitFieldNames ? '' : 'verifyCodeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUpRequest clone() => SignUpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUpRequest copyWith(void Function(SignUpRequest) updates) => super.copyWith((message) => updates(message as SignUpRequest)) as SignUpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignUpRequest create() => SignUpRequest._();
  SignUpRequest createEmptyInstance() => create();
  static $pb.PbList<SignUpRequest> createRepeated() => $pb.PbList<SignUpRequest>();
  @$core.pragma('dart2js:noInline')
  static SignUpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUpRequest>(create);
  static SignUpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userName => $_getSZ(0);
  @$pb.TagNumber(1)
  set userName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get confirmPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set confirmPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConfirmPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearConfirmPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get vcode => $_getSZ(4);
  @$pb.TagNumber(5)
  set vcode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasVcode() => $_has(4);
  @$pb.TagNumber(5)
  void clearVcode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get verifyCodeId => $_getSZ(5);
  @$pb.TagNumber(6)
  set verifyCodeId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVerifyCodeId() => $_has(5);
  @$pb.TagNumber(6)
  void clearVerifyCodeId() => clearField(6);
}

class SignUpResponse extends $pb.GeneratedMessage {
  factory SignUpResponse() => create();
  SignUpResponse._() : super();
  factory SignUpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignUpResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUpResponse clone() => SignUpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUpResponse copyWith(void Function(SignUpResponse) updates) => super.copyWith((message) => updates(message as SignUpResponse)) as SignUpResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignUpResponse create() => SignUpResponse._();
  SignUpResponse createEmptyInstance() => create();
  static $pb.PbList<SignUpResponse> createRepeated() => $pb.PbList<SignUpResponse>();
  @$core.pragma('dart2js:noInline')
  static SignUpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUpResponse>(create);
  static SignUpResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class VerifyCodeRequest extends $pb.GeneratedMessage {
  factory VerifyCodeRequest() => create();
  VerifyCodeRequest._() : super();
  factory VerifyCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyCodeRequest clone() => VerifyCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyCodeRequest copyWith(void Function(VerifyCodeRequest) updates) => super.copyWith((message) => updates(message as VerifyCodeRequest)) as VerifyCodeRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyCodeRequest create() => VerifyCodeRequest._();
  VerifyCodeRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyCodeRequest> createRepeated() => $pb.PbList<VerifyCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyCodeRequest>(create);
  static VerifyCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);
}

class VerifyCodeResponse extends $pb.GeneratedMessage {
  factory VerifyCodeResponse() => create();
  VerifyCodeResponse._() : super();
  factory VerifyCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'verifyCodeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyCodeResponse clone() => VerifyCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyCodeResponse copyWith(void Function(VerifyCodeResponse) updates) => super.copyWith((message) => updates(message as VerifyCodeResponse)) as VerifyCodeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyCodeResponse create() => VerifyCodeResponse._();
  VerifyCodeResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyCodeResponse> createRepeated() => $pb.PbList<VerifyCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyCodeResponse>(create);
  static VerifyCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get verifyCodeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set verifyCodeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerifyCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerifyCodeId() => clearField(1);
}

class SignInRequest extends $pb.GeneratedMessage {
  factory SignInRequest() => create();
  SignInRequest._() : super();
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userName')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInRequest clone() => SignInRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInRequest copyWith(void Function(SignInRequest) updates) => super.copyWith((message) => updates(message as SignInRequest)) as SignInRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignInRequest create() => SignInRequest._();
  SignInRequest createEmptyInstance() => create();
  static $pb.PbList<SignInRequest> createRepeated() => $pb.PbList<SignInRequest>();
  @$core.pragma('dart2js:noInline')
  static SignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequest>(create);
  static SignInRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userName => $_getSZ(0);
  @$pb.TagNumber(1)
  set userName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserName() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);
}

class SignInResponse extends $pb.GeneratedMessage {
  factory SignInResponse() => create();
  SignInResponse._() : super();
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..aOB(2, _omitFieldNames ? '' : 'kycOk')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInResponse clone() => SignInResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInResponse copyWith(void Function(SignInResponse) updates) => super.copyWith((message) => updates(message as SignInResponse)) as SignInResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignInResponse create() => SignInResponse._();
  SignInResponse createEmptyInstance() => create();
  static $pb.PbList<SignInResponse> createRepeated() => $pb.PbList<SignInResponse>();
  @$core.pragma('dart2js:noInline')
  static SignInResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInResponse>(create);
  static SignInResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get kycOk => $_getBF(1);
  @$pb.TagNumber(2)
  set kycOk($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKycOk() => $_has(1);
  @$pb.TagNumber(2)
  void clearKycOk() => clearField(2);
}

class KycRequest extends $pb.GeneratedMessage {
  factory KycRequest() => create();
  KycRequest._() : super();
  factory KycRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KycRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<$3.CountryCode>(1, _omitFieldNames ? '' : 'countryCode', $pb.PbFieldType.OE, defaultOrMaker: $3.CountryCode.UNKNOWNISO, valueOf: $3.CountryCode.valueOf, enumValues: $3.CountryCode.values)
    ..e<$3.CurrencyCode>(2, _omitFieldNames ? '' : 'currency', $pb.PbFieldType.OE, defaultOrMaker: $3.CurrencyCode.UNKNOWNCurrency, valueOf: $3.CurrencyCode.valueOf, enumValues: $3.CurrencyCode.values)
    ..aOS(3, _omitFieldNames ? '' : 'id1')
    ..aOS(4, _omitFieldNames ? '' : 'id2')
    ..aOS(5, _omitFieldNames ? '' : 'idNum')
    ..aOS(6, _omitFieldNames ? '' : 'socialId')
    ..aOS(7, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(8, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(9, _omitFieldNames ? '' : 'mobile')
    ..aOS(10, _omitFieldNames ? '' : 'dob')
    ..aOS(11, _omitFieldNames ? '' : 'address1')
    ..aOS(12, _omitFieldNames ? '' : 'address2')
    ..aOS(13, _omitFieldNames ? '' : 'city')
    ..aOS(14, _omitFieldNames ? '' : 'state')
    ..aOS(15, _omitFieldNames ? '' : 'postCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycRequest clone() => KycRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycRequest copyWith(void Function(KycRequest) updates) => super.copyWith((message) => updates(message as KycRequest)) as KycRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KycRequest create() => KycRequest._();
  KycRequest createEmptyInstance() => create();
  static $pb.PbList<KycRequest> createRepeated() => $pb.PbList<KycRequest>();
  @$core.pragma('dart2js:noInline')
  static KycRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycRequest>(create);
  static KycRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.CountryCode get countryCode => $_getN(0);
  @$pb.TagNumber(1)
  set countryCode($3.CountryCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $3.CurrencyCode get currency => $_getN(1);
  @$pb.TagNumber(2)
  set currency($3.CurrencyCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrency() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrency() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get id1 => $_getSZ(2);
  @$pb.TagNumber(3)
  set id1($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasId1() => $_has(2);
  @$pb.TagNumber(3)
  void clearId1() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get id2 => $_getSZ(3);
  @$pb.TagNumber(4)
  set id2($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId2() => $_has(3);
  @$pb.TagNumber(4)
  void clearId2() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get idNum => $_getSZ(4);
  @$pb.TagNumber(5)
  set idNum($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIdNum() => $_has(4);
  @$pb.TagNumber(5)
  void clearIdNum() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get socialId => $_getSZ(5);
  @$pb.TagNumber(6)
  set socialId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSocialId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSocialId() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get firstName => $_getSZ(6);
  @$pb.TagNumber(7)
  set firstName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFirstName() => $_has(6);
  @$pb.TagNumber(7)
  void clearFirstName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get lastName => $_getSZ(7);
  @$pb.TagNumber(8)
  set lastName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastName() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get mobile => $_getSZ(8);
  @$pb.TagNumber(9)
  set mobile($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMobile() => $_has(8);
  @$pb.TagNumber(9)
  void clearMobile() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get dob => $_getSZ(9);
  @$pb.TagNumber(10)
  set dob($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDob() => $_has(9);
  @$pb.TagNumber(10)
  void clearDob() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get address1 => $_getSZ(10);
  @$pb.TagNumber(11)
  set address1($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAddress1() => $_has(10);
  @$pb.TagNumber(11)
  void clearAddress1() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get address2 => $_getSZ(11);
  @$pb.TagNumber(12)
  set address2($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAddress2() => $_has(11);
  @$pb.TagNumber(12)
  void clearAddress2() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get city => $_getSZ(12);
  @$pb.TagNumber(13)
  set city($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasCity() => $_has(12);
  @$pb.TagNumber(13)
  void clearCity() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get state => $_getSZ(13);
  @$pb.TagNumber(14)
  set state($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasState() => $_has(13);
  @$pb.TagNumber(14)
  void clearState() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get postCode => $_getSZ(14);
  @$pb.TagNumber(15)
  set postCode($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPostCode() => $_has(14);
  @$pb.TagNumber(15)
  void clearPostCode() => clearField(15);
}

class KycResponse extends $pb.GeneratedMessage {
  factory KycResponse() => create();
  KycResponse._() : super();
  factory KycResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KycResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KycResponse clone() => KycResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KycResponse copyWith(void Function(KycResponse) updates) => super.copyWith((message) => updates(message as KycResponse)) as KycResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KycResponse create() => KycResponse._();
  KycResponse createEmptyInstance() => create();
  static $pb.PbList<KycResponse> createRepeated() => $pb.PbList<KycResponse>();
  @$core.pragma('dart2js:noInline')
  static KycResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KycResponse>(create);
  static KycResponse? _defaultInstance;
}

class UploadRequest extends $pb.GeneratedMessage {
  factory UploadRequest() => create();
  UploadRequest._() : super();
  factory UploadRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'tag')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadRequest clone() => UploadRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadRequest copyWith(void Function(UploadRequest) updates) => super.copyWith((message) => updates(message as UploadRequest)) as UploadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadRequest create() => UploadRequest._();
  UploadRequest createEmptyInstance() => create();
  static $pb.PbList<UploadRequest> createRepeated() => $pb.PbList<UploadRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadRequest>(create);
  static UploadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get tag => $_getSZ(0);
  @$pb.TagNumber(1)
  set tag($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTag() => $_has(0);
  @$pb.TagNumber(1)
  void clearTag() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get content => $_getN(2);
  @$pb.TagNumber(3)
  set content($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
}

class UploadResponse extends $pb.GeneratedMessage {
  factory UploadResponse() => create();
  UploadResponse._() : super();
  factory UploadResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'imageUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadResponse clone() => UploadResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadResponse copyWith(void Function(UploadResponse) updates) => super.copyWith((message) => updates(message as UploadResponse)) as UploadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadResponse create() => UploadResponse._();
  UploadResponse createEmptyInstance() => create();
  static $pb.PbList<UploadResponse> createRepeated() => $pb.PbList<UploadResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadResponse>(create);
  static UploadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get imageUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageUrl() => clearField(1);
}

class GetUserInfoRequest extends $pb.GeneratedMessage {
  factory GetUserInfoRequest() => create();
  GetUserInfoRequest._() : super();
  factory GetUserInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserInfoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserInfoRequest clone() => GetUserInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserInfoRequest copyWith(void Function(GetUserInfoRequest) updates) => super.copyWith((message) => updates(message as GetUserInfoRequest)) as GetUserInfoRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserInfoRequest create() => GetUserInfoRequest._();
  GetUserInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetUserInfoRequest> createRepeated() => $pb.PbList<GetUserInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUserInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserInfoRequest>(create);
  static GetUserInfoRequest? _defaultInstance;
}

class GetUserInfoResponse extends $pb.GeneratedMessage {
  factory GetUserInfoResponse() => create();
  GetUserInfoResponse._() : super();
  factory GetUserInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserInfoResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOM<UserInfo>(1, _omitFieldNames ? '' : 'user', subBuilder: UserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserInfoResponse clone() => GetUserInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserInfoResponse copyWith(void Function(GetUserInfoResponse) updates) => super.copyWith((message) => updates(message as GetUserInfoResponse)) as GetUserInfoResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserInfoResponse create() => GetUserInfoResponse._();
  GetUserInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserInfoResponse> createRepeated() => $pb.PbList<GetUserInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserInfoResponse>(create);
  static GetUserInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  UserInfo get user => $_getN(0);
  @$pb.TagNumber(1)
  set user(UserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => clearField(1);
  @$pb.TagNumber(1)
  UserInfo ensureUser() => $_ensure(0);
}

class SayRequest extends $pb.GeneratedMessage {
  factory SayRequest() => create();
  SayRequest._() : super();
  factory SayRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SayRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SayRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sentence')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SayRequest clone() => SayRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SayRequest copyWith(void Function(SayRequest) updates) => super.copyWith((message) => updates(message as SayRequest)) as SayRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SayRequest create() => SayRequest._();
  SayRequest createEmptyInstance() => create();
  static $pb.PbList<SayRequest> createRepeated() => $pb.PbList<SayRequest>();
  @$core.pragma('dart2js:noInline')
  static SayRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SayRequest>(create);
  static SayRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sentence => $_getSZ(0);
  @$pb.TagNumber(1)
  set sentence($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSentence() => $_has(0);
  @$pb.TagNumber(1)
  void clearSentence() => clearField(1);
}

class SayResponse extends $pb.GeneratedMessage {
  factory SayResponse() => create();
  SayResponse._() : super();
  factory SayResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SayResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SayResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sentence')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SayResponse clone() => SayResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SayResponse copyWith(void Function(SayResponse) updates) => super.copyWith((message) => updates(message as SayResponse)) as SayResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SayResponse create() => SayResponse._();
  SayResponse createEmptyInstance() => create();
  static $pb.PbList<SayResponse> createRepeated() => $pb.PbList<SayResponse>();
  @$core.pragma('dart2js:noInline')
  static SayResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SayResponse>(create);
  static SayResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sentence => $_getSZ(0);
  @$pb.TagNumber(1)
  set sentence($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSentence() => $_has(0);
  @$pb.TagNumber(1)
  void clearSentence() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
