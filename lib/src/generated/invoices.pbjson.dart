///
//  Generated code. Do not modify.
//  source: invoices.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use lookupModifierDescriptor instead')
const LookupModifier$json = const {
  '1': 'LookupModifier',
  '2': const [
    const {'1': 'DEFAULT', '2': 0},
    const {'1': 'HTLC_SET_ONLY', '2': 1},
    const {'1': 'HTLC_SET_BLANK', '2': 2},
  ],
};

/// Descriptor for `LookupModifier`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List lookupModifierDescriptor = $convert.base64Decode('Cg5Mb29rdXBNb2RpZmllchILCgdERUZBVUxUEAASEQoNSFRMQ19TRVRfT05MWRABEhIKDkhUTENfU0VUX0JMQU5LEAI=');
@$core.Deprecated('Use cancelInvoiceMsgDescriptor instead')
const CancelInvoiceMsg$json = const {
  '1': 'CancelInvoiceMsg',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
  ],
};

/// Descriptor for `CancelInvoiceMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelInvoiceMsgDescriptor = $convert.base64Decode('ChBDYW5jZWxJbnZvaWNlTXNnEiEKDHBheW1lbnRfaGFzaBgBIAEoDFILcGF5bWVudEhhc2g=');
@$core.Deprecated('Use cancelInvoiceRespDescriptor instead')
const CancelInvoiceResp$json = const {
  '1': 'CancelInvoiceResp',
};

/// Descriptor for `CancelInvoiceResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cancelInvoiceRespDescriptor = $convert.base64Decode('ChFDYW5jZWxJbnZvaWNlUmVzcA==');
@$core.Deprecated('Use addHoldInvoiceRequestDescriptor instead')
const AddHoldInvoiceRequest$json = const {
  '1': 'AddHoldInvoiceRequest',
  '2': const [
    const {'1': 'memo', '3': 1, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'hash', '3': 2, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'value_msat', '3': 10, '4': 1, '5': 3, '10': 'valueMsat'},
    const {'1': 'description_hash', '3': 4, '4': 1, '5': 12, '10': 'descriptionHash'},
    const {'1': 'expiry', '3': 5, '4': 1, '5': 3, '10': 'expiry'},
    const {'1': 'fallback_addr', '3': 6, '4': 1, '5': 9, '10': 'fallbackAddr'},
    const {'1': 'cltv_expiry', '3': 7, '4': 1, '5': 4, '10': 'cltvExpiry'},
    const {'1': 'route_hints', '3': 8, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'private', '3': 9, '4': 1, '5': 8, '10': 'private'},
  ],
};

/// Descriptor for `AddHoldInvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addHoldInvoiceRequestDescriptor = $convert.base64Decode('ChVBZGRIb2xkSW52b2ljZVJlcXVlc3QSEgoEbWVtbxgBIAEoCVIEbWVtbxISCgRoYXNoGAIgASgMUgRoYXNoEh0KCnZhbHVlX21zYXQYCiABKANSCXZhbHVlTXNhdBIpChBkZXNjcmlwdGlvbl9oYXNoGAQgASgMUg9kZXNjcmlwdGlvbkhhc2gSFgoGZXhwaXJ5GAUgASgDUgZleHBpcnkSIwoNZmFsbGJhY2tfYWRkchgGIAEoCVIMZmFsbGJhY2tBZGRyEh8KC2NsdHZfZXhwaXJ5GAcgASgEUgpjbHR2RXhwaXJ5EjEKC3JvdXRlX2hpbnRzGAggAygLMhAubG5ycGMuUm91dGVIaW50Ugpyb3V0ZUhpbnRzEhgKB3ByaXZhdGUYCSABKAhSB3ByaXZhdGU=');
@$core.Deprecated('Use addHoldInvoiceRespDescriptor instead')
const AddHoldInvoiceResp$json = const {
  '1': 'AddHoldInvoiceResp',
  '2': const [
    const {'1': 'payment_request', '3': 1, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'add_index', '3': 2, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'payment_addr', '3': 3, '4': 1, '5': 12, '10': 'paymentAddr'},
  ],
};

/// Descriptor for `AddHoldInvoiceResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addHoldInvoiceRespDescriptor = $convert.base64Decode('ChJBZGRIb2xkSW52b2ljZVJlc3ASJwoPcGF5bWVudF9yZXF1ZXN0GAEgASgJUg5wYXltZW50UmVxdWVzdBIbCglhZGRfaW5kZXgYAiABKARSCGFkZEluZGV4EiEKDHBheW1lbnRfYWRkchgDIAEoDFILcGF5bWVudEFkZHI=');
@$core.Deprecated('Use settleInvoiceMsgDescriptor instead')
const SettleInvoiceMsg$json = const {
  '1': 'SettleInvoiceMsg',
  '2': const [
    const {'1': 'preimage', '3': 1, '4': 1, '5': 12, '10': 'preimage'},
  ],
};

/// Descriptor for `SettleInvoiceMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settleInvoiceMsgDescriptor = $convert.base64Decode('ChBTZXR0bGVJbnZvaWNlTXNnEhoKCHByZWltYWdlGAEgASgMUghwcmVpbWFnZQ==');
@$core.Deprecated('Use settleInvoiceRespDescriptor instead')
const SettleInvoiceResp$json = const {
  '1': 'SettleInvoiceResp',
};

/// Descriptor for `SettleInvoiceResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settleInvoiceRespDescriptor = $convert.base64Decode('ChFTZXR0bGVJbnZvaWNlUmVzcA==');
@$core.Deprecated('Use subscribeSingleInvoiceRequestDescriptor instead')
const SubscribeSingleInvoiceRequest$json = const {
  '1': 'SubscribeSingleInvoiceRequest',
  '2': const [
    const {'1': 'r_hash', '3': 2, '4': 1, '5': 12, '10': 'rHash'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

/// Descriptor for `SubscribeSingleInvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeSingleInvoiceRequestDescriptor = $convert.base64Decode('Ch1TdWJzY3JpYmVTaW5nbGVJbnZvaWNlUmVxdWVzdBIVCgZyX2hhc2gYAiABKAxSBXJIYXNoSgQIARAC');
@$core.Deprecated('Use lookupInvoiceMsgDescriptor instead')
const LookupInvoiceMsg$json = const {
  '1': 'LookupInvoiceMsg',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'paymentHash'},
    const {'1': 'payment_addr', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'paymentAddr'},
    const {'1': 'set_id', '3': 3, '4': 1, '5': 12, '9': 0, '10': 'setId'},
    const {'1': 'lookup_modifier', '3': 4, '4': 1, '5': 14, '6': '.invoicesrpc.LookupModifier', '10': 'lookupModifier'},
  ],
  '8': const [
    const {'1': 'invoice_ref'},
  ],
};

/// Descriptor for `LookupInvoiceMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lookupInvoiceMsgDescriptor = $convert.base64Decode('ChBMb29rdXBJbnZvaWNlTXNnEiMKDHBheW1lbnRfaGFzaBgBIAEoDEgAUgtwYXltZW50SGFzaBIjCgxwYXltZW50X2FkZHIYAiABKAxIAFILcGF5bWVudEFkZHISFwoGc2V0X2lkGAMgASgMSABSBXNldElkEkQKD2xvb2t1cF9tb2RpZmllchgEIAEoDjIbLmludm9pY2VzcnBjLkxvb2t1cE1vZGlmaWVyUg5sb29rdXBNb2RpZmllckINCgtpbnZvaWNlX3JlZg==');
