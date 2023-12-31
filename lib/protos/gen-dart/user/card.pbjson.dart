//
//  Generated code. Do not modify.
//  source: user/card.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use buyNftForPayRequestDescriptor instead')
const BuyNftForPayRequest$json = {
  '1': 'BuyNftForPayRequest',
  '2': [
    {'1': 'mail', '3': 1, '4': 1, '5': 9, '10': 'mail'},
    {'1': 'trade_no', '3': 2, '4': 1, '5': 9, '10': 'tradeNo'},
    {'1': 'bankcard_no', '3': 3, '4': 1, '5': 9, '10': 'bankcardNo'},
    {'1': 'amt', '3': 4, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'order_time', '3': 6, '4': 1, '5': 3, '10': 'orderTime'},
    {'1': 'payment_time', '3': 7, '4': 1, '5': 3, '10': 'paymentTime'},
    {'1': 'order_id', '3': 8, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'mer_no', '3': 9, '4': 1, '5': 9, '10': 'merNo'},
  ],
};

/// Descriptor for `BuyNftForPayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyNftForPayRequestDescriptor = $convert.base64Decode(
    'ChNCdXlOZnRGb3JQYXlSZXF1ZXN0EhIKBG1haWwYASABKAlSBG1haWwSGQoIdHJhZGVfbm8YAi'
    'ABKAlSB3RyYWRlTm8SHwoLYmFua2NhcmRfbm8YAyABKAlSCmJhbmtjYXJkTm8SEAoDYW10GAQg'
    'ASgBUgNhbXQSGgoIY3VycmVuY3kYBSABKAlSCGN1cnJlbmN5Eh0KCm9yZGVyX3RpbWUYBiABKA'
    'NSCW9yZGVyVGltZRIhCgxwYXltZW50X3RpbWUYByABKANSC3BheW1lbnRUaW1lEhkKCG9yZGVy'
    'X2lkGAggASgJUgdvcmRlcklkEhUKBm1lcl9ubxgJIAEoCVIFbWVyTm8=');

@$core.Deprecated('Use buyNftForPayResponseDescriptor instead')
const BuyNftForPayResponse$json = {
  '1': 'BuyNftForPayResponse',
  '2': [
    {'1': 'orderid', '3': 1, '4': 1, '5': 9, '10': 'orderid'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `BuyNftForPayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyNftForPayResponseDescriptor = $convert.base64Decode(
    'ChRCdXlOZnRGb3JQYXlSZXNwb25zZRIYCgdvcmRlcmlkGAEgASgJUgdvcmRlcmlkEhcKB3VzZX'
    'JfaWQYAiABKANSBnVzZXJJZA==');

@$core.Deprecated('Use cardInfoDescriptor instead')
const CardInfo$json = {
  '1': 'CardInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'card_no', '3': 2, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'symbol', '3': 3, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'symbol'},
    {'1': 'expiry_date', '3': 9, '4': 1, '5': 9, '10': 'expiryDate'},
    {'1': 'cvv', '3': 10, '4': 1, '5': 9, '10': 'cvv'},
    {'1': 'open_id', '3': 11, '4': 1, '5': 9, '10': 'openId'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'balance', '3': 5, '4': 1, '5': 1, '10': 'balance'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 4, '10': 'updatedAt'},
  ],
};

/// Descriptor for `CardInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardInfoDescriptor = $convert.base64Decode(
    'CghDYXJkSW5mbxIOCgJpZBgBIAEoA1ICaWQSFwoHY2FyZF9ubxgCIAEoCVIGY2FyZE5vEioKBn'
    'N5bWJvbBgDIAEoDjISLnVzZXIuQ3VycmVuY3lDb2RlUgZzeW1ib2wSHwoLZXhwaXJ5X2RhdGUY'
    'CSABKAlSCmV4cGlyeURhdGUSEAoDY3Z2GAogASgJUgNjdnYSFwoHb3Blbl9pZBgLIAEoCVIGb3'
    'BlbklkEhcKB3VzZXJfaWQYBCABKANSBnVzZXJJZBIYCgdiYWxhbmNlGAUgASgBUgdiYWxhbmNl'
    'Eh0KCmNyZWF0ZWRfYXQYBiABKARSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAcgASgEUgl1cG'
    'RhdGVkQXQ=');

@$core.Deprecated('Use applyCardRequestDescriptor instead')
const ApplyCardRequest$json = {
  '1': 'ApplyCardRequest',
  '2': [
    {'1': 'currency', '3': 2, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'currency'},
  ],
};

/// Descriptor for `ApplyCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyCardRequestDescriptor = $convert.base64Decode(
    'ChBBcHBseUNhcmRSZXF1ZXN0Ei4KCGN1cnJlbmN5GAIgASgOMhIudXNlci5DdXJyZW5jeUNvZG'
    'VSCGN1cnJlbmN5');

@$core.Deprecated('Use applyCardResponseDescriptor instead')
const ApplyCardResponse$json = {
  '1': 'ApplyCardResponse',
};

/// Descriptor for `ApplyCardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyCardResponseDescriptor = $convert.base64Decode(
    'ChFBcHBseUNhcmRSZXNwb25zZQ==');

@$core.Deprecated('Use cardListRequestDescriptor instead')
const CardListRequest$json = {
  '1': 'CardListRequest',
};

/// Descriptor for `CardListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardListRequestDescriptor = $convert.base64Decode(
    'Cg9DYXJkTGlzdFJlcXVlc3Q=');

@$core.Deprecated('Use cardListResponseDescriptor instead')
const CardListResponse$json = {
  '1': 'CardListResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.CardInfo', '10': 'items'},
  ],
};

/// Descriptor for `CardListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardListResponseDescriptor = $convert.base64Decode(
    'ChBDYXJkTGlzdFJlc3BvbnNlEiQKBWl0ZW1zGAEgAygLMg4udXNlci5DYXJkSW5mb1IFaXRlbX'
    'M=');

@$core.Deprecated('Use cardExchangeInfoListRequestDescriptor instead')
const CardExchangeInfoListRequest$json = {
  '1': 'CardExchangeInfoListRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'start', '3': 2, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
  ],
};

/// Descriptor for `CardExchangeInfoListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardExchangeInfoListRequestDescriptor = $convert.base64Decode(
    'ChtDYXJkRXhjaGFuZ2VJbmZvTGlzdFJlcXVlc3QSFgoGY2FyZE5vGAEgASgJUgZjYXJkTm8SFA'
    'oFc3RhcnQYAiABKANSBXN0YXJ0EhQKBWxpbWl0GAMgASgDUgVsaW1pdA==');

@$core.Deprecated('Use cardExchangeInfoListResponseDescriptor instead')
const CardExchangeInfoListResponse$json = {
  '1': 'CardExchangeInfoListResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.CardExchangeInfo', '10': 'items'},
  ],
};

/// Descriptor for `CardExchangeInfoListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardExchangeInfoListResponseDescriptor = $convert.base64Decode(
    'ChxDYXJkRXhjaGFuZ2VJbmZvTGlzdFJlc3BvbnNlEiwKBWl0ZW1zGAEgAygLMhYudXNlci5DYX'
    'JkRXhjaGFuZ2VJbmZvUgVpdGVtcw==');

@$core.Deprecated('Use cardExchangeInfoWithNftListRequestDescriptor instead')
const CardExchangeInfoWithNftListRequest$json = {
  '1': 'CardExchangeInfoWithNftListRequest',
  '2': [
    {'1': 'start', '3': 2, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
  ],
};

/// Descriptor for `CardExchangeInfoWithNftListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardExchangeInfoWithNftListRequestDescriptor = $convert.base64Decode(
    'CiJDYXJkRXhjaGFuZ2VJbmZvV2l0aE5mdExpc3RSZXF1ZXN0EhQKBXN0YXJ0GAIgASgDUgVzdG'
    'FydBIUCgVsaW1pdBgDIAEoA1IFbGltaXQ=');

@$core.Deprecated('Use cardExchangeInfoWithNftListResponseDescriptor instead')
const CardExchangeInfoWithNftListResponse$json = {
  '1': 'CardExchangeInfoWithNftListResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.CardExchangeInfo', '10': 'items'},
    {'1': 'nfts', '3': 2, '4': 3, '5': 11, '6': '.user.NftTokenEvent', '10': 'nfts'},
  ],
};

/// Descriptor for `CardExchangeInfoWithNftListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardExchangeInfoWithNftListResponseDescriptor = $convert.base64Decode(
    'CiNDYXJkRXhjaGFuZ2VJbmZvV2l0aE5mdExpc3RSZXNwb25zZRIsCgVpdGVtcxgBIAMoCzIWLn'
    'VzZXIuQ2FyZEV4Y2hhbmdlSW5mb1IFaXRlbXMSJwoEbmZ0cxgCIAMoCzITLnVzZXIuTmZ0VG9r'
    'ZW5FdmVudFIEbmZ0cw==');

@$core.Deprecated('Use cardHistoryRequestDescriptor instead')
const CardHistoryRequest$json = {
  '1': 'CardHistoryRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'start', '3': 2, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'startDate', '3': 4, '4': 1, '5': 9, '10': 'startDate'},
    {'1': 'endDate', '3': 5, '4': 1, '5': 9, '10': 'endDate'},
  ],
};

/// Descriptor for `CardHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardHistoryRequestDescriptor = $convert.base64Decode(
    'ChJDYXJkSGlzdG9yeVJlcXVlc3QSFgoGY2FyZE5vGAEgASgJUgZjYXJkTm8SFAoFc3RhcnQYAi'
    'ABKANSBXN0YXJ0EhQKBWxpbWl0GAMgASgDUgVsaW1pdBIcCglzdGFydERhdGUYBCABKAlSCXN0'
    'YXJ0RGF0ZRIYCgdlbmREYXRlGAUgASgJUgdlbmREYXRl');

@$core.Deprecated('Use cardHistoryResponseDescriptor instead')
const CardHistoryResponse$json = {
  '1': 'CardHistoryResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.CardHistoryItem', '10': 'items'},
  ],
};

/// Descriptor for `CardHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardHistoryResponseDescriptor = $convert.base64Decode(
    'ChNDYXJkSGlzdG9yeVJlc3BvbnNlEisKBWl0ZW1zGAEgAygLMhUudXNlci5DYXJkSGlzdG9yeU'
    'l0ZW1SBWl0ZW1z');

@$core.Deprecated('Use cardHistoryItemDescriptor instead')
const CardHistoryItem$json = {
  '1': 'CardHistoryItem',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'state', '3': 2, '4': 1, '5': 9, '10': 'state'},
    {'1': 'orderNo', '3': 3, '4': 1, '5': 9, '10': 'orderNo'},
    {'1': 'tradeCurrency', '3': 4, '4': 1, '5': 9, '10': 'tradeCurrency'},
    {'1': 'tradeAmt', '3': 5, '4': 1, '5': 9, '10': 'tradeAmt'},
    {'1': 'authCurrency', '3': 6, '4': 1, '5': 9, '10': 'authCurrency'},
    {'1': 'authAmt', '3': 7, '4': 1, '5': 9, '10': 'authAmt'},
    {'1': 'tradeDes', '3': 8, '4': 1, '5': 9, '10': 'tradeDes'},
    {'1': 'authMerchant', '3': 9, '4': 1, '5': 9, '10': 'authMerchant'},
    {'1': 'authDate', '3': 10, '4': 1, '5': 9, '10': 'authDate'},
    {'1': 'settleAmt', '3': 11, '4': 1, '5': 9, '10': 'settleAmt'},
    {'1': 'settleCurrency', '3': 12, '4': 1, '5': 9, '10': 'settleCurrency'},
    {'1': 'settleDate', '3': 13, '4': 1, '5': 9, '10': 'settleDate'},
  ],
};

/// Descriptor for `CardHistoryItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardHistoryItemDescriptor = $convert.base64Decode(
    'Cg9DYXJkSGlzdG9yeUl0ZW0SFgoGY2FyZE5vGAEgASgJUgZjYXJkTm8SFAoFc3RhdGUYAiABKA'
    'lSBXN0YXRlEhgKB29yZGVyTm8YAyABKAlSB29yZGVyTm8SJAoNdHJhZGVDdXJyZW5jeRgEIAEo'
    'CVINdHJhZGVDdXJyZW5jeRIaCgh0cmFkZUFtdBgFIAEoCVIIdHJhZGVBbXQSIgoMYXV0aEN1cn'
    'JlbmN5GAYgASgJUgxhdXRoQ3VycmVuY3kSGAoHYXV0aEFtdBgHIAEoCVIHYXV0aEFtdBIaCgh0'
    'cmFkZURlcxgIIAEoCVIIdHJhZGVEZXMSIgoMYXV0aE1lcmNoYW50GAkgASgJUgxhdXRoTWVyY2'
    'hhbnQSGgoIYXV0aERhdGUYCiABKAlSCGF1dGhEYXRlEhwKCXNldHRsZUFtdBgLIAEoCVIJc2V0'
    'dGxlQW10EiYKDnNldHRsZUN1cnJlbmN5GAwgASgJUg5zZXR0bGVDdXJyZW5jeRIeCgpzZXR0bG'
    'VEYXRlGA0gASgJUgpzZXR0bGVEYXRl');

@$core.Deprecated('Use cardDetailRequestDescriptor instead')
const CardDetailRequest$json = {
  '1': 'CardDetailRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
  ],
};

/// Descriptor for `CardDetailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDetailRequestDescriptor = $convert.base64Decode(
    'ChFDYXJkRGV0YWlsUmVxdWVzdBIWCgZjYXJkTm8YASABKAlSBmNhcmRObw==');

@$core.Deprecated('Use cardDetailResponseDescriptor instead')
const CardDetailResponse$json = {
  '1': 'CardDetailResponse',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'expiryData', '3': 2, '4': 1, '5': 9, '10': 'expiryData'},
    {'1': 'cvv', '3': 3, '4': 1, '5': 9, '10': 'cvv'},
    {'1': 'state', '3': 4, '4': 1, '5': 9, '10': 'state'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'settleCurrency', '3': 6, '4': 1, '5': 9, '10': 'settleCurrency'},
    {'1': 'amount', '3': 7, '4': 1, '5': 9, '10': 'amount'},
  ],
};

/// Descriptor for `CardDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardDetailResponseDescriptor = $convert.base64Decode(
    'ChJDYXJkRGV0YWlsUmVzcG9uc2USFgoGY2FyZE5vGAEgASgJUgZjYXJkTm8SHgoKZXhwaXJ5RG'
    'F0YRgCIAEoCVIKZXhwaXJ5RGF0YRIQCgNjdnYYAyABKAlSA2N2dhIUCgVzdGF0ZRgEIAEoCVIF'
    'c3RhdGUSGgoIY3VycmVuY3kYBSABKAlSCGN1cnJlbmN5EiYKDnNldHRsZUN1cnJlbmN5GAYgAS'
    'gJUg5zZXR0bGVDdXJyZW5jeRIWCgZhbW91bnQYByABKAlSBmFtb3VudA==');

@$core.Deprecated('Use cardWithdrawRequestDescriptor instead')
const CardWithdrawRequest$json = {
  '1': 'CardWithdrawRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
  ],
};

/// Descriptor for `CardWithdrawRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardWithdrawRequestDescriptor = $convert.base64Decode(
    'ChNDYXJkV2l0aGRyYXdSZXF1ZXN0EhYKBmNhcmRObxgBIAEoCVIGY2FyZE5vEhAKA2FtdBgCIA'
    'EoAVIDYW10');

@$core.Deprecated('Use cardWithdrawResponseDescriptor instead')
const CardWithdrawResponse$json = {
  '1': 'CardWithdrawResponse',
};

/// Descriptor for `CardWithdrawResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardWithdrawResponseDescriptor = $convert.base64Decode(
    'ChRDYXJkV2l0aGRyYXdSZXNwb25zZQ==');

@$core.Deprecated('Use getWithdrawResAmtRequestDescriptor instead')
const GetWithdrawResAmtRequest$json = {
  '1': 'GetWithdrawResAmtRequest',
  '2': [
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
  ],
};

/// Descriptor for `GetWithdrawResAmtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWithdrawResAmtRequestDescriptor = $convert.base64Decode(
    'ChhHZXRXaXRoZHJhd1Jlc0FtdFJlcXVlc3QSEAoDYW10GAIgASgBUgNhbXQ=');

@$core.Deprecated('Use getWithdrawResAmtResponseDescriptor instead')
const GetWithdrawResAmtResponse$json = {
  '1': 'GetWithdrawResAmtResponse',
  '2': [
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'fee', '3': 1, '4': 1, '5': 1, '10': 'fee'},
  ],
};

/// Descriptor for `GetWithdrawResAmtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWithdrawResAmtResponseDescriptor = $convert.base64Decode(
    'ChlHZXRXaXRoZHJhd1Jlc0FtdFJlc3BvbnNlEhAKA2FtdBgCIAEoAVIDYW10EhAKA2ZlZRgBIA'
    'EoAVIDZmVl');

@$core.Deprecated('Use cardRechargeRequestDescriptor instead')
const CardRechargeRequest$json = {
  '1': 'CardRechargeRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'card_expire_month', '3': 2, '4': 1, '5': 9, '10': 'cardExpireMonth'},
    {'1': 'card_expire_year', '3': 3, '4': 1, '5': 9, '10': 'cardExpireYear'},
    {'1': 'card_security_code', '3': 4, '4': 1, '5': 9, '10': 'cardSecurityCode'},
    {'1': 'amt', '3': 5, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'chargeForNft', '3': 6, '4': 1, '5': 8, '10': 'chargeForNft'},
    {'1': 'chargeForCreateVirtualCard', '3': 11, '4': 1, '5': 8, '10': 'chargeForCreateVirtualCard'},
    {'1': 'chargeForCreatePhysicalCard', '3': 12, '4': 1, '5': 8, '10': 'chargeForCreatePhysicalCard'},
    {'1': 'token_ids', '3': 8, '4': 3, '5': 3, '10': 'tokenIds'},
    {'1': 'values', '3': 9, '4': 3, '5': 3, '10': 'values'},
    {'1': 'with_dynamic_nft', '3': 7, '4': 1, '5': 8, '10': 'withDynamicNft'},
  ],
};

/// Descriptor for `CardRechargeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRechargeRequestDescriptor = $convert.base64Decode(
    'ChNDYXJkUmVjaGFyZ2VSZXF1ZXN0EhYKBmNhcmRObxgBIAEoCVIGY2FyZE5vEioKEWNhcmRfZX'
    'hwaXJlX21vbnRoGAIgASgJUg9jYXJkRXhwaXJlTW9udGgSKAoQY2FyZF9leHBpcmVfeWVhchgD'
    'IAEoCVIOY2FyZEV4cGlyZVllYXISLAoSY2FyZF9zZWN1cml0eV9jb2RlGAQgASgJUhBjYXJkU2'
    'VjdXJpdHlDb2RlEhAKA2FtdBgFIAEoAVIDYW10EiIKDGNoYXJnZUZvck5mdBgGIAEoCFIMY2hh'
    'cmdlRm9yTmZ0Ej4KGmNoYXJnZUZvckNyZWF0ZVZpcnR1YWxDYXJkGAsgASgIUhpjaGFyZ2VGb3'
    'JDcmVhdGVWaXJ0dWFsQ2FyZBJAChtjaGFyZ2VGb3JDcmVhdGVQaHlzaWNhbENhcmQYDCABKAhS'
    'G2NoYXJnZUZvckNyZWF0ZVBoeXNpY2FsQ2FyZBIbCgl0b2tlbl9pZHMYCCADKANSCHRva2VuSW'
    'RzEhYKBnZhbHVlcxgJIAMoA1IGdmFsdWVzEigKEHdpdGhfZHluYW1pY19uZnQYByABKAhSDndp'
    'dGhEeW5hbWljTmZ0');

@$core.Deprecated('Use cardRechargeResponseDescriptor instead')
const CardRechargeResponse$json = {
  '1': 'CardRechargeResponse',
  '2': [
    {'1': 'nft_txid', '3': 1, '4': 1, '5': 9, '10': 'nftTxid'},
  ],
};

/// Descriptor for `CardRechargeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardRechargeResponseDescriptor = $convert.base64Decode(
    'ChRDYXJkUmVjaGFyZ2VSZXNwb25zZRIZCghuZnRfdHhpZBgBIAEoCVIHbmZ0VHhpZA==');

@$core.Deprecated('Use cardExchangeInfoDescriptor instead')
const CardExchangeInfo$json = {
  '1': 'CardExchangeInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_id', '3': 12, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'card_no', '3': 2, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'order_no', '3': 8, '4': 1, '5': 9, '10': 'orderNo'},
    {'1': 'trade_no', '3': 9, '4': 1, '5': 9, '10': 'tradeNo'},
    {'1': 'nft_txid', '3': 13, '4': 1, '5': 9, '10': 'nftTxid'},
    {'1': 'counter_party', '3': 3, '4': 1, '5': 9, '10': 'counterParty'},
    {'1': 'counter_party_no', '3': 4, '4': 1, '5': 9, '10': 'counterPartyNo'},
    {'1': 'amt', '3': 5, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'status', '3': 10, '4': 1, '5': 14, '6': '.user.CardExchangeInfo.Status', '10': 'status'},
    {'1': 'err_msg', '3': 11, '4': 1, '5': 9, '10': 'errMsg'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 4, '10': 'updatedAt'},
    {'1': 'yz_status', '3': 14, '4': 1, '5': 3, '10': 'yzStatus'},
  ],
  '4': [CardExchangeInfo_Status$json],
};

@$core.Deprecated('Use cardExchangeInfoDescriptor instead')
const CardExchangeInfo_Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'Unknow', '2': 0},
    {'1': 'success', '2': 1},
    {'1': 'fail', '2': 2},
    {'1': 'pay_ok', '2': 3},
  ],
};

/// Descriptor for `CardExchangeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardExchangeInfoDescriptor = $convert.base64Decode(
    'ChBDYXJkRXhjaGFuZ2VJbmZvEg4KAmlkGAEgASgDUgJpZBIXCgd1c2VyX2lkGAwgASgDUgZ1c2'
    'VySWQSFwoHY2FyZF9ubxgCIAEoCVIGY2FyZE5vEhkKCG9yZGVyX25vGAggASgJUgdvcmRlck5v'
    'EhkKCHRyYWRlX25vGAkgASgJUgd0cmFkZU5vEhkKCG5mdF90eGlkGA0gASgJUgduZnRUeGlkEi'
    'MKDWNvdW50ZXJfcGFydHkYAyABKAlSDGNvdW50ZXJQYXJ0eRIoChBjb3VudGVyX3BhcnR5X25v'
    'GAQgASgJUg5jb3VudGVyUGFydHlObxIQCgNhbXQYBSABKAFSA2FtdBI1CgZzdGF0dXMYCiABKA'
    '4yHS51c2VyLkNhcmRFeGNoYW5nZUluZm8uU3RhdHVzUgZzdGF0dXMSFwoHZXJyX21zZxgLIAEo'
    'CVIGZXJyTXNnEh0KCmNyZWF0ZWRfYXQYBiABKARSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GA'
    'cgASgEUgl1cGRhdGVkQXQSGwoJeXpfc3RhdHVzGA4gASgDUgh5elN0YXR1cyI3CgZTdGF0dXMS'
    'CgoGVW5rbm93EAASCwoHc3VjY2VzcxABEggKBGZhaWwQAhIKCgZwYXlfb2sQAw==');

