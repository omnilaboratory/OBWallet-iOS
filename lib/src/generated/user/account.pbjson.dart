//
//  Generated code. Do not modify.
//  source: user/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getCoinPriceRequestDescriptor instead')
const GetCoinPriceRequest$json = {
  '1': 'GetCoinPriceRequest',
  '2': [
    {'1': 'symbol', '3': 1, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'symbol'},
  ],
};

/// Descriptor for `GetCoinPriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoinPriceRequestDescriptor = $convert.base64Decode(
    'ChNHZXRDb2luUHJpY2VSZXF1ZXN0EjYKBnN5bWJvbBgBIAEoDjIeLnVzZXIuVHJhY2tlZFR4Lk'
    'NvbnRyYWN0U3ltYm9sUgZzeW1ib2w=');

@$core.Deprecated('Use getCoinPriceResponseDescriptor instead')
const GetCoinPriceResponse$json = {
  '1': 'GetCoinPriceResponse',
  '2': [
    {'1': 'price', '3': 1, '4': 1, '5': 1, '10': 'price'},
  ],
};

/// Descriptor for `GetCoinPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCoinPriceResponseDescriptor = $convert.base64Decode(
    'ChRHZXRDb2luUHJpY2VSZXNwb25zZRIUCgVwcmljZRgBIAEoAVIFcHJpY2U=');

@$core.Deprecated('Use getSwapTxListRequestDescriptor instead')
const GetSwapTxListRequest$json = {
  '1': 'GetSwapTxListRequest',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'Symbol', '3': 3, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'Symbol'},
  ],
};

/// Descriptor for `GetSwapTxListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSwapTxListRequestDescriptor = $convert.base64Decode(
    'ChRHZXRTd2FwVHhMaXN0UmVxdWVzdBIUCgVzdGFydBgBIAEoA1IFc3RhcnQSFAoFbGltaXQYAi'
    'ABKANSBWxpbWl0EjYKBlN5bWJvbBgDIAEoDjIeLnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0U3lt'
    'Ym9sUgZTeW1ib2w=');

@$core.Deprecated('Use getSwapTxListResponseDescriptor instead')
const GetSwapTxListResponse$json = {
  '1': 'GetSwapTxListResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.SwapTx', '10': 'items'},
  ],
};

/// Descriptor for `GetSwapTxListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSwapTxListResponseDescriptor = $convert.base64Decode(
    'ChVHZXRTd2FwVHhMaXN0UmVzcG9uc2USIgoFaXRlbXMYASADKAsyDC51c2VyLlN3YXBUeFIFaX'
    'RlbXM=');

@$core.Deprecated('Use getTrackedTxListResponseDescriptor instead')
const GetTrackedTxListResponse$json = {
  '1': 'GetTrackedTxListResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.TrackedTx', '10': 'items'},
  ],
};

/// Descriptor for `GetTrackedTxListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrackedTxListResponseDescriptor = $convert.base64Decode(
    'ChhHZXRUcmFja2VkVHhMaXN0UmVzcG9uc2USJQoFaXRlbXMYASADKAsyDy51c2VyLlRyYWNrZW'
    'RUeFIFaXRlbXM=');

@$core.Deprecated('Use getAccountHistoryRequestDescriptor instead')
const GetAccountHistoryRequest$json = {
  '1': 'GetAccountHistoryRequest',
  '2': [
    {'1': 'Symbol', '3': 1, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'Symbol'},
  ],
};

/// Descriptor for `GetAccountHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountHistoryRequestDescriptor = $convert.base64Decode(
    'ChhHZXRBY2NvdW50SGlzdG9yeVJlcXVlc3QSNgoGU3ltYm9sGAEgASgOMh4udXNlci5UcmFja2'
    'VkVHguQ29udHJhY3RTeW1ib2xSBlN5bWJvbA==');

@$core.Deprecated('Use getAccountHistoryResponseDescriptor instead')
const GetAccountHistoryResponse$json = {
  '1': 'GetAccountHistoryResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.AccountHistory', '10': 'items'},
  ],
};

/// Descriptor for `GetAccountHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountHistoryResponseDescriptor = $convert.base64Decode(
    'ChlHZXRBY2NvdW50SGlzdG9yeVJlc3BvbnNlEioKBWl0ZW1zGAEgAygLMhQudXNlci5BY2NvdW'
    '50SGlzdG9yeVIFaXRlbXM=');

@$core.Deprecated('Use getAccountInfoRequestDescriptor instead')
const GetAccountInfoRequest$json = {
  '1': 'GetAccountInfoRequest',
};

/// Descriptor for `GetAccountInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountInfoRequestDescriptor = $convert.base64Decode(
    'ChVHZXRBY2NvdW50SW5mb1JlcXVlc3Q=');

@$core.Deprecated('Use accountInfoDescriptor instead')
const AccountInfo$json = {
  '1': 'AccountInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'balance_usd', '3': 5, '4': 1, '5': 1, '10': 'balanceUsd'},
    {'1': 'locked_usd', '3': 7, '4': 1, '5': 1, '10': 'lockedUsd'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `AccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50SW5mbxIOCgJpZBgBIAEoA1ICaWQSFwoHdXNlcl9pZBgCIAEoA1IGdXNlcklkEh'
    '8KC2JhbGFuY2VfdXNkGAUgASgBUgpiYWxhbmNlVXNkEh0KCmxvY2tlZF91c2QYByABKAFSCWxv'
    'Y2tlZFVzZBIdCgpjcmVhdGVkX2F0GAYgASgDUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use trackedTxDescriptor instead')
const TrackedTx$json = {
  '1': 'TrackedTx',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_id', '3': 13, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'from', '3': 3, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 4, '4': 1, '5': 9, '10': 'to'},
    {'1': 'to_user_id', '3': 15, '4': 1, '5': 3, '10': 'toUserId'},
    {'1': 'token_address', '3': 5, '4': 1, '5': 9, '10': 'tokenAddress'},
    {'1': 'amt', '3': 6, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'usd_amt', '3': 16, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'commit_height', '3': 14, '4': 1, '5': 3, '10': 'commitHeight'},
    {'1': 'Symbol', '3': 7, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'Symbol'},
    {'1': 'confirms', '3': 8, '4': 1, '5': 3, '10': 'confirms'},
    {'1': 'status', '3': 9, '4': 1, '5': 14, '6': '.user.TrackedTx.Status', '10': 'status'},
    {'1': 'tx_err_msg', '3': 10, '4': 1, '5': 9, '10': 'txErrMsg'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 12, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
  '4': [TrackedTx_ContractSymbol$json, TrackedTx_Status$json],
};

@$core.Deprecated('Use trackedTxDescriptor instead')
const TrackedTx_ContractSymbol$json = {
  '1': 'ContractSymbol',
  '2': [
    {'1': 'USD', '2': 0},
    {'1': 'ETH', '2': 1},
    {'1': 'USDT', '2': 2},
    {'1': 'USDC', '2': 3},
  ],
};

@$core.Deprecated('Use trackedTxDescriptor instead')
const TrackedTx_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'StatusUnknown', '2': 0},
    {'1': 'TxInit', '2': 1},
    {'1': 'TxCommited', '2': 2},
    {'1': 'TxConfirming', '2': 3},
    {'1': 'TxCommitFail', '2': 4},
    {'1': 'TxFinish', '2': 5},
  ],
};

/// Descriptor for `TrackedTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackedTxDescriptor = $convert.base64Decode(
    'CglUcmFja2VkVHgSDgoCaWQYASABKANSAmlkEhcKB3VzZXJfaWQYDSABKANSBnVzZXJJZBITCg'
    'V0eF9pZBgCIAEoCVIEdHhJZBISCgRmcm9tGAMgASgJUgRmcm9tEg4KAnRvGAQgASgJUgJ0bxIc'
    'Cgp0b191c2VyX2lkGA8gASgDUgh0b1VzZXJJZBIjCg10b2tlbl9hZGRyZXNzGAUgASgJUgx0b2'
    'tlbkFkZHJlc3MSEAoDYW10GAYgASgBUgNhbXQSFwoHdXNkX2FtdBgQIAEoAVIGdXNkQW10EiMK'
    'DWNvbW1pdF9oZWlnaHQYDiABKANSDGNvbW1pdEhlaWdodBI2CgZTeW1ib2wYByABKA4yHi51c2'
    'VyLlRyYWNrZWRUeC5Db250cmFjdFN5bWJvbFIGU3ltYm9sEhoKCGNvbmZpcm1zGAggASgDUghj'
    'b25maXJtcxIuCgZzdGF0dXMYCSABKA4yFi51c2VyLlRyYWNrZWRUeC5TdGF0dXNSBnN0YXR1cx'
    'IcCgp0eF9lcnJfbXNnGAogASgJUgh0eEVyck1zZxIdCgpjcmVhdGVkX2F0GAsgASgDUgljcmVh'
    'dGVkQXQSHQoKdXBkYXRlZF9hdBgMIAEoA1IJdXBkYXRlZEF0IjYKDkNvbnRyYWN0U3ltYm9sEg'
    'cKA1VTRBAAEgcKA0VUSBABEggKBFVTRFQQAhIICgRVU0RDEAMiaQoGU3RhdHVzEhEKDVN0YXR1'
    'c1Vua25vd24QABIKCgZUeEluaXQQARIOCgpUeENvbW1pdGVkEAISEAoMVHhDb25maXJtaW5nEA'
    'MSEAoMVHhDb21taXRGYWlsEAQSDAoIVHhGaW5pc2gQBQ==');

@$core.Deprecated('Use swapTxDescriptor instead')
const SwapTx$json = {
  '1': 'SwapTx',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'tx_id', '3': 3, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'confirms', '3': 9, '4': 1, '5': 3, '10': 'confirms'},
    {'1': 'status', '3': 13, '4': 1, '5': 14, '6': '.user.TrackedTx.Status', '10': 'status'},
    {'1': 'tx_err_msg', '3': 17, '4': 1, '5': 9, '10': 'txErrMsg'},
    {'1': 'is_buy_coin', '3': 18, '4': 1, '5': 8, '10': 'isBuyCoin'},
    {'1': 'coin_price', '3': 8, '4': 1, '5': 1, '10': 'coinPrice'},
    {'1': 'amt', '3': 4, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'target_amt', '3': 5, '4': 1, '5': 1, '10': 'targetAmt'},
    {'1': 'settle_amt', '3': 15, '4': 1, '5': 1, '10': 'settleAmt'},
    {'1': 'settle_price', '3': 19, '4': 1, '5': 1, '10': 'settlePrice'},
    {'1': 'from_symbol', '3': 6, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'fromSymbol'},
    {'1': 'target_symbol', '3': 7, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'targetSymbol'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 12, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

/// Descriptor for `SwapTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swapTxDescriptor = $convert.base64Decode(
    'CgZTd2FwVHgSDgoCaWQYASABKANSAmlkEhcKB3VzZXJfaWQYAiABKANSBnVzZXJJZBITCgV0eF'
    '9pZBgDIAEoCVIEdHhJZBIaCghjb25maXJtcxgJIAEoA1IIY29uZmlybXMSLgoGc3RhdHVzGA0g'
    'ASgOMhYudXNlci5UcmFja2VkVHguU3RhdHVzUgZzdGF0dXMSHAoKdHhfZXJyX21zZxgRIAEoCV'
    'IIdHhFcnJNc2cSHgoLaXNfYnV5X2NvaW4YEiABKAhSCWlzQnV5Q29pbhIdCgpjb2luX3ByaWNl'
    'GAggASgBUgljb2luUHJpY2USEAoDYW10GAQgASgBUgNhbXQSHQoKdGFyZ2V0X2FtdBgFIAEoAV'
    'IJdGFyZ2V0QW10Eh0KCnNldHRsZV9hbXQYDyABKAFSCXNldHRsZUFtdBIhCgxzZXR0bGVfcHJp'
    'Y2UYEyABKAFSC3NldHRsZVByaWNlEj8KC2Zyb21fc3ltYm9sGAYgASgOMh4udXNlci5UcmFja2'
    'VkVHguQ29udHJhY3RTeW1ib2xSCmZyb21TeW1ib2wSQwoNdGFyZ2V0X3N5bWJvbBgHIAEoDjIe'
    'LnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0U3ltYm9sUgx0YXJnZXRTeW1ib2wSHQoKY3JlYXRlZF'
    '9hdBgLIAEoA1IJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYDCABKANSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use sellCoinRequestDescriptor instead')
const SellCoinRequest$json = {
  '1': 'SellCoinRequest',
  '2': [
    {'1': 'txid', '3': 6, '4': 1, '5': 9, '10': 'txid'},
    {'1': 'coin', '3': 2, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'coin'},
    {'1': 'coin_amt', '3': 3, '4': 1, '5': 1, '10': 'coinAmt'},
    {'1': 'usd_amt', '3': 4, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'rate', '3': 5, '4': 1, '5': 1, '10': 'rate'},
  ],
};

/// Descriptor for `SellCoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sellCoinRequestDescriptor = $convert.base64Decode(
    'Cg9TZWxsQ29pblJlcXVlc3QSEgoEdHhpZBgGIAEoCVIEdHhpZBIyCgRjb2luGAIgASgOMh4udX'
    'Nlci5UcmFja2VkVHguQ29udHJhY3RTeW1ib2xSBGNvaW4SGQoIY29pbl9hbXQYAyABKAFSB2Nv'
    'aW5BbXQSFwoHdXNkX2FtdBgEIAEoAVIGdXNkQW10EhIKBHJhdGUYBSABKAFSBHJhdGU=');

@$core.Deprecated('Use sellCoinResponseDescriptor instead')
const SellCoinResponse$json = {
  '1': 'SellCoinResponse',
};

/// Descriptor for `SellCoinResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sellCoinResponseDescriptor = $convert.base64Decode(
    'ChBTZWxsQ29pblJlc3BvbnNl');

@$core.Deprecated('Use buyCoinRequestDescriptor instead')
const BuyCoinRequest$json = {
  '1': 'BuyCoinRequest',
  '2': [
    {'1': 'coin', '3': 2, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'coin'},
    {'1': 'coin_amt', '3': 3, '4': 1, '5': 1, '10': 'coinAmt'},
    {'1': 'usd_amt', '3': 4, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'rate', '3': 5, '4': 1, '5': 1, '10': 'rate'},
  ],
};

/// Descriptor for `BuyCoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyCoinRequestDescriptor = $convert.base64Decode(
    'Cg5CdXlDb2luUmVxdWVzdBIyCgRjb2luGAIgASgOMh4udXNlci5UcmFja2VkVHguQ29udHJhY3'
    'RTeW1ib2xSBGNvaW4SGQoIY29pbl9hbXQYAyABKAFSB2NvaW5BbXQSFwoHdXNkX2FtdBgEIAEo'
    'AVIGdXNkQW10EhIKBHJhdGUYBSABKAFSBHJhdGU=');

@$core.Deprecated('Use buyCoinResponseDescriptor instead')
const BuyCoinResponse$json = {
  '1': 'BuyCoinResponse',
  '2': [
    {'1': 'txid', '3': 6, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `BuyCoinResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyCoinResponseDescriptor = $convert.base64Decode(
    'Cg9CdXlDb2luUmVzcG9uc2USEgoEdHhpZBgGIAEoCVIEdHhpZA==');

@$core.Deprecated('Use getDcPayUrlRequestDescriptor instead')
const GetDcPayUrlRequest$json = {
  '1': 'GetDcPayUrlRequest',
  '2': [
    {'1': 'usd_amt', '3': 1, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'coin', '3': 2, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'coin'},
  ],
};

/// Descriptor for `GetDcPayUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDcPayUrlRequestDescriptor = $convert.base64Decode(
    'ChJHZXREY1BheVVybFJlcXVlc3QSFwoHdXNkX2FtdBgBIAEoAVIGdXNkQW10EjIKBGNvaW4YAi'
    'ABKA4yHi51c2VyLlRyYWNrZWRUeC5Db250cmFjdFN5bWJvbFIEY29pbg==');

@$core.Deprecated('Use getDcPayUrlResponseDescriptor instead')
const GetDcPayUrlResponse$json = {
  '1': 'GetDcPayUrlResponse',
  '2': [
    {'1': 'url_path', '3': 1, '4': 1, '5': 9, '10': 'urlPath'},
  ],
};

/// Descriptor for `GetDcPayUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDcPayUrlResponseDescriptor = $convert.base64Decode(
    'ChNHZXREY1BheVVybFJlc3BvbnNlEhkKCHVybF9wYXRoGAEgASgJUgd1cmxQYXRo');

@$core.Deprecated('Use accountHistoryDescriptor instead')
const AccountHistory$json = {
  '1': 'AccountHistory',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'account_id', '3': 8, '4': 1, '5': 3, '10': 'accountId'},
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'source_id', '3': 3, '4': 1, '5': 9, '10': 'sourceId'},
    {'1': 'confirms', '3': 9, '4': 1, '5': 3, '10': 'confirms'},
    {'1': 'source_type', '3': 4, '4': 1, '5': 14, '6': '.user.AccountHistory.SourceType', '10': 'sourceType'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 4, '10': 'updatedAt'},
    {'1': 'Symbol', '3': 7, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'Symbol'},
  ],
  '4': [AccountHistory_SourceType$json],
};

@$core.Deprecated('Use accountHistoryDescriptor instead')
const AccountHistory_SourceType$json = {
  '1': 'SourceType',
  '2': [
    {'1': 'UnKnow', '2': 0},
    {'1': 'Recharge', '2': 1},
    {'1': 'Withdraw', '2': 2},
    {'1': 'Swap', '2': 3},
  ],
};

/// Descriptor for `AccountHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountHistoryDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50SGlzdG9yeRIOCgJpZBgBIAEoA1ICaWQSHQoKYWNjb3VudF9pZBgIIAEoA1IJYW'
    'Njb3VudElkEhAKA2FtdBgCIAEoAVIDYW10EhsKCXNvdXJjZV9pZBgDIAEoCVIIc291cmNlSWQS'
    'GgoIY29uZmlybXMYCSABKANSCGNvbmZpcm1zEkAKC3NvdXJjZV90eXBlGAQgASgOMh8udXNlci'
    '5BY2NvdW50SGlzdG9yeS5Tb3VyY2VUeXBlUgpzb3VyY2VUeXBlEh0KCmNyZWF0ZWRfYXQYBSAB'
    'KARSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAYgASgEUgl1cGRhdGVkQXQSNgoGU3ltYm9sGA'
    'cgASgOMh4udXNlci5UcmFja2VkVHguQ29udHJhY3RTeW1ib2xSBlN5bWJvbCI+CgpTb3VyY2VU'
    'eXBlEgoKBlVuS25vdxAAEgwKCFJlY2hhcmdlEAESDAoIV2l0aGRyYXcQAhIICgRTd2FwEAM=');

