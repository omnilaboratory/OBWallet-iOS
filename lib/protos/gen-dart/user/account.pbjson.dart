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

@$core.Deprecated('Use netWorkDescriptor instead')
const NetWork$json = {
  '1': 'NetWork',
  '2': [
    {'1': 'UnKownNetWork', '2': 0},
    {'1': 'ETH', '2': 1},
    {'1': 'POLYGON', '2': 2},
    {'1': 'TRON', '2': 3},
    {'1': 'ACOUNT', '2': 4},
  ],
};

/// Descriptor for `NetWork`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List netWorkDescriptor = $convert.base64Decode(
    'CgdOZXRXb3JrEhEKDVVuS293bk5ldFdvcmsQABIHCgNFVEgQARILCgdQT0xZR09OEAISCAoEVF'
    'JPThADEgoKBkFDT1VOVBAE');

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
    {'1': 'load_nft_token_log', '3': 4, '4': 1, '5': 8, '10': 'loadNftTokenLog'},
  ],
};

/// Descriptor for `GetSwapTxListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSwapTxListRequestDescriptor = $convert.base64Decode(
    'ChRHZXRTd2FwVHhMaXN0UmVxdWVzdBIUCgVzdGFydBgBIAEoA1IFc3RhcnQSFAoFbGltaXQYAi'
    'ABKANSBWxpbWl0EjYKBlN5bWJvbBgDIAEoDjIeLnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0U3lt'
    'Ym9sUgZTeW1ib2wSKwoSbG9hZF9uZnRfdG9rZW5fbG9nGAQgASgIUg9sb2FkTmZ0VG9rZW5Mb2'
    'c=');

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

@$core.Deprecated('Use listNftTokenEventsRequestDescriptor instead')
const ListNftTokenEventsRequest$json = {
  '1': 'ListNftTokenEventsRequest',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `ListNftTokenEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNftTokenEventsRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0TmZ0VG9rZW5FdmVudHNSZXF1ZXN0EhQKBXN0YXJ0GAEgASgDUgVzdGFydBIUCgVsaW'
    '1pdBgCIAEoA1IFbGltaXQSGAoHYWRkcmVzcxgDIAEoCVIHYWRkcmVzcw==');

@$core.Deprecated('Use listNftTokenEventsResponseDescriptor instead')
const ListNftTokenEventsResponse$json = {
  '1': 'ListNftTokenEventsResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.NftTokenEvent', '10': 'items'},
  ],
};

/// Descriptor for `ListNftTokenEventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listNftTokenEventsResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0TmZ0VG9rZW5FdmVudHNSZXNwb25zZRIpCgVpdGVtcxgBIAMoCzITLnVzZXIuTmZ0VG'
    '9rZW5FdmVudFIFaXRlbXM=');

@$core.Deprecated('Use getNftTokenRequestDescriptor instead')
const GetNftTokenRequest$json = {
  '1': 'GetNftTokenRequest',
  '2': [
    {'1': 'token_id', '3': 1, '4': 1, '5': 3, '10': 'tokenId'},
  ],
};

/// Descriptor for `GetNftTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNftTokenRequestDescriptor = $convert.base64Decode(
    'ChJHZXROZnRUb2tlblJlcXVlc3QSGQoIdG9rZW5faWQYASABKANSB3Rva2VuSWQ=');

@$core.Deprecated('Use getNftBlanceRequestDescriptor instead')
const GetNftBlanceRequest$json = {
  '1': 'GetNftBlanceRequest',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'from_chain', '3': 2, '4': 1, '5': 8, '10': 'fromChain'},
  ],
};

/// Descriptor for `GetNftBlanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNftBlanceRequestDescriptor = $convert.base64Decode(
    'ChNHZXROZnRCbGFuY2VSZXF1ZXN0EhgKB2FkZHJlc3MYASABKAlSB2FkZHJlc3MSHQoKZnJvbV'
    '9jaGFpbhgCIAEoCFIJZnJvbUNoYWlu');

@$core.Deprecated('Use getNftBlanceResponseDescriptor instead')
const GetNftBlanceResponse$json = {
  '1': 'GetNftBlanceResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.NftToken', '10': 'items'},
  ],
};

/// Descriptor for `GetNftBlanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNftBlanceResponseDescriptor = $convert.base64Decode(
    'ChRHZXROZnRCbGFuY2VSZXNwb25zZRIkCgVpdGVtcxgBIAMoCzIOLnVzZXIuTmZ0VG9rZW5SBW'
    'l0ZW1z');

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
    {'1': 'start', '3': 1, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'token', '3': 3, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'token'},
  ],
};

/// Descriptor for `GetAccountHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountHistoryRequestDescriptor = $convert.base64Decode(
    'ChhHZXRBY2NvdW50SGlzdG9yeVJlcXVlc3QSFAoFc3RhcnQYASABKANSBXN0YXJ0EhQKBWxpbW'
    'l0GAIgASgDUgVsaW1pdBI0CgV0b2tlbhgDIAEoDjIeLnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0'
    'U3ltYm9sUgV0b2tlbg==');

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
  '2': [
    {'1': 'token_name', '3': 1, '4': 1, '5': 9, '10': 'tokenName'},
  ],
};

/// Descriptor for `GetAccountInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountInfoRequestDescriptor = $convert.base64Decode(
    'ChVHZXRBY2NvdW50SW5mb1JlcXVlc3QSHQoKdG9rZW5fbmFtZRgBIAEoCVIJdG9rZW5OYW1l');

@$core.Deprecated('Use accountInfoDescriptor instead')
const AccountInfo$json = {
  '1': 'AccountInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'balance', '3': 5, '4': 1, '5': 1, '10': 'balance'},
    {'1': 'balance_type', '3': 8, '4': 1, '5': 9, '10': 'balanceType'},
    {'1': 'locked_usd', '3': 7, '4': 1, '5': 1, '10': 'lockedUsd'},
    {'1': 'updated_at', '3': 9, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `AccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50SW5mbxIOCgJpZBgBIAEoA1ICaWQSFwoHdXNlcl9pZBgCIAEoA1IGdXNlcklkEh'
    'gKB2JhbGFuY2UYBSABKAFSB2JhbGFuY2USIQoMYmFsYW5jZV90eXBlGAggASgJUgtiYWxhbmNl'
    'VHlwZRIdCgpsb2NrZWRfdXNkGAcgASgBUglsb2NrZWRVc2QSHQoKdXBkYXRlZF9hdBgJIAEoA1'
    'IJdXBkYXRlZEF0Eh0KCmNyZWF0ZWRfYXQYBiABKANSCWNyZWF0ZWRBdA==');

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
    {'1': 'NFT', '2': 4},
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
    'dGVkQXQSHQoKdXBkYXRlZF9hdBgMIAEoA1IJdXBkYXRlZEF0Ij8KDkNvbnRyYWN0U3ltYm9sEg'
    'cKA1VTRBAAEgcKA0VUSBABEggKBFVTRFQQAhIICgRVU0RDEAMSBwoDTkZUEAQiaQoGU3RhdHVz'
    'EhEKDVN0YXR1c1Vua25vd24QABIKCgZUeEluaXQQARIOCgpUeENvbW1pdGVkEAISEAoMVHhDb2'
    '5maXJtaW5nEAMSEAoMVHhDb21taXRGYWlsEAQSDAoIVHhGaW5pc2gQBQ==');

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
    {'1': 'exchanged_usd_amt', '3': 24, '4': 1, '5': 1, '10': 'exchangedUsdAmt'},
    {'1': 'created_at', '3': 11, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 12, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'is_sell_nft', '3': 20, '4': 1, '5': 8, '10': 'isSellNft'},
    {'1': 'nft_txid', '3': 21, '4': 1, '5': 9, '10': 'nftTxid'},
    {'1': 'card_no', '3': 22, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'nftTokenLogs', '3': 23, '4': 3, '5': 11, '6': '.user.NftTokenLog', '10': 'nftTokenLogs'},
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
    'LnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0U3ltYm9sUgx0YXJnZXRTeW1ib2wSKgoRZXhjaGFuZ2'
    'VkX3VzZF9hbXQYGCABKAFSD2V4Y2hhbmdlZFVzZEFtdBIdCgpjcmVhdGVkX2F0GAsgASgDUglj'
    'cmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgMIAEoA1IJdXBkYXRlZEF0Eh4KC2lzX3NlbGxfbmZ0GB'
    'QgASgIUglpc1NlbGxOZnQSGQoIbmZ0X3R4aWQYFSABKAlSB25mdFR4aWQSFwoHY2FyZF9ubxgW'
    'IAEoCVIGY2FyZE5vEjUKDG5mdFRva2VuTG9ncxgXIAMoCzIRLnVzZXIuTmZ0VG9rZW5Mb2dSDG'
    '5mdFRva2VuTG9ncw==');

@$core.Deprecated('Use sellCoinRequestDescriptor instead')
const SellCoinRequest$json = {
  '1': 'SellCoinRequest',
  '2': [
    {'1': 'coin', '3': 2, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'coin'},
    {'1': 'coin_amt', '3': 3, '4': 1, '5': 1, '10': 'coinAmt'},
    {'1': 'usd_amt', '3': 4, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'rate', '3': 5, '4': 1, '5': 1, '10': 'rate'},
  ],
};

/// Descriptor for `SellCoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sellCoinRequestDescriptor = $convert.base64Decode(
    'Cg9TZWxsQ29pblJlcXVlc3QSMgoEY29pbhgCIAEoDjIeLnVzZXIuVHJhY2tlZFR4LkNvbnRyYW'
    'N0U3ltYm9sUgRjb2luEhkKCGNvaW5fYW10GAMgASgBUgdjb2luQW10EhcKB3VzZF9hbXQYBCAB'
    'KAFSBnVzZEFtdBISCgRyYXRlGAUgASgBUgRyYXRl');

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

@$core.Deprecated('Use getUserSwapPriceRequestDescriptor instead')
const GetUserSwapPriceRequest$json = {
  '1': 'GetUserSwapPriceRequest',
  '2': [
    {'1': 'from_symbol', '3': 1, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'fromSymbol'},
    {'1': 'from_amt', '3': 2, '4': 1, '5': 1, '10': 'fromAmt'},
    {'1': 'target_symbol', '3': 3, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'targetSymbol'},
  ],
};

/// Descriptor for `GetUserSwapPriceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserSwapPriceRequestDescriptor = $convert.base64Decode(
    'ChdHZXRVc2VyU3dhcFByaWNlUmVxdWVzdBI/Cgtmcm9tX3N5bWJvbBgBIAEoDjIeLnVzZXIuVH'
    'JhY2tlZFR4LkNvbnRyYWN0U3ltYm9sUgpmcm9tU3ltYm9sEhkKCGZyb21fYW10GAIgASgBUgdm'
    'cm9tQW10EkMKDXRhcmdldF9zeW1ib2wYAyABKA4yHi51c2VyLlRyYWNrZWRUeC5Db250cmFjdF'
    'N5bWJvbFIMdGFyZ2V0U3ltYm9s');

@$core.Deprecated('Use getUserSwapPriceResponseDescriptor instead')
const GetUserSwapPriceResponse$json = {
  '1': 'GetUserSwapPriceResponse',
  '2': [
    {'1': 'target_amt', '3': 1, '4': 1, '5': 1, '10': 'targetAmt'},
    {'1': 'settle_price', '3': 2, '4': 1, '5': 1, '10': 'settlePrice'},
    {'1': 'raw_price', '3': 3, '4': 1, '5': 1, '10': 'rawPrice'},
    {'1': 'gas_fee', '3': 4, '4': 1, '5': 1, '10': 'gasFee'},
    {'1': 'fee_rate', '3': 5, '4': 1, '5': 1, '10': 'feeRate'},
  ],
};

/// Descriptor for `GetUserSwapPriceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserSwapPriceResponseDescriptor = $convert.base64Decode(
    'ChhHZXRVc2VyU3dhcFByaWNlUmVzcG9uc2USHQoKdGFyZ2V0X2FtdBgBIAEoAVIJdGFyZ2V0QW'
    '10EiEKDHNldHRsZV9wcmljZRgCIAEoAVILc2V0dGxlUHJpY2USGwoJcmF3X3ByaWNlGAMgASgB'
    'UghyYXdQcmljZRIXCgdnYXNfZmVlGAQgASgBUgZnYXNGZWUSGQoIZmVlX3JhdGUYBSABKAFSB2'
    'ZlZVJhdGU=');

@$core.Deprecated('Use sellNftRequestDescriptor instead')
const SellNftRequest$json = {
  '1': 'SellNftRequest',
  '2': [
    {'1': 'usd_amt', '3': 1, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'coin', '3': 2, '4': 1, '5': 14, '6': '.user.TrackedTx.ContractSymbol', '10': 'coin'},
    {'1': 'rate', '3': 3, '4': 1, '5': 1, '10': 'rate'},
    {'1': 'coin_amt', '3': 5, '4': 1, '5': 1, '10': 'coinAmt'},
    {'1': 'nft_txid', '3': 6, '4': 1, '5': 9, '10': 'nftTxid'},
    {'1': 'card_no', '3': 8, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'token_ids', '3': 9, '4': 3, '5': 3, '10': 'tokenIds'},
    {'1': 'values', '3': 10, '4': 3, '5': 3, '10': 'values'},
  ],
};

/// Descriptor for `SellNftRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sellNftRequestDescriptor = $convert.base64Decode(
    'Cg5TZWxsTmZ0UmVxdWVzdBIXCgd1c2RfYW10GAEgASgBUgZ1c2RBbXQSMgoEY29pbhgCIAEoDj'
    'IeLnVzZXIuVHJhY2tlZFR4LkNvbnRyYWN0U3ltYm9sUgRjb2luEhIKBHJhdGUYAyABKAFSBHJh'
    'dGUSGQoIY29pbl9hbXQYBSABKAFSB2NvaW5BbXQSGQoIbmZ0X3R4aWQYBiABKAlSB25mdFR4aW'
    'QSFwoHY2FyZF9ubxgIIAEoCVIGY2FyZE5vEhsKCXRva2VuX2lkcxgJIAMoA1IIdG9rZW5JZHMS'
    'FgoGdmFsdWVzGAogAygDUgZ2YWx1ZXM=');

@$core.Deprecated('Use sellNftResponseDescriptor instead')
const SellNftResponse$json = {
  '1': 'SellNftResponse',
};

/// Descriptor for `SellNftResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sellNftResponseDescriptor = $convert.base64Decode(
    'Cg9TZWxsTmZ0UmVzcG9uc2U=');

@$core.Deprecated('Use buyNftRequestDescriptor instead')
const BuyNftRequest$json = {
  '1': 'BuyNftRequest',
  '2': [
    {'1': 'usd_amt', '3': 1, '4': 1, '5': 1, '10': 'usdAmt'},
  ],
};

/// Descriptor for `BuyNftRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyNftRequestDescriptor = $convert.base64Decode(
    'Cg1CdXlOZnRSZXF1ZXN0EhcKB3VzZF9hbXQYASABKAFSBnVzZEFtdA==');

@$core.Deprecated('Use buyNftResponseDescriptor instead')
const BuyNftResponse$json = {
  '1': 'BuyNftResponse',
  '2': [
    {'1': 'txid', '3': 1, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `BuyNftResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyNftResponseDescriptor = $convert.base64Decode(
    'Cg5CdXlOZnRSZXNwb25zZRISCgR0eGlkGAEgASgJUgR0eGlk');

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

@$core.Deprecated('Use nftTokenEventDescriptor instead')
const NftTokenEvent$json = {
  '1': 'NftTokenEvent',
  '2': [
    {'1': 'tx_id', '3': 1, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'from', '3': 2, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 3, '4': 1, '5': 9, '10': 'to'},
    {'1': 'token_id', '3': 4, '4': 1, '5': 3, '10': 'tokenId'},
    {'1': 'value', '3': 5, '4': 1, '5': 3, '10': 'value'},
    {'1': 'item_price', '3': 6, '4': 1, '5': 1, '10': 'itemPrice'},
    {'1': 'image_url', '3': 7, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'name', '3': 9, '4': 1, '5': 9, '10': 'name'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `NftTokenEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftTokenEventDescriptor = $convert.base64Decode(
    'Cg1OZnRUb2tlbkV2ZW50EhMKBXR4X2lkGAEgASgJUgR0eElkEhIKBGZyb20YAiABKAlSBGZyb2'
    '0SDgoCdG8YAyABKAlSAnRvEhkKCHRva2VuX2lkGAQgASgDUgd0b2tlbklkEhQKBXZhbHVlGAUg'
    'ASgDUgV2YWx1ZRIdCgppdGVtX3ByaWNlGAYgASgBUglpdGVtUHJpY2USGwoJaW1hZ2VfdXJsGA'
    'cgASgJUghpbWFnZVVybBISCgRuYW1lGAkgASgJUgRuYW1lEh0KCmNyZWF0ZWRfYXQYCCABKANS'
    'CWNyZWF0ZWRBdA==');

@$core.Deprecated('Use timestampDescriptor instead')
const Timestamp$json = {
  '1': 'Timestamp',
  '2': [
    {'1': 'timestamp', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `Timestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampDescriptor = $convert.base64Decode(
    'CglUaW1lc3RhbXASOAoJdGltZXN0YW1wGAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIJdGltZXN0YW1w');

@$core.Deprecated('Use nftTokenDescriptor instead')
const NftToken$json = {
  '1': 'NftToken',
  '2': [
    {'1': 'name', '3': 9, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image_url', '3': 1, '4': 1, '5': 9, '10': 'imageUrl'},
    {'1': 'token_id', '3': 2, '4': 1, '5': 3, '10': 'tokenId'},
    {'1': 'amt', '3': 3, '4': 1, '5': 3, '10': 'amt'},
    {'1': 'item_price', '3': 4, '4': 1, '5': 1, '10': 'itemPrice'},
    {'1': 'des', '3': 5, '4': 1, '5': 9, '10': 'des'},
    {'1': 'id', '3': 6, '4': 1, '5': 3, '10': 'id'},
    {'1': 'dynamic_index', '3': 7, '4': 1, '5': 3, '10': 'dynamicIndex'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 11, '6': '.user.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `NftToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftTokenDescriptor = $convert.base64Decode(
    'CghOZnRUb2tlbhISCgRuYW1lGAkgASgJUgRuYW1lEhsKCWltYWdlX3VybBgBIAEoCVIIaW1hZ2'
    'VVcmwSGQoIdG9rZW5faWQYAiABKANSB3Rva2VuSWQSEAoDYW10GAMgASgDUgNhbXQSHQoKaXRl'
    'bV9wcmljZRgEIAEoAVIJaXRlbVByaWNlEhAKA2RlcxgFIAEoCVIDZGVzEg4KAmlkGAYgASgDUg'
    'JpZBIjCg1keW5hbWljX2luZGV4GAcgASgDUgxkeW5hbWljSW5kZXgSLgoKY3JlYXRlZF9hdBgI'
    'IAEoCzIPLnVzZXIuVGltZXN0YW1wUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use nftTokenLogDescriptor instead')
const NftTokenLog$json = {
  '1': 'NftTokenLog',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'tx_id', '3': 2, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'from', '3': 3, '4': 1, '5': 9, '10': 'from'},
    {'1': 'to', '3': 4, '4': 1, '5': 9, '10': 'to'},
    {'1': 'token_id', '3': 5, '4': 1, '5': 3, '10': 'tokenId'},
    {'1': 'value', '3': 6, '4': 1, '5': 3, '10': 'value'},
    {'1': 'usd_amt', '3': 7, '4': 1, '5': 1, '10': 'usdAmt'},
    {'1': 'NftToken', '3': 8, '4': 3, '5': 11, '6': '.user.NftToken', '10': 'NftToken'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 3, '10': 'createdAt'},
  ],
};

/// Descriptor for `NftTokenLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nftTokenLogDescriptor = $convert.base64Decode(
    'CgtOZnRUb2tlbkxvZxIOCgJpZBgBIAEoA1ICaWQSEwoFdHhfaWQYAiABKAlSBHR4SWQSEgoEZn'
    'JvbRgDIAEoCVIEZnJvbRIOCgJ0bxgEIAEoCVICdG8SGQoIdG9rZW5faWQYBSABKANSB3Rva2Vu'
    'SWQSFAoFdmFsdWUYBiABKANSBXZhbHVlEhcKB3VzZF9hbXQYByABKAFSBnVzZEFtdBIqCghOZn'
    'RUb2tlbhgIIAMoCzIOLnVzZXIuTmZ0VG9rZW5SCE5mdFRva2VuEh0KCmNyZWF0ZWRfYXQYCSAB'
    'KANSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use getAgentConfigRequestDescriptor instead')
const GetAgentConfigRequest$json = {
  '1': 'GetAgentConfigRequest',
  '2': [
    {'1': 'agent_id', '3': 1, '4': 1, '5': 3, '10': 'agentId'},
  ],
};

/// Descriptor for `GetAgentConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentConfigRequestDescriptor = $convert.base64Decode(
    'ChVHZXRBZ2VudENvbmZpZ1JlcXVlc3QSGQoIYWdlbnRfaWQYASABKANSB2FnZW50SWQ=');

@$core.Deprecated('Use agentConfigDescriptor instead')
const AgentConfig$json = {
  '1': 'AgentConfig',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'reward_transak', '3': 2, '4': 1, '5': 1, '10': 'rewardTransak'},
    {'1': 'reward_sell_coin', '3': 3, '4': 1, '5': 1, '10': 'rewardSellCoin'},
    {'1': 'reward_buy_coin', '3': 4, '4': 1, '5': 1, '10': 'rewardBuyCoin'},
    {'1': 'reward_withdraw_to_vcard', '3': 5, '4': 1, '5': 1, '10': 'rewardWithdrawToVcard'},
    {'1': 'reward_withdraw_to_pcard', '3': 6, '4': 1, '5': 1, '10': 'rewardWithdrawToPcard'},
    {'1': 'reward_vcard_create', '3': 7, '4': 1, '5': 1, '10': 'rewardVcardCreate'},
    {'1': 'reward_pcard_create', '3': 8, '4': 1, '5': 1, '10': 'rewardPcardCreate'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 10, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

/// Descriptor for `AgentConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentConfigDescriptor = $convert.base64Decode(
    'CgtBZ2VudENvbmZpZxIOCgJpZBgBIAEoA1ICaWQSJQoOcmV3YXJkX3RyYW5zYWsYAiABKAFSDX'
    'Jld2FyZFRyYW5zYWsSKAoQcmV3YXJkX3NlbGxfY29pbhgDIAEoAVIOcmV3YXJkU2VsbENvaW4S'
    'JgoPcmV3YXJkX2J1eV9jb2luGAQgASgBUg1yZXdhcmRCdXlDb2luEjcKGHJld2FyZF93aXRoZH'
    'Jhd190b192Y2FyZBgFIAEoAVIVcmV3YXJkV2l0aGRyYXdUb1ZjYXJkEjcKGHJld2FyZF93aXRo'
    'ZHJhd190b19wY2FyZBgGIAEoAVIVcmV3YXJkV2l0aGRyYXdUb1BjYXJkEi4KE3Jld2FyZF92Y2'
    'FyZF9jcmVhdGUYByABKAFSEXJld2FyZFZjYXJkQ3JlYXRlEi4KE3Jld2FyZF9wY2FyZF9jcmVh'
    'dGUYCCABKAFSEXJld2FyZFBjYXJkQ3JlYXRlEh0KCmNyZWF0ZWRfYXQYCSABKANSCWNyZWF0ZW'
    'RBdBIdCgp1cGRhdGVkX2F0GAogASgDUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use appConfigDescriptor instead')
const AppConfig$json = {
  '1': 'AppConfig',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'create_card_fee', '3': 3, '4': 1, '5': 1, '10': 'createCardFee'},
    {'1': 'create_pcard_fee', '3': 4, '4': 1, '5': 1, '10': 'createPcardFee'},
    {'1': 'gas_fee_eth', '3': 15, '4': 1, '5': 1, '10': 'gasFeeEth'},
    {'1': 'gas_fee_matic', '3': 16, '4': 1, '5': 1, '10': 'gasFeeMatic'},
    {'1': 'gas_fee_trx', '3': 19, '4': 1, '5': 1, '10': 'gasFeeTrx'},
    {'1': 'created_at', '3': 9, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 10, '4': 1, '5': 3, '10': 'updatedAt'},
    {'1': 'server_address', '3': 11, '4': 1, '5': 9, '10': 'serverAddress'},
    {'1': 'server_taddress', '3': 17, '4': 1, '5': 9, '10': 'serverTaddress'},
    {'1': 'nft_address', '3': 12, '4': 1, '5': 9, '10': 'nftAddress'},
    {'1': 'profit_sell_coin', '3': 13, '4': 1, '5': 1, '10': 'profitSellCoin'},
    {'1': 'profit_buy_coin', '3': 14, '4': 1, '5': 1, '10': 'profitBuyCoin'},
    {'1': 'profit_withdraw_to_vcard', '3': 5, '4': 1, '5': 1, '10': 'profitWithdrawToVcard'},
    {'1': 'profit_withdraw_to_pcard', '3': 6, '4': 1, '5': 1, '10': 'profitWithdrawToPcard'},
    {'1': 'profit_vcard_create', '3': 7, '4': 1, '5': 1, '10': 'profitVcardCreate'},
    {'1': 'profit_pcard_create', '3': 8, '4': 1, '5': 1, '10': 'profitPcardCreate'},
    {'1': 'system_agent_id', '3': 18, '4': 1, '5': 3, '10': 'systemAgentId'},
  ],
};

/// Descriptor for `AppConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appConfigDescriptor = $convert.base64Decode(
    'CglBcHBDb25maWcSDgoCaWQYASABKANSAmlkEiYKD2NyZWF0ZV9jYXJkX2ZlZRgDIAEoAVINY3'
    'JlYXRlQ2FyZEZlZRIoChBjcmVhdGVfcGNhcmRfZmVlGAQgASgBUg5jcmVhdGVQY2FyZEZlZRIe'
    'CgtnYXNfZmVlX2V0aBgPIAEoAVIJZ2FzRmVlRXRoEiIKDWdhc19mZWVfbWF0aWMYECABKAFSC2'
    'dhc0ZlZU1hdGljEh4KC2dhc19mZWVfdHJ4GBMgASgBUglnYXNGZWVUcngSHQoKY3JlYXRlZF9h'
    'dBgJIAEoA1IJY3JlYXRlZEF0Eh0KCnVwZGF0ZWRfYXQYCiABKANSCXVwZGF0ZWRBdBIlCg5zZX'
    'J2ZXJfYWRkcmVzcxgLIAEoCVINc2VydmVyQWRkcmVzcxInCg9zZXJ2ZXJfdGFkZHJlc3MYESAB'
    'KAlSDnNlcnZlclRhZGRyZXNzEh8KC25mdF9hZGRyZXNzGAwgASgJUgpuZnRBZGRyZXNzEigKEH'
    'Byb2ZpdF9zZWxsX2NvaW4YDSABKAFSDnByb2ZpdFNlbGxDb2luEiYKD3Byb2ZpdF9idXlfY29p'
    'bhgOIAEoAVINcHJvZml0QnV5Q29pbhI3Chhwcm9maXRfd2l0aGRyYXdfdG9fdmNhcmQYBSABKA'
    'FSFXByb2ZpdFdpdGhkcmF3VG9WY2FyZBI3Chhwcm9maXRfd2l0aGRyYXdfdG9fcGNhcmQYBiAB'
    'KAFSFXByb2ZpdFdpdGhkcmF3VG9QY2FyZBIuChNwcm9maXRfdmNhcmRfY3JlYXRlGAcgASgBUh'
    'Fwcm9maXRWY2FyZENyZWF0ZRIuChNwcm9maXRfcGNhcmRfY3JlYXRlGAggASgBUhFwcm9maXRQ'
    'Y2FyZENyZWF0ZRImCg9zeXN0ZW1fYWdlbnRfaWQYEiABKANSDXN5c3RlbUFnZW50SWQ=');

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
    {'1': 'network', '3': 10, '4': 1, '5': 14, '6': '.user.NetWork', '10': 'network'},
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
    {'1': 'CreateCard', '2': 4},
    {'1': 'TokenTransfer', '2': 5},
    {'1': 'Reward', '2': 6},
    {'1': 'TelaRecharge', '2': 7},
  ],
};

/// Descriptor for `AccountHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountHistoryDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50SGlzdG9yeRIOCgJpZBgBIAEoA1ICaWQSHQoKYWNjb3VudF9pZBgIIAEoA1IJYW'
    'Njb3VudElkEhAKA2FtdBgCIAEoAVIDYW10EhsKCXNvdXJjZV9pZBgDIAEoCVIIc291cmNlSWQS'
    'GgoIY29uZmlybXMYCSABKANSCGNvbmZpcm1zEkAKC3NvdXJjZV90eXBlGAQgASgOMh8udXNlci'
    '5BY2NvdW50SGlzdG9yeS5Tb3VyY2VUeXBlUgpzb3VyY2VUeXBlEh0KCmNyZWF0ZWRfYXQYBSAB'
    'KARSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAYgASgEUgl1cGRhdGVkQXQSNgoGU3ltYm9sGA'
    'cgASgOMh4udXNlci5UcmFja2VkVHguQ29udHJhY3RTeW1ib2xSBlN5bWJvbBInCgduZXR3b3Jr'
    'GAogASgOMg0udXNlci5OZXRXb3JrUgduZXR3b3JrIn8KClNvdXJjZVR5cGUSCgoGVW5Lbm93EA'
    'ASDAoIUmVjaGFyZ2UQARIMCghXaXRoZHJhdxACEggKBFN3YXAQAxIOCgpDcmVhdGVDYXJkEAQS'
    'EQoNVG9rZW5UcmFuc2ZlchAFEgoKBlJld2FyZBAGEhAKDFRlbGFSZWNoYXJnZRAH');

