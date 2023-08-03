///
//  Generated code. Do not modify.
//  source: invoices.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class LookupModifier extends $pb.ProtobufEnum {
  static const LookupModifier DEFAULT = LookupModifier._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DEFAULT');
  static const LookupModifier HTLC_SET_ONLY = LookupModifier._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_SET_ONLY');
  static const LookupModifier HTLC_SET_BLANK = LookupModifier._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_SET_BLANK');

  static const $core.List<LookupModifier> values = <LookupModifier> [
    DEFAULT,
    HTLC_SET_ONLY,
    HTLC_SET_BLANK,
  ];

  static final $core.Map<$core.int, LookupModifier> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LookupModifier? valueOf($core.int value) => _byValue[value];

  const LookupModifier._($core.int v, $core.String n) : super(v, n);
}

