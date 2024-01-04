//
//  Generated code. Do not modify.
//  source: user/user_wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use importKeyRequestDescriptor instead')
const ImportKeyRequest$json = {
  '1': 'ImportKeyRequest',
  '2': [
    {'1': 'keyhex', '3': 1, '4': 1, '5': 9, '10': 'keyhex'},
  ],
};

/// Descriptor for `ImportKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importKeyRequestDescriptor = $convert.base64Decode(
    'ChBJbXBvcnRLZXlSZXF1ZXN0EhYKBmtleWhleBgBIAEoCVIGa2V5aGV4');

@$core.Deprecated('Use importKeyResponseDescriptor instead')
const ImportKeyResponse$json = {
  '1': 'ImportKeyResponse',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `ImportKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List importKeyResponseDescriptor = $convert.base64Decode(
    'ChFJbXBvcnRLZXlSZXNwb25zZRIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNz');

@$core.Deprecated('Use getTokenBalalanceRequestDescriptor instead')
const GetTokenBalalanceRequest$json = {
  '1': 'GetTokenBalalanceRequest',
  '2': [
    {'1': 'token_name', '3': 1, '4': 1, '5': 9, '10': 'tokenName'},
  ],
};

/// Descriptor for `GetTokenBalalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTokenBalalanceRequestDescriptor = $convert.base64Decode(
    'ChhHZXRUb2tlbkJhbGFsYW5jZVJlcXVlc3QSHQoKdG9rZW5fbmFtZRgBIAEoCVIJdG9rZW5OYW'
    '1l');

@$core.Deprecated('Use getTokenBalalanceResponseDescriptor instead')
const GetTokenBalalanceResponse$json = {
  '1': 'GetTokenBalalanceResponse',
  '2': [
    {'1': 'balance_usd', '3': 1, '4': 1, '5': 1, '10': 'balanceUsd'},
    {'1': 'balance_usdt', '3': 2, '4': 1, '5': 1, '10': 'balanceUsdt'},
    {'1': 'balance_usdc', '3': 3, '4': 1, '5': 1, '10': 'balanceUsdc'},
  ],
};

/// Descriptor for `GetTokenBalalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTokenBalalanceResponseDescriptor = $convert.base64Decode(
    'ChlHZXRUb2tlbkJhbGFsYW5jZVJlc3BvbnNlEh8KC2JhbGFuY2VfdXNkGAEgASgBUgpiYWxhbm'
    'NlVXNkEiEKDGJhbGFuY2VfdXNkdBgCIAEoAVILYmFsYW5jZVVzZHQSIQoMYmFsYW5jZV91c2Rj'
    'GAMgASgBUgtiYWxhbmNlVXNkYw==');

@$core.Deprecated('Use getAddressRequestDescriptor instead')
const GetAddressRequest$json = {
  '1': 'GetAddressRequest',
};

/// Descriptor for `GetAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressRequestDescriptor = $convert.base64Decode(
    'ChFHZXRBZGRyZXNzUmVxdWVzdA==');

@$core.Deprecated('Use getAddressResponseDescriptor instead')
const GetAddressResponse$json = {
  '1': 'GetAddressResponse',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `GetAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAddressResponseDescriptor = $convert.base64Decode(
    'ChJHZXRBZGRyZXNzUmVzcG9uc2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');

@$core.Deprecated('Use dumpKeyRequestDescriptor instead')
const DumpKeyRequest$json = {
  '1': 'DumpKeyRequest',
};

/// Descriptor for `DumpKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dumpKeyRequestDescriptor = $convert.base64Decode(
    'Cg5EdW1wS2V5UmVxdWVzdA==');

@$core.Deprecated('Use dumpKeyResponseDescriptor instead')
const DumpKeyResponse$json = {
  '1': 'DumpKeyResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `DumpKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dumpKeyResponseDescriptor = $convert.base64Decode(
    'Cg9EdW1wS2V5UmVzcG9uc2USEAoDa2V5GAEgASgJUgNrZXk=');

@$core.Deprecated('Use stateTestRequestDescriptor instead')
const StateTestRequest$json = {
  '1': 'StateTestRequest',
};

/// Descriptor for `StateTestRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateTestRequestDescriptor = $convert.base64Decode(
    'ChBTdGF0ZVRlc3RSZXF1ZXN0');

@$core.Deprecated('Use stateTestResponseDescriptor instead')
const StateTestResponse$json = {
  '1': 'StateTestResponse',
  '2': [
    {'1': 'msg', '3': 1, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `StateTestResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateTestResponseDescriptor = $convert.base64Decode(
    'ChFTdGF0ZVRlc3RSZXNwb25zZRIQCgNtc2cYASABKAlSA21zZw==');

@$core.Deprecated('Use listHistoryRequestDescriptor instead')
const ListHistoryRequest$json = {
  '1': 'ListHistoryRequest',
  '2': [
    {'1': 'token_name', '3': 1, '4': 1, '5': 9, '10': 'tokenName'},
    {'1': 'page', '3': 2, '4': 1, '5': 3, '10': 'page'},
    {'1': 'size', '3': 3, '4': 1, '5': 3, '10': 'size'},
  ],
};

/// Descriptor for `ListHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHistoryRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0SGlzdG9yeVJlcXVlc3QSHQoKdG9rZW5fbmFtZRgBIAEoCVIJdG9rZW5OYW1lEhIKBH'
    'BhZ2UYAiABKANSBHBhZ2USEgoEc2l6ZRgDIAEoA1IEc2l6ZQ==');

@$core.Deprecated('Use listHistoryResponseDescriptor instead')
const ListHistoryResponse$json = {
  '1': 'ListHistoryResponse',
  '2': [
    {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'page', '3': 2, '4': 1, '5': 3, '10': 'page'},
    {'1': 'items', '3': 5, '4': 3, '5': 11, '6': '.user.CoinHistory', '10': 'items'},
  ],
};

/// Descriptor for `ListHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHistoryResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0SGlzdG9yeVJlc3BvbnNlEhQKBWNvdW50GAMgASgDUgVjb3VudBIUCgV0b2tlbhgBIA'
    'EoCVIFdG9rZW4SEgoEcGFnZRgCIAEoA1IEcGFnZRInCgVpdGVtcxgFIAMoCzIRLnVzZXIuQ29p'
    'bkhpc3RvcnlSBWl0ZW1z');

@$core.Deprecated('Use transferRequestDescriptor instead')
const TransferRequest$json = {
  '1': 'TransferRequest',
  '2': [
    {'1': 'network', '3': 3, '4': 1, '5': 14, '6': '.user.NetWork', '10': 'network'},
    {'1': 'token', '3': 4, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'token'},
    {'1': 'to', '3': 1, '4': 1, '5': 9, '10': 'to'},
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
  ],
};

/// Descriptor for `TransferRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferRequestDescriptor = $convert.base64Decode(
    'Cg9UcmFuc2ZlclJlcXVlc3QSJwoHbmV0d29yaxgDIAEoDjINLnVzZXIuTmV0V29ya1IHbmV0d2'
    '9yaxI0CgV0b2tlbhgEIAEoDjIeLnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0U3ltYm9sUgV0b2tl'
    'bhIOCgJ0bxgBIAEoCVICdG8SEAoDYW10GAIgASgBUgNhbXQ=');

@$core.Deprecated('Use transferResponseDescriptor instead')
const TransferResponse$json = {
  '1': 'TransferResponse',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `TransferResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferResponseDescriptor = $convert.base64Decode(
    'ChBUcmFuc2ZlclJlc3BvbnNlEhMKBXR4X2lkGAEgASgJUgR0eElk');

@$core.Deprecated('Use transferTokenRequestDescriptor instead')
const TransferTokenRequest$json = {
  '1': 'TransferTokenRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'token'},
    {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    {'1': 'amt', '3': 3, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'network', '3': 4, '4': 1, '5': 14, '6': '.user.NetWork', '10': 'network'},
  ],
};

/// Descriptor for `TransferTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferTokenRequestDescriptor = $convert.base64Decode(
    'ChRUcmFuc2ZlclRva2VuUmVxdWVzdBI0CgV0b2tlbhgBIAEoDjIeLnVzZXIuVHJhY2tlZFR4Lk'
    'NvbnRyYWN0U3ltYm9sUgV0b2tlbhIOCgJ0bxgCIAEoCVICdG8SEAoDYW10GAMgASgBUgNhbXQS'
    'JwoHbmV0d29yaxgEIAEoDjINLnVzZXIuTmV0V29ya1IHbmV0d29yaw==');

@$core.Deprecated('Use transferTokenResponseDescriptor instead')
const TransferTokenResponse$json = {
  '1': 'TransferTokenResponse',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `TransferTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transferTokenResponseDescriptor = $convert.base64Decode(
    'ChVUcmFuc2ZlclRva2VuUmVzcG9uc2USEwoFdHhfaWQYASABKAlSBHR4SWQ=');

@$core.Deprecated('Use trackTxRequestDescriptor instead')
const TrackTxRequest$json = {
  '1': 'TrackTxRequest',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `TrackTxRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackTxRequestDescriptor = $convert.base64Decode(
    'Cg5UcmFja1R4UmVxdWVzdBITCgV0eF9pZBgBIAEoCVIEdHhJZA==');

@$core.Deprecated('Use trackTxResponseDescriptor instead')
const TrackTxResponse$json = {
  '1': 'TrackTxResponse',
};

/// Descriptor for `TrackTxResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackTxResponseDescriptor = $convert.base64Decode(
    'Cg9UcmFja1R4UmVzcG9uc2U=');

@$core.Deprecated('Use addTokenResponseDescriptor instead')
const AddTokenResponse$json = {
  '1': 'AddTokenResponse',
};

/// Descriptor for `AddTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTokenResponseDescriptor = $convert.base64Decode(
    'ChBBZGRUb2tlblJlc3BvbnNl');

@$core.Deprecated('Use coinHistoryDescriptor instead')
const CoinHistory$json = {
  '1': 'CoinHistory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_id', '3': 10, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'TokenAddress', '3': 2, '4': 1, '5': 9, '10': 'TokenAddress'},
    {'1': 'TokenName', '3': 3, '4': 1, '5': 9, '10': 'TokenName'},
    {'1': 'To', '3': 4, '4': 1, '5': 9, '10': 'To'},
    {'1': 'amt', '3': 5, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'tx_id', '3': 6, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'network', '3': 8, '4': 1, '5': 14, '6': '.user.NetWork', '10': 'network'},
    {'1': 'user_address', '3': 9, '4': 1, '5': 9, '10': 'userAddress'},
  ],
};

/// Descriptor for `CoinHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coinHistoryDescriptor = $convert.base64Decode(
    'CgtDb2luSGlzdG9yeRIOCgJpZBgBIAEoA1ICaWQSFwoHdXNlcl9pZBgKIAEoA1IGdXNlcklkEi'
    'IKDFRva2VuQWRkcmVzcxgCIAEoCVIMVG9rZW5BZGRyZXNzEhwKCVRva2VuTmFtZRgDIAEoCVIJ'
    'VG9rZW5OYW1lEg4KAlRvGAQgASgJUgJUbxIQCgNhbXQYBSABKAFSA2FtdBITCgV0eF9pZBgGIA'
    'EoCVIEdHhJZBIdCgp1cGRhdGVkX2F0GAcgASgDUgl1cGRhdGVkQXQSJwoHbmV0d29yaxgIIAEo'
    'DjINLnVzZXIuTmV0V29ya1IHbmV0d29yaxIhCgx1c2VyX2FkZHJlc3MYCSABKAlSC3VzZXJBZG'
    'RyZXNz');

