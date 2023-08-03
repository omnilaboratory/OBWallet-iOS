///
//  Generated code. Do not modify.
//  source: watchtower.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getInfoRequestDescriptor instead')
const GetInfoRequest$json = const {
  '1': 'GetInfoRequest',
};

/// Descriptor for `GetInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoRequestDescriptor = $convert.base64Decode('Cg5HZXRJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use getInfoResponseDescriptor instead')
const GetInfoResponse$json = const {
  '1': 'GetInfoResponse',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'listeners', '3': 2, '4': 3, '5': 9, '10': 'listeners'},
    const {'1': 'uris', '3': 3, '4': 3, '5': 9, '10': 'uris'},
  ],
};

/// Descriptor for `GetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoResponseDescriptor = $convert.base64Decode('Cg9HZXRJbmZvUmVzcG9uc2USFgoGcHVia2V5GAEgASgMUgZwdWJrZXkSHAoJbGlzdGVuZXJzGAIgAygJUglsaXN0ZW5lcnMSEgoEdXJpcxgDIAMoCVIEdXJpcw==');
