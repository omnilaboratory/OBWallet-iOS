//
//  Generated code. Do not modify.
//  source: eth/ethservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ethImportKeyRequestDescriptor instead')
const EthImportKeyRequest$json = {
  '1': 'EthImportKeyRequest',
  '2': [
    {'1': 'keyhex', '3': 1, '4': 1, '5': 9, '10': 'keyhex'},
  ],
};

/// Descriptor for `EthImportKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethImportKeyRequestDescriptor = $convert.base64Decode(
    'ChNFdGhJbXBvcnRLZXlSZXF1ZXN0EhYKBmtleWhleBgBIAEoCVIGa2V5aGV4');

@$core.Deprecated('Use ethImportKeyResponseDescriptor instead')
const EthImportKeyResponse$json = {
  '1': 'EthImportKeyResponse',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `EthImportKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethImportKeyResponseDescriptor = $convert.base64Decode(
    'ChRFdGhJbXBvcnRLZXlSZXNwb25zZRIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNz');

@$core.Deprecated('Use ethGetTokenBalalanceRequestDescriptor instead')
const EthGetTokenBalalanceRequest$json = {
  '1': 'EthGetTokenBalalanceRequest',
  '2': [
    {'1': 'token_address', '3': 1, '4': 1, '5': 9, '10': 'tokenAddress'},
  ],
};

/// Descriptor for `EthGetTokenBalalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetTokenBalalanceRequestDescriptor = $convert.base64Decode(
    'ChtFdGhHZXRUb2tlbkJhbGFsYW5jZVJlcXVlc3QSIwoNdG9rZW5fYWRkcmVzcxgBIAEoCVIMdG'
    '9rZW5BZGRyZXNz');

@$core.Deprecated('Use ethGetTokenBalalanceResponseDescriptor instead')
const EthGetTokenBalalanceResponse$json = {
  '1': 'EthGetTokenBalalanceResponse',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 1, '10': 'balance'},
  ],
};

/// Descriptor for `EthGetTokenBalalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetTokenBalalanceResponseDescriptor = $convert.base64Decode(
    'ChxFdGhHZXRUb2tlbkJhbGFsYW5jZVJlc3BvbnNlEhgKB2JhbGFuY2UYASABKAFSB2JhbGFuY2'
    'U=');

@$core.Deprecated('Use ethGetBalalanceRequestDescriptor instead')
const EthGetBalalanceRequest$json = {
  '1': 'EthGetBalalanceRequest',
};

/// Descriptor for `EthGetBalalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetBalalanceRequestDescriptor = $convert.base64Decode(
    'ChZFdGhHZXRCYWxhbGFuY2VSZXF1ZXN0');

@$core.Deprecated('Use ethGetBalalanceResponseDescriptor instead')
const EthGetBalalanceResponse$json = {
  '1': 'EthGetBalalanceResponse',
  '2': [
    {'1': 'balance', '3': 1, '4': 1, '5': 1, '10': 'balance'},
  ],
};

/// Descriptor for `EthGetBalalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetBalalanceResponseDescriptor = $convert.base64Decode(
    'ChdFdGhHZXRCYWxhbGFuY2VSZXNwb25zZRIYCgdiYWxhbmNlGAEgASgBUgdiYWxhbmNl');

@$core.Deprecated('Use eTHGetAppConfRequestDescriptor instead')
const ETHGetAppConfRequest$json = {
  '1': 'ETHGetAppConfRequest',
};

/// Descriptor for `ETHGetAppConfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHGetAppConfRequestDescriptor = $convert.base64Decode(
    'ChRFVEhHZXRBcHBDb25mUmVxdWVzdA==');

@$core.Deprecated('Use eTHGetAppConfResponseDescriptor instead')
const ETHGetAppConfResponse$json = {
  '1': 'ETHGetAppConfResponse',
  '2': [
    {'1': 'server_address', '3': 1, '4': 1, '5': 9, '10': 'serverAddress'},
    {'1': 'nft_address', '3': 2, '4': 1, '5': 9, '10': 'nftAddress'},
    {'1': 'swap_discount', '3': 3, '4': 1, '5': 1, '10': 'swapDiscount'},
    {'1': 'create_card_fee', '3': 4, '4': 1, '5': 1, '10': 'createCardFee'},
  ],
};

/// Descriptor for `ETHGetAppConfResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHGetAppConfResponseDescriptor = $convert.base64Decode(
    'ChVFVEhHZXRBcHBDb25mUmVzcG9uc2USJQoOc2VydmVyX2FkZHJlc3MYASABKAlSDXNlcnZlck'
    'FkZHJlc3MSHwoLbmZ0X2FkZHJlc3MYAiABKAlSCm5mdEFkZHJlc3MSIwoNc3dhcF9kaXNjb3Vu'
    'dBgDIAEoAVIMc3dhcERpc2NvdW50EiYKD2NyZWF0ZV9jYXJkX2ZlZRgEIAEoAVINY3JlYXRlQ2'
    'FyZEZlZQ==');

@$core.Deprecated('Use updateSwapDiscountRequestDescriptor instead')
const UpdateSwapDiscountRequest$json = {
  '1': 'UpdateSwapDiscountRequest',
  '2': [
    {'1': 'swap_discount', '3': 1, '4': 1, '5': 1, '10': 'swapDiscount'},
    {'1': 'create_card_fee', '3': 2, '4': 1, '5': 1, '10': 'createCardFee'},
  ],
};

/// Descriptor for `UpdateSwapDiscountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSwapDiscountRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVTd2FwRGlzY291bnRSZXF1ZXN0EiMKDXN3YXBfZGlzY291bnQYASABKAFSDHN3YX'
    'BEaXNjb3VudBImCg9jcmVhdGVfY2FyZF9mZWUYAiABKAFSDWNyZWF0ZUNhcmRGZWU=');

@$core.Deprecated('Use updateSwapDiscountResponseDescriptor instead')
const UpdateSwapDiscountResponse$json = {
  '1': 'UpdateSwapDiscountResponse',
};

/// Descriptor for `UpdateSwapDiscountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSwapDiscountResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVTd2FwRGlzY291bnRSZXNwb25zZQ==');

@$core.Deprecated('Use eTHGetAddressRequestDescriptor instead')
const ETHGetAddressRequest$json = {
  '1': 'ETHGetAddressRequest',
};

/// Descriptor for `ETHGetAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHGetAddressRequestDescriptor = $convert.base64Decode(
    'ChRFVEhHZXRBZGRyZXNzUmVxdWVzdA==');

@$core.Deprecated('Use eTHGetAddressResponseDescriptor instead')
const ETHGetAddressResponse$json = {
  '1': 'ETHGetAddressResponse',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `ETHGetAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHGetAddressResponseDescriptor = $convert.base64Decode(
    'ChVFVEhHZXRBZGRyZXNzUmVzcG9uc2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');

@$core.Deprecated('Use eTHDumpKeyRequestDescriptor instead')
const ETHDumpKeyRequest$json = {
  '1': 'ETHDumpKeyRequest',
};

/// Descriptor for `ETHDumpKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHDumpKeyRequestDescriptor = $convert.base64Decode(
    'ChFFVEhEdW1wS2V5UmVxdWVzdA==');

@$core.Deprecated('Use eTHDumpKeyResponseDescriptor instead')
const ETHDumpKeyResponse$json = {
  '1': 'ETHDumpKeyResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `ETHDumpKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eTHDumpKeyResponseDescriptor = $convert.base64Decode(
    'ChJFVEhEdW1wS2V5UmVzcG9uc2USEAoDa2V5GAEgASgJUgNrZXk=');

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

@$core.Deprecated('Use ethListHistoryRequestDescriptor instead')
const EthListHistoryRequest$json = {
  '1': 'EthListHistoryRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'page', '3': 2, '4': 1, '5': 3, '10': 'page'},
    {'1': 'size', '3': 3, '4': 1, '5': 3, '10': 'size'},
  ],
};

/// Descriptor for `EthListHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethListHistoryRequestDescriptor = $convert.base64Decode(
    'ChVFdGhMaXN0SGlzdG9yeVJlcXVlc3QSFAoFdG9rZW4YASABKAlSBXRva2VuEhIKBHBhZ2UYAi'
    'ABKANSBHBhZ2USEgoEc2l6ZRgDIAEoA1IEc2l6ZQ==');

@$core.Deprecated('Use ethListHistoryResponseDescriptor instead')
const EthListHistoryResponse$json = {
  '1': 'EthListHistoryResponse',
  '2': [
    {'1': 'count', '3': 3, '4': 1, '5': 3, '10': 'count'},
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'page', '3': 2, '4': 1, '5': 3, '10': 'page'},
    {'1': 'items', '3': 5, '4': 3, '5': 11, '6': '.lnrpc.EthHistory', '10': 'items'},
  ],
};

/// Descriptor for `EthListHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethListHistoryResponseDescriptor = $convert.base64Decode(
    'ChZFdGhMaXN0SGlzdG9yeVJlc3BvbnNlEhQKBWNvdW50GAMgASgDUgVjb3VudBIUCgV0b2tlbh'
    'gBIAEoCVIFdG9rZW4SEgoEcGFnZRgCIAEoA1IEcGFnZRInCgVpdGVtcxgFIAMoCzIRLmxucnBj'
    'LkV0aEhpc3RvcnlSBWl0ZW1z');

@$core.Deprecated('Use ethGetAddressRequestDescriptor instead')
const EthGetAddressRequest$json = {
  '1': 'EthGetAddressRequest',
};

/// Descriptor for `EthGetAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetAddressRequestDescriptor = $convert.base64Decode(
    'ChRFdGhHZXRBZGRyZXNzUmVxdWVzdA==');

@$core.Deprecated('Use ethGetAddressResponseDescriptor instead')
const EthGetAddressResponse$json = {
  '1': 'EthGetAddressResponse',
  '2': [
    {'1': 'Address', '3': 1, '4': 1, '5': 9, '10': 'Address'},
  ],
};

/// Descriptor for `EthGetAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetAddressResponseDescriptor = $convert.base64Decode(
    'ChVFdGhHZXRBZGRyZXNzUmVzcG9uc2USGAoHQWRkcmVzcxgBIAEoCVIHQWRkcmVzcw==');

@$core.Deprecated('Use ethTransferEthRequestDescriptor instead')
const EthTransferEthRequest$json = {
  '1': 'EthTransferEthRequest',
  '2': [
    {'1': 'to', '3': 1, '4': 1, '5': 9, '10': 'to'},
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
  ],
};

/// Descriptor for `EthTransferEthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTransferEthRequestDescriptor = $convert.base64Decode(
    'ChVFdGhUcmFuc2ZlckV0aFJlcXVlc3QSDgoCdG8YASABKAlSAnRvEhAKA2FtdBgCIAEoAVIDYW'
    '10');

@$core.Deprecated('Use ethTransferEthResponseDescriptor instead')
const EthTransferEthResponse$json = {
  '1': 'EthTransferEthResponse',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `EthTransferEthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTransferEthResponseDescriptor = $convert.base64Decode(
    'ChZFdGhUcmFuc2ZlckV0aFJlc3BvbnNlEhMKBXR4X2lkGAEgASgJUgR0eElk');

@$core.Deprecated('Use ethTransferTokenRequestDescriptor instead')
const EthTransferTokenRequest$json = {
  '1': 'EthTransferTokenRequest',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'to', '3': 2, '4': 1, '5': 9, '10': 'to'},
    {'1': 'amt', '3': 3, '4': 1, '5': 1, '10': 'amt'},
  ],
};

/// Descriptor for `EthTransferTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTransferTokenRequestDescriptor = $convert.base64Decode(
    'ChdFdGhUcmFuc2ZlclRva2VuUmVxdWVzdBIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SDgoCdG8YAi'
    'ABKAlSAnRvEhAKA2FtdBgDIAEoAVIDYW10');

@$core.Deprecated('Use ethTransferTokenResponseDescriptor instead')
const EthTransferTokenResponse$json = {
  '1': 'EthTransferTokenResponse',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `EthTransferTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTransferTokenResponseDescriptor = $convert.base64Decode(
    'ChhFdGhUcmFuc2ZlclRva2VuUmVzcG9uc2USEwoFdHhfaWQYASABKAlSBHR4SWQ=');

@$core.Deprecated('Use ethTrackTxRequestDescriptor instead')
const EthTrackTxRequest$json = {
  '1': 'EthTrackTxRequest',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
  ],
};

/// Descriptor for `EthTrackTxRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTrackTxRequestDescriptor = $convert.base64Decode(
    'ChFFdGhUcmFja1R4UmVxdWVzdBITCgV0eF9pZBgBIAEoCVIEdHhJZA==');

@$core.Deprecated('Use ethTrackTxResponseDescriptor instead')
const EthTrackTxResponse$json = {
  '1': 'EthTrackTxResponse',
};

/// Descriptor for `EthTrackTxResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTrackTxResponseDescriptor = $convert.base64Decode(
    'ChJFdGhUcmFja1R4UmVzcG9uc2U=');

@$core.Deprecated('Use ethAddTokenResponseDescriptor instead')
const EthAddTokenResponse$json = {
  '1': 'EthAddTokenResponse',
};

/// Descriptor for `EthAddTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethAddTokenResponseDescriptor = $convert.base64Decode(
    'ChNFdGhBZGRUb2tlblJlc3BvbnNl');

@$core.Deprecated('Use ethGetAllTokenRequestDescriptor instead')
const EthGetAllTokenRequest$json = {
  '1': 'EthGetAllTokenRequest',
};

/// Descriptor for `EthGetAllTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetAllTokenRequestDescriptor = $convert.base64Decode(
    'ChVFdGhHZXRBbGxUb2tlblJlcXVlc3Q=');

@$core.Deprecated('Use ethGetAllTokenResponseDescriptor instead')
const EthGetAllTokenResponse$json = {
  '1': 'EthGetAllTokenResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.EthToken', '10': 'items'},
  ],
};

/// Descriptor for `EthGetAllTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethGetAllTokenResponseDescriptor = $convert.base64Decode(
    'ChZFdGhHZXRBbGxUb2tlblJlc3BvbnNlEiUKBWl0ZW1zGAEgAygLMg8ubG5ycGMuRXRoVG9rZW'
    '5SBWl0ZW1z');

@$core.Deprecated('Use ethHistoryDescriptor instead')
const EthHistory$json = {
  '1': 'EthHistory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'TokenAddress', '3': 2, '4': 1, '5': 9, '10': 'TokenAddress'},
    {'1': 'TokenName', '3': 3, '4': 1, '5': 9, '10': 'TokenName'},
    {'1': 'To', '3': 4, '4': 1, '5': 9, '10': 'To'},
    {'1': 'amt', '3': 5, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'tx_id', '3': 6, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

/// Descriptor for `EthHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethHistoryDescriptor = $convert.base64Decode(
    'CgpFdGhIaXN0b3J5Eg4KAmlkGAEgASgDUgJpZBIiCgxUb2tlbkFkZHJlc3MYAiABKAlSDFRva2'
    'VuQWRkcmVzcxIcCglUb2tlbk5hbWUYAyABKAlSCVRva2VuTmFtZRIOCgJUbxgEIAEoCVICVG8S'
    'EAoDYW10GAUgASgBUgNhbXQSEwoFdHhfaWQYBiABKAlSBHR4SWQSHQoKdXBkYXRlZF9hdBgHIA'
    'EoA1IJdXBkYXRlZEF0');

@$core.Deprecated('Use ethTokenDescriptor instead')
const EthToken$json = {
  '1': 'EthToken',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'token_name', '3': 2, '4': 1, '5': 9, '10': 'tokenName'},
    {'1': 'decimals', '3': 3, '4': 1, '5': 4, '10': 'decimals'},
    {'1': 'id', '3': 4, '4': 1, '5': 3, '10': 'id'},
    {'1': 'updated_at', '3': 5, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

/// Descriptor for `EthToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ethTokenDescriptor = $convert.base64Decode(
    'CghFdGhUb2tlbhIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEh0KCnRva2VuX25hbWUYAiABKA'
    'lSCXRva2VuTmFtZRIaCghkZWNpbWFscxgDIAEoBFIIZGVjaW1hbHMSDgoCaWQYBCABKANSAmlk'
    'Eh0KCnVwZGF0ZWRfYXQYBSABKANSCXVwZGF0ZWRBdA==');

