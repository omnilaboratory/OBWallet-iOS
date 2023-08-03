///
//  Generated code. Do not modify.
//  source: wtclient.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PolicyType extends $pb.ProtobufEnum {
  static const PolicyType LEGACY = PolicyType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEGACY');
  static const PolicyType ANCHOR = PolicyType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHOR');

  static const $core.List<PolicyType> values = <PolicyType> [
    LEGACY,
    ANCHOR,
  ];

  static final $core.Map<$core.int, PolicyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PolicyType? valueOf($core.int value) => _byValue[value];

  const PolicyType._($core.int v, $core.String n) : super(v, n);
}

