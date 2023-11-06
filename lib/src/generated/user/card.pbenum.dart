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

import 'package:protobuf/protobuf.dart' as $pb;

class CardExchangeInfo_Status extends $pb.ProtobufEnum {
  static const CardExchangeInfo_Status Unknow = CardExchangeInfo_Status._(0, _omitEnumNames ? '' : 'Unknow');
  static const CardExchangeInfo_Status success = CardExchangeInfo_Status._(1, _omitEnumNames ? '' : 'success');
  static const CardExchangeInfo_Status fail = CardExchangeInfo_Status._(2, _omitEnumNames ? '' : 'fail');
  static const CardExchangeInfo_Status pay_ok = CardExchangeInfo_Status._(3, _omitEnumNames ? '' : 'pay_ok');

  static const $core.List<CardExchangeInfo_Status> values = <CardExchangeInfo_Status> [
    Unknow,
    success,
    fail,
    pay_ok,
  ];

  static final $core.Map<$core.int, CardExchangeInfo_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CardExchangeInfo_Status? valueOf($core.int value) => _byValue[value];

  const CardExchangeInfo_Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
