///
//  Generated code. Do not modify.
//  source: stateservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class WalletState extends $pb.ProtobufEnum {
  static const WalletState NON_EXISTING = WalletState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NON_EXISTING');
  static const WalletState LOCKED = WalletState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCKED');
  static const WalletState UNLOCKED = WalletState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNLOCKED');
  static const WalletState RPC_ACTIVE = WalletState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RPC_ACTIVE');
  static const WalletState SERVER_ACTIVE = WalletState._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SERVER_ACTIVE');
  static const WalletState WAITING_TO_START = WalletState._(255, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WAITING_TO_START');

  static const $core.List<WalletState> values = <WalletState> [
    NON_EXISTING,
    LOCKED,
    UNLOCKED,
    RPC_ACTIVE,
    SERVER_ACTIVE,
    WAITING_TO_START,
  ];

  static final $core.Map<$core.int, WalletState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WalletState? valueOf($core.int value) => _byValue[value];

  const WalletState._($core.int v, $core.String n) : super(v, n);
}

