///
//  Generated code. Do not modify.
//  source: stateservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use walletStateDescriptor instead')
const WalletState$json = const {
  '1': 'WalletState',
  '2': const [
    const {'1': 'NON_EXISTING', '2': 0},
    const {'1': 'LOCKED', '2': 1},
    const {'1': 'UNLOCKED', '2': 2},
    const {'1': 'RPC_ACTIVE', '2': 3},
    const {'1': 'SERVER_ACTIVE', '2': 4},
    const {'1': 'WAITING_TO_START', '2': 255},
  ],
};

/// Descriptor for `WalletState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List walletStateDescriptor = $convert.base64Decode('CgtXYWxsZXRTdGF0ZRIQCgxOT05fRVhJU1RJTkcQABIKCgZMT0NLRUQQARIMCghVTkxPQ0tFRBACEg4KClJQQ19BQ1RJVkUQAxIRCg1TRVJWRVJfQUNUSVZFEAQSFQoQV0FJVElOR19UT19TVEFSVBD/AQ==');
@$core.Deprecated('Use subscribeStateRequestDescriptor instead')
const SubscribeStateRequest$json = const {
  '1': 'SubscribeStateRequest',
};

/// Descriptor for `SubscribeStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeStateRequestDescriptor = $convert.base64Decode('ChVTdWJzY3JpYmVTdGF0ZVJlcXVlc3Q=');
@$core.Deprecated('Use subscribeStateResponseDescriptor instead')
const SubscribeStateResponse$json = const {
  '1': 'SubscribeStateResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.WalletState', '10': 'state'},
  ],
};

/// Descriptor for `SubscribeStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeStateResponseDescriptor = $convert.base64Decode('ChZTdWJzY3JpYmVTdGF0ZVJlc3BvbnNlEigKBXN0YXRlGAEgASgOMhIubG5ycGMuV2FsbGV0U3RhdGVSBXN0YXRl');
@$core.Deprecated('Use getStateRequestDescriptor instead')
const GetStateRequest$json = const {
  '1': 'GetStateRequest',
};

/// Descriptor for `GetStateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateRequestDescriptor = $convert.base64Decode('Cg9HZXRTdGF0ZVJlcXVlc3Q=');
@$core.Deprecated('Use getStateResponseDescriptor instead')
const GetStateResponse$json = const {
  '1': 'GetStateResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.WalletState', '10': 'state'},
  ],
};

/// Descriptor for `GetStateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStateResponseDescriptor = $convert.base64Decode('ChBHZXRTdGF0ZVJlc3BvbnNlEigKBXN0YXRlGAEgASgOMhIubG5ycGMuV2FsbGV0U3RhdGVSBXN0YXRl');
