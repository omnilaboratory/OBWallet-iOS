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

import 'package:protobuf/protobuf.dart' as $pb;

class UserRewardDetail_SourceType extends $pb.ProtobufEnum {
  static const UserRewardDetail_SourceType UnKnow = UserRewardDetail_SourceType._(0, _omitEnumNames ? '' : 'UnKnow');
  static const UserRewardDetail_SourceType BuyCoin = UserRewardDetail_SourceType._(1, _omitEnumNames ? '' : 'BuyCoin');
  static const UserRewardDetail_SourceType SellCoin = UserRewardDetail_SourceType._(2, _omitEnumNames ? '' : 'SellCoin');
  static const UserRewardDetail_SourceType WithdrawTOVcard = UserRewardDetail_SourceType._(3, _omitEnumNames ? '' : 'WithdrawTOVcard');
  static const UserRewardDetail_SourceType WithdrawTOPcard = UserRewardDetail_SourceType._(4, _omitEnumNames ? '' : 'WithdrawTOPcard');
  static const UserRewardDetail_SourceType CreateVcard = UserRewardDetail_SourceType._(5, _omitEnumNames ? '' : 'CreateVcard');
  static const UserRewardDetail_SourceType CreatePcard = UserRewardDetail_SourceType._(6, _omitEnumNames ? '' : 'CreatePcard');
  static const UserRewardDetail_SourceType Transak = UserRewardDetail_SourceType._(7, _omitEnumNames ? '' : 'Transak');

  static const $core.List<UserRewardDetail_SourceType> values = <UserRewardDetail_SourceType> [
    UnKnow,
    BuyCoin,
    SellCoin,
    WithdrawTOVcard,
    WithdrawTOPcard,
    CreateVcard,
    CreatePcard,
    Transak,
  ];

  static final $core.Map<$core.int, UserRewardDetail_SourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UserRewardDetail_SourceType? valueOf($core.int value) => _byValue[value];

  const UserRewardDetail_SourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
