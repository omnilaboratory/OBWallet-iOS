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

import 'account.pb.dart' as $0;
import 'country.pbenum.dart' as $4;
import 'user.pbenum.dart';

export 'user.pbenum.dart';

class ForgetPwdRequest extends $pb.GeneratedMessage {
  factory ForgetPwdRequest() => create();
  ForgetPwdRequest._() : super();
  factory ForgetPwdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgetPwdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForgetPwdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'vcode')
    ..aOS(4, _omitFieldNames ? '' : 'verifyCodeId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForgetPwdRequest clone() => ForgetPwdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForgetPwdRequest copyWith(void Function(ForgetPwdRequest) updates) => super.copyWith((message) => updates(message as ForgetPwdRequest)) as ForgetPwdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgetPwdRequest create() => ForgetPwdRequest._();
  ForgetPwdRequest createEmptyInstance() => create();
  static $pb.PbList<ForgetPwdRequest> createRepeated() => $pb.PbList<ForgetPwdRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgetPwdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgetPwdRequest>(create);
  static ForgetPwdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get vcode => $_getSZ(2);
  @$pb.TagNumber(3)
  set vcode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVcode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVcode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get verifyCodeId => $_getSZ(3);
  @$pb.TagNumber(4)
  set verifyCodeId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerifyCodeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerifyCodeId() => clearField(4);
}

class ForgetPwdResponse extends $pb.GeneratedMessage {
  factory ForgetPwdResponse() => create();
  ForgetPwdResponse._() : super();
  factory ForgetPwdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForgetPwdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForgetPwdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForgetPwdResponse clone() => ForgetPwdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForgetPwdResponse copyWith(void Function(ForgetPwdResponse) updates) => super.copyWith((message) => updates(message as ForgetPwdResponse)) as ForgetPwdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgetPwdResponse create() => ForgetPwdResponse._();
  ForgetPwdResponse createEmptyInstance() => create();
  static $pb.PbList<ForgetPwdResponse> createRepeated() => $pb.PbList<ForgetPwdResponse>();
  @$core.pragma('dart2js:noInline')
  static ForgetPwdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgetPwdResponse>(create);
  static ForgetPwdResponse? _defaultInstance;
}

class UpdateUserLangRequest extends $pb.GeneratedMessage {
  factory UpdateUserLangRequest() => create();
  UpdateUserLangRequest._() : super();
  factory UpdateUserLangRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserLangRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserLangRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'language')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserLangRequest clone() => UpdateUserLangRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserLangRequest copyWith(void Function(UpdateUserLangRequest) updates) => super.copyWith((message) => updates(message as UpdateUserLangRequest)) as UpdateUserLangRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserLangRequest create() => UpdateUserLangRequest._();
  UpdateUserLangRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserLangRequest> createRepeated() => $pb.PbList<UpdateUserLangRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserLangRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserLangRequest>(create);
  static UpdateUserLangRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get language => $_getSZ(0);
  @$pb.TagNumber(1)
  set language($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLanguage() => $_has(0);
  @$pb.TagNumber(1)
  void clearLanguage() => clearField(1);
}

class UpdateUserLangResponse extends $pb.GeneratedMessage {
  factory UpdateUserLangResponse() => create();
  UpdateUserLangResponse._() : super();
  factory UpdateUserLangResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUserLangResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserLangResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUserLangResponse clone() => UpdateUserLangResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUserLangResponse copyWith(void Function(UpdateUserLangResponse) updates) => super.copyWith((message) => updates(message as UpdateUserLangResponse)) as UpdateUserLangResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserLangResponse create() => UpdateUserLangResponse._();
  UpdateUserLangResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateUserLangResponse> createRepeated() => $pb.PbList<UpdateUserLangResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserLangResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserLangResponse>(create);
  static UpdateUserLangResponse? _defaultInstance;
}

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
    ..e<$4.CountryCode>(5, _omitFieldNames ? '' : 'countryCode', $pb.PbFieldType.OE, defaultOrMaker: $4.CountryCode.UNKNOWNISO, valueOf: $4.CountryCode.valueOf, enumValues: $4.CountryCode.values)
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
    ..e<$4.CurrencyCode>(23, _omitFieldNames ? '' : 'currency', $pb.PbFieldType.OE, defaultOrMaker: $4.CurrencyCode.UNKNOWNCurrency, valueOf: $4.CurrencyCode.valueOf, enumValues: $4.CurrencyCode.values)
    ..a<$fixnum.Int64>(24, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(25, _omitFieldNames ? '' : 'ethAddress')
    ..aOS(26, _omitFieldNames ? '' : 'btcAddress')
    ..a<$fixnum.Int64>(27, _omitFieldNames ? '' : 'cardCount', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(28, _omitFieldNames ? '' : 'userType')
    ..aInt64(29, _omitFieldNames ? '' : 'muserId')
    ..aOS(30, _omitFieldNames ? '' : 'invitationCode')
    ..aOS(31, _omitFieldNames ? '' : 'registCode')
    ..aInt64(32, _omitFieldNames ? '' : 'invitationUserid')
    ..aOB(33, _omitFieldNames ? '' : 'isAgentChannel')
    ..aInt64(34, _omitFieldNames ? '' : 'refUserid')
    ..aOS(35, _omitFieldNames ? '' : 'language')
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
  $4.CountryCode get countryCode => $_getN(4);
  @$pb.TagNumber(5)
  set countryCode($4.CountryCode v) { setField(5, v); }
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
  $4.CurrencyCode get currency => $_getN(22);
  @$pb.TagNumber(23)
  set currency($4.CurrencyCode v) { setField(23, v); }
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

  @$pb.TagNumber(27)
  $fixnum.Int64 get cardCount => $_getI64(26);
  @$pb.TagNumber(27)
  set cardCount($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasCardCount() => $_has(26);
  @$pb.TagNumber(27)
  void clearCardCount() => clearField(27);

  @$pb.TagNumber(28)
  $fixnum.Int64 get userType => $_getI64(27);
  @$pb.TagNumber(28)
  set userType($fixnum.Int64 v) { $_setInt64(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasUserType() => $_has(27);
  @$pb.TagNumber(28)
  void clearUserType() => clearField(28);

  @$pb.TagNumber(29)
  $fixnum.Int64 get muserId => $_getI64(28);
  @$pb.TagNumber(29)
  set muserId($fixnum.Int64 v) { $_setInt64(28, v); }
  @$pb.TagNumber(29)
  $core.bool hasMuserId() => $_has(28);
  @$pb.TagNumber(29)
  void clearMuserId() => clearField(29);

  @$pb.TagNumber(30)
  $core.String get invitationCode => $_getSZ(29);
  @$pb.TagNumber(30)
  set invitationCode($core.String v) { $_setString(29, v); }
  @$pb.TagNumber(30)
  $core.bool hasInvitationCode() => $_has(29);
  @$pb.TagNumber(30)
  void clearInvitationCode() => clearField(30);

  @$pb.TagNumber(31)
  $core.String get registCode => $_getSZ(30);
  @$pb.TagNumber(31)
  set registCode($core.String v) { $_setString(30, v); }
  @$pb.TagNumber(31)
  $core.bool hasRegistCode() => $_has(30);
  @$pb.TagNumber(31)
  void clearRegistCode() => clearField(31);

  @$pb.TagNumber(32)
  $fixnum.Int64 get invitationUserid => $_getI64(31);
  @$pb.TagNumber(32)
  set invitationUserid($fixnum.Int64 v) { $_setInt64(31, v); }
  @$pb.TagNumber(32)
  $core.bool hasInvitationUserid() => $_has(31);
  @$pb.TagNumber(32)
  void clearInvitationUserid() => clearField(32);

  @$pb.TagNumber(33)
  $core.bool get isAgentChannel => $_getBF(32);
  @$pb.TagNumber(33)
  set isAgentChannel($core.bool v) { $_setBool(32, v); }
  @$pb.TagNumber(33)
  $core.bool hasIsAgentChannel() => $_has(32);
  @$pb.TagNumber(33)
  void clearIsAgentChannel() => clearField(33);

  @$pb.TagNumber(34)
  $fixnum.Int64 get refUserid => $_getI64(33);
  @$pb.TagNumber(34)
  set refUserid($fixnum.Int64 v) { $_setInt64(33, v); }
  @$pb.TagNumber(34)
  $core.bool hasRefUserid() => $_has(33);
  @$pb.TagNumber(34)
  void clearRefUserid() => clearField(34);

  @$pb.TagNumber(35)
  $core.String get language => $_getSZ(34);
  @$pb.TagNumber(35)
  set language($core.String v) { $_setString(34, v); }
  @$pb.TagNumber(35)
  $core.bool hasLanguage() => $_has(34);
  @$pb.TagNumber(35)
  void clearLanguage() => clearField(35);
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
    ..aOS(7, _omitFieldNames ? '' : 'deviceId')
    ..aOS(8, _omitFieldNames ? '' : 'os')
    ..aOS(9, _omitFieldNames ? '' : 'osVersion', protoName: 'osVersion')
    ..aOS(10, _omitFieldNames ? '' : 'registCode')
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

  @$pb.TagNumber(7)
  $core.String get deviceId => $_getSZ(6);
  @$pb.TagNumber(7)
  set deviceId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviceId() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeviceId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get os => $_getSZ(7);
  @$pb.TagNumber(8)
  set os($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOs() => $_has(7);
  @$pb.TagNumber(8)
  void clearOs() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get osVersion => $_getSZ(8);
  @$pb.TagNumber(9)
  set osVersion($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOsVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearOsVersion() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get registCode => $_getSZ(9);
  @$pb.TagNumber(10)
  set registCode($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRegistCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearRegistCode() => clearField(10);
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

class VerifyImageRequest extends $pb.GeneratedMessage {
  factory VerifyImageRequest() => create();
  VerifyImageRequest._() : super();
  factory VerifyImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyImageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyImageRequest clone() => VerifyImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyImageRequest copyWith(void Function(VerifyImageRequest) updates) => super.copyWith((message) => updates(message as VerifyImageRequest)) as VerifyImageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyImageRequest create() => VerifyImageRequest._();
  VerifyImageRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyImageRequest> createRepeated() => $pb.PbList<VerifyImageRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyImageRequest>(create);
  static VerifyImageRequest? _defaultInstance;
}

class VerifyImageResponse extends $pb.GeneratedMessage {
  factory VerifyImageResponse() => create();
  VerifyImageResponse._() : super();
  factory VerifyImageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyImageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VerifyImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'verifyCodeId')
    ..aOS(2, _omitFieldNames ? '' : 'imageBs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyImageResponse clone() => VerifyImageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyImageResponse copyWith(void Function(VerifyImageResponse) updates) => super.copyWith((message) => updates(message as VerifyImageResponse)) as VerifyImageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VerifyImageResponse create() => VerifyImageResponse._();
  VerifyImageResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyImageResponse> createRepeated() => $pb.PbList<VerifyImageResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyImageResponse>(create);
  static VerifyImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get verifyCodeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set verifyCodeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerifyCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerifyCodeId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageBs => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageBs($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasImageBs() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageBs() => clearField(2);
}

class SignInRequest extends $pb.GeneratedMessage {
  factory SignInRequest() => create();
  SignInRequest._() : super();
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignInRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userName')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'vcode')
    ..aOS(4, _omitFieldNames ? '' : 'verifyCodeId')
    ..aOS(7, _omitFieldNames ? '' : 'deviceId')
    ..aOS(8, _omitFieldNames ? '' : 'os')
    ..aOS(9, _omitFieldNames ? '' : 'osVersion', protoName: 'osVersion')
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

  @$pb.TagNumber(3)
  $core.String get vcode => $_getSZ(2);
  @$pb.TagNumber(3)
  set vcode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVcode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVcode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get verifyCodeId => $_getSZ(3);
  @$pb.TagNumber(4)
  set verifyCodeId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerifyCodeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerifyCodeId() => clearField(4);

  @$pb.TagNumber(7)
  $core.String get deviceId => $_getSZ(4);
  @$pb.TagNumber(7)
  set deviceId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeviceId() => $_has(4);
  @$pb.TagNumber(7)
  void clearDeviceId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get os => $_getSZ(5);
  @$pb.TagNumber(8)
  set os($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasOs() => $_has(5);
  @$pb.TagNumber(8)
  void clearOs() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get osVersion => $_getSZ(6);
  @$pb.TagNumber(9)
  set osVersion($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasOsVersion() => $_has(6);
  @$pb.TagNumber(9)
  void clearOsVersion() => clearField(9);
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

class UpdatePwdRequest extends $pb.GeneratedMessage {
  factory UpdatePwdRequest() => create();
  UpdatePwdRequest._() : super();
  factory UpdatePwdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePwdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePwdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'oldPassword')
    ..aOS(3, _omitFieldNames ? '' : 'newPassword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePwdRequest clone() => UpdatePwdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePwdRequest copyWith(void Function(UpdatePwdRequest) updates) => super.copyWith((message) => updates(message as UpdatePwdRequest)) as UpdatePwdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePwdRequest create() => UpdatePwdRequest._();
  UpdatePwdRequest createEmptyInstance() => create();
  static $pb.PbList<UpdatePwdRequest> createRepeated() => $pb.PbList<UpdatePwdRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdatePwdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePwdRequest>(create);
  static UpdatePwdRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get oldPassword => $_getSZ(0);
  @$pb.TagNumber(2)
  set oldPassword($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasOldPassword() => $_has(0);
  @$pb.TagNumber(2)
  void clearOldPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(3)
  set newPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(3)
  void clearNewPassword() => clearField(3);
}

class UpdatePwdResponse extends $pb.GeneratedMessage {
  factory UpdatePwdResponse() => create();
  UpdatePwdResponse._() : super();
  factory UpdatePwdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdatePwdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdatePwdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdatePwdResponse clone() => UpdatePwdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdatePwdResponse copyWith(void Function(UpdatePwdResponse) updates) => super.copyWith((message) => updates(message as UpdatePwdResponse)) as UpdatePwdResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdatePwdResponse create() => UpdatePwdResponse._();
  UpdatePwdResponse createEmptyInstance() => create();
  static $pb.PbList<UpdatePwdResponse> createRepeated() => $pb.PbList<UpdatePwdResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdatePwdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdatePwdResponse>(create);
  static UpdatePwdResponse? _defaultInstance;
}

class KycRequest extends $pb.GeneratedMessage {
  factory KycRequest() => create();
  KycRequest._() : super();
  factory KycRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KycRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KycRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..e<$4.CountryCode>(1, _omitFieldNames ? '' : 'countryCode', $pb.PbFieldType.OE, defaultOrMaker: $4.CountryCode.UNKNOWNISO, valueOf: $4.CountryCode.valueOf, enumValues: $4.CountryCode.values)
    ..e<$4.CurrencyCode>(2, _omitFieldNames ? '' : 'currency', $pb.PbFieldType.OE, defaultOrMaker: $4.CurrencyCode.UNKNOWNCurrency, valueOf: $4.CurrencyCode.valueOf, enumValues: $4.CurrencyCode.values)
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
  $4.CountryCode get countryCode => $_getN(0);
  @$pb.TagNumber(1)
  set countryCode($4.CountryCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $4.CurrencyCode get currency => $_getN(1);
  @$pb.TagNumber(2)
  set currency($4.CurrencyCode v) { setField(2, v); }
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

class ListInvitedUserRequest extends $pb.GeneratedMessage {
  factory ListInvitedUserRequest() => create();
  ListInvitedUserRequest._() : super();
  factory ListInvitedUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInvitedUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListInvitedUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(2, _omitFieldNames ? '' : 'start')
    ..aInt64(3, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInvitedUserRequest clone() => ListInvitedUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInvitedUserRequest copyWith(void Function(ListInvitedUserRequest) updates) => super.copyWith((message) => updates(message as ListInvitedUserRequest)) as ListInvitedUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListInvitedUserRequest create() => ListInvitedUserRequest._();
  ListInvitedUserRequest createEmptyInstance() => create();
  static $pb.PbList<ListInvitedUserRequest> createRepeated() => $pb.PbList<ListInvitedUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInvitedUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInvitedUserRequest>(create);
  static ListInvitedUserRequest? _defaultInstance;

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

class ListInvitedUserResponse extends $pb.GeneratedMessage {
  factory ListInvitedUserResponse() => create();
  ListInvitedUserResponse._() : super();
  factory ListInvitedUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInvitedUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListInvitedUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<InvitedUser>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: InvitedUser.create)
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInvitedUserResponse clone() => ListInvitedUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInvitedUserResponse copyWith(void Function(ListInvitedUserResponse) updates) => super.copyWith((message) => updates(message as ListInvitedUserResponse)) as ListInvitedUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListInvitedUserResponse create() => ListInvitedUserResponse._();
  ListInvitedUserResponse createEmptyInstance() => create();
  static $pb.PbList<ListInvitedUserResponse> createRepeated() => $pb.PbList<ListInvitedUserResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInvitedUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInvitedUserResponse>(create);
  static ListInvitedUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InvitedUser> get list => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);
}

class InvitedUser extends $pb.GeneratedMessage {
  factory InvitedUser() => create();
  InvitedUser._() : super();
  factory InvitedUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvitedUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InvitedUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstName', protoName: 'firstName')
    ..aOS(2, _omitFieldNames ? '' : 'lastName', protoName: 'lastName')
    ..aOS(3, _omitFieldNames ? '' : 'userName')
    ..aOS(4, _omitFieldNames ? '' : 'email')
    ..a<$fixnum.Int64>(5, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvitedUser clone() => InvitedUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvitedUser copyWith(void Function(InvitedUser) updates) => super.copyWith((message) => updates(message as InvitedUser)) as InvitedUser;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvitedUser create() => InvitedUser._();
  InvitedUser createEmptyInstance() => create();
  static $pb.PbList<InvitedUser> createRepeated() => $pb.PbList<InvitedUser>();
  @$core.pragma('dart2js:noInline')
  static InvitedUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvitedUser>(create);
  static InvitedUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get userName => $_getSZ(2);
  @$pb.TagNumber(3)
  set userName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
}

class ListRewardRequest extends $pb.GeneratedMessage {
  factory ListRewardRequest() => create();
  ListRewardRequest._() : super();
  factory ListRewardRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRewardRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRewardRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'start')
    ..aInt64(2, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRewardRequest clone() => ListRewardRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRewardRequest copyWith(void Function(ListRewardRequest) updates) => super.copyWith((message) => updates(message as ListRewardRequest)) as ListRewardRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRewardRequest create() => ListRewardRequest._();
  ListRewardRequest createEmptyInstance() => create();
  static $pb.PbList<ListRewardRequest> createRepeated() => $pb.PbList<ListRewardRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRewardRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRewardRequest>(create);
  static ListRewardRequest? _defaultInstance;

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

class ListRewardResponse extends $pb.GeneratedMessage {
  factory ListRewardResponse() => create();
  ListRewardResponse._() : super();
  factory ListRewardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRewardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRewardResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<UserReward>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: UserReward.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'totalAmt', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRewardResponse clone() => ListRewardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRewardResponse copyWith(void Function(ListRewardResponse) updates) => super.copyWith((message) => updates(message as ListRewardResponse)) as ListRewardResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRewardResponse create() => ListRewardResponse._();
  ListRewardResponse createEmptyInstance() => create();
  static $pb.PbList<ListRewardResponse> createRepeated() => $pb.PbList<ListRewardResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRewardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRewardResponse>(create);
  static ListRewardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserReward> get list => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get totalAmt => $_getN(1);
  @$pb.TagNumber(2)
  set totalAmt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalAmt() => clearField(2);
}

class ListRewardWithUserRequest extends $pb.GeneratedMessage {
  factory ListRewardWithUserRequest() => create();
  ListRewardWithUserRequest._() : super();
  factory ListRewardWithUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRewardWithUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRewardWithUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'start')
    ..aInt64(2, _omitFieldNames ? '' : 'limit')
    ..a<$fixnum.Int64>(3, _omitFieldNames ? '' : 'dateSec', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRewardWithUserRequest clone() => ListRewardWithUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRewardWithUserRequest copyWith(void Function(ListRewardWithUserRequest) updates) => super.copyWith((message) => updates(message as ListRewardWithUserRequest)) as ListRewardWithUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRewardWithUserRequest create() => ListRewardWithUserRequest._();
  ListRewardWithUserRequest createEmptyInstance() => create();
  static $pb.PbList<ListRewardWithUserRequest> createRepeated() => $pb.PbList<ListRewardWithUserRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRewardWithUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRewardWithUserRequest>(create);
  static ListRewardWithUserRequest? _defaultInstance;

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
  $fixnum.Int64 get dateSec => $_getI64(2);
  @$pb.TagNumber(3)
  set dateSec($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDateSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearDateSec() => clearField(3);
}

class ListRewardWithUserResponse extends $pb.GeneratedMessage {
  factory ListRewardWithUserResponse() => create();
  ListRewardWithUserResponse._() : super();
  factory ListRewardWithUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListRewardWithUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRewardWithUserResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..pc<UserRewardItem>(1, _omitFieldNames ? '' : 'list', $pb.PbFieldType.PM, subBuilder: UserRewardItem.create)
    ..aInt64(2, _omitFieldNames ? '' : 'userCount')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'rewards', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListRewardWithUserResponse clone() => ListRewardWithUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListRewardWithUserResponse copyWith(void Function(ListRewardWithUserResponse) updates) => super.copyWith((message) => updates(message as ListRewardWithUserResponse)) as ListRewardWithUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRewardWithUserResponse create() => ListRewardWithUserResponse._();
  ListRewardWithUserResponse createEmptyInstance() => create();
  static $pb.PbList<ListRewardWithUserResponse> createRepeated() => $pb.PbList<ListRewardWithUserResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRewardWithUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRewardWithUserResponse>(create);
  static ListRewardWithUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserRewardItem> get list => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userCount => $_getI64(1);
  @$pb.TagNumber(2)
  set userCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get rewards => $_getN(2);
  @$pb.TagNumber(3)
  set rewards($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRewards() => $_has(2);
  @$pb.TagNumber(3)
  void clearRewards() => clearField(3);
}

class UserReward extends $pb.GeneratedMessage {
  factory UserReward() => create();
  UserReward._() : super();
  factory UserReward.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserReward.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserReward', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'createdAt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amt', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserReward clone() => UserReward()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserReward copyWith(void Function(UserReward) updates) => super.copyWith((message) => updates(message as UserReward)) as UserReward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserReward create() => UserReward._();
  UserReward createEmptyInstance() => create();
  static $pb.PbList<UserReward> createRepeated() => $pb.PbList<UserReward>();
  @$core.pragma('dart2js:noInline')
  static UserReward getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserReward>(create);
  static UserReward? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get createdAt => $_getI64(0);
  @$pb.TagNumber(1)
  set createdAt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreatedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreatedAt() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amt => $_getN(1);
  @$pb.TagNumber(2)
  set amt($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get status => $_getI64(2);
  @$pb.TagNumber(3)
  set status($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class UserRewardItem extends $pb.GeneratedMessage {
  factory UserRewardItem() => create();
  UserRewardItem._() : super();
  factory UserRewardItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRewardItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRewardItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'rewardUserid')
    ..aInt64(2, _omitFieldNames ? '' : 'dateSec')
    ..aOS(3, _omitFieldNames ? '' : 'dataStr')
    ..aInt64(4, _omitFieldNames ? '' : 'userId')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'reward', $pb.PbFieldType.OD)
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'createdAt', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(8, _omitFieldNames ? '' : 'updatedAt', subBuilder: $0.Timestamp.create)
    ..aInt64(9, _omitFieldNames ? '' : 'id')
    ..aOS(10, _omitFieldNames ? '' : 'userName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRewardItem clone() => UserRewardItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRewardItem copyWith(void Function(UserRewardItem) updates) => super.copyWith((message) => updates(message as UserRewardItem)) as UserRewardItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRewardItem create() => UserRewardItem._();
  UserRewardItem createEmptyInstance() => create();
  static $pb.PbList<UserRewardItem> createRepeated() => $pb.PbList<UserRewardItem>();
  @$core.pragma('dart2js:noInline')
  static UserRewardItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRewardItem>(create);
  static UserRewardItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rewardUserid => $_getI64(0);
  @$pb.TagNumber(1)
  set rewardUserid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRewardUserid() => $_has(0);
  @$pb.TagNumber(1)
  void clearRewardUserid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get dateSec => $_getI64(1);
  @$pb.TagNumber(2)
  set dateSec($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateSec() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateSec() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get dataStr => $_getSZ(2);
  @$pb.TagNumber(3)
  set dataStr($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDataStr() => $_has(2);
  @$pb.TagNumber(3)
  void clearDataStr() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get userId => $_getI64(3);
  @$pb.TagNumber(4)
  set userId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get reward => $_getN(4);
  @$pb.TagNumber(5)
  set reward($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReward() => $_has(4);
  @$pb.TagNumber(5)
  void clearReward() => clearField(5);

  @$pb.TagNumber(7)
  $0.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(7)
  set createdAt($0.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(8)
  $0.Timestamp get updatedAt => $_getN(6);
  @$pb.TagNumber(8)
  set updatedAt($0.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(6);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $0.Timestamp ensureUpdatedAt() => $_ensure(6);

  @$pb.TagNumber(9)
  $fixnum.Int64 get id => $_getI64(7);
  @$pb.TagNumber(9)
  set id($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasId() => $_has(7);
  @$pb.TagNumber(9)
  void clearId() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get userName => $_getSZ(8);
  @$pb.TagNumber(10)
  set userName($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasUserName() => $_has(8);
  @$pb.TagNumber(10)
  void clearUserName() => clearField(10);
}

class UserRewardDetail extends $pb.GeneratedMessage {
  factory UserRewardDetail() => create();
  UserRewardDetail._() : super();
  factory UserRewardDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserRewardDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserRewardDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'user'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'rewardUserid')
    ..aInt64(3, _omitFieldNames ? '' : 'userId')
    ..aInt64(4, _omitFieldNames ? '' : 'sourceId')
    ..e<UserRewardDetail_SourceType>(5, _omitFieldNames ? '' : 'sourceType', $pb.PbFieldType.OE, defaultOrMaker: UserRewardDetail_SourceType.UnKnow, valueOf: UserRewardDetail_SourceType.valueOf, enumValues: UserRewardDetail_SourceType.values)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'reward', $pb.PbFieldType.OD)
    ..aInt64(7, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(8, _omitFieldNames ? '' : 'updatedAt')
    ..aInt64(9, _omitFieldNames ? '' : 'status')
    ..aOS(10, _omitFieldNames ? '' : 'txId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserRewardDetail clone() => UserRewardDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserRewardDetail copyWith(void Function(UserRewardDetail) updates) => super.copyWith((message) => updates(message as UserRewardDetail)) as UserRewardDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserRewardDetail create() => UserRewardDetail._();
  UserRewardDetail createEmptyInstance() => create();
  static $pb.PbList<UserRewardDetail> createRepeated() => $pb.PbList<UserRewardDetail>();
  @$core.pragma('dart2js:noInline')
  static UserRewardDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserRewardDetail>(create);
  static UserRewardDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rewardUserid => $_getI64(1);
  @$pb.TagNumber(2)
  set rewardUserid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRewardUserid() => $_has(1);
  @$pb.TagNumber(2)
  void clearRewardUserid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sourceId => $_getI64(3);
  @$pb.TagNumber(4)
  set sourceId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSourceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSourceId() => clearField(4);

  @$pb.TagNumber(5)
  UserRewardDetail_SourceType get sourceType => $_getN(4);
  @$pb.TagNumber(5)
  set sourceType(UserRewardDetail_SourceType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSourceType() => $_has(4);
  @$pb.TagNumber(5)
  void clearSourceType() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get reward => $_getN(5);
  @$pb.TagNumber(6)
  set reward($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReward() => $_has(5);
  @$pb.TagNumber(6)
  void clearReward() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get updatedAt => $_getI64(7);
  @$pb.TagNumber(8)
  set updatedAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get status => $_getI64(8);
  @$pb.TagNumber(9)
  set status($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(9)
  void clearStatus() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get txId => $_getSZ(9);
  @$pb.TagNumber(10)
  set txId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTxId() => $_has(9);
  @$pb.TagNumber(10)
  void clearTxId() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
