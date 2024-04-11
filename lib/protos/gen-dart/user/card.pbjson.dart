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
    {'1': 'real_card_no', '3': 13, '4': 1, '5': 9, '10': 'realCardNo'},
    {'1': 'cardLogId', '3': 14, '4': 1, '5': 9, '10': 'cardLogId'},
    {'1': 'symbol', '3': 3, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'symbol'},
    {'1': 'expiry_date', '3': 9, '4': 1, '5': 9, '10': 'expiryDate'},
    {'1': 'cvv', '3': 10, '4': 1, '5': 9, '10': 'cvv'},
    {'1': 'open_id', '3': 11, '4': 1, '5': 9, '10': 'openId'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'agent_id', '3': 15, '4': 1, '5': 3, '10': 'agentId'},
    {'1': 'user_email', '3': 16, '4': 1, '5': 9, '10': 'userEmail'},
    {'1': 'user_name', '3': 17, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'balance', '3': 5, '4': 1, '5': 1, '10': 'balance'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 4, '10': 'updatedAt'},
    {'1': 'is_vcard', '3': 8, '4': 1, '5': 8, '10': 'isVcard'},
    {'1': 'pcard_status', '3': 12, '4': 1, '5': 3, '10': 'pcardStatus'},
  ],
};

/// Descriptor for `CardInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardInfoDescriptor = $convert.base64Decode(
    'CghDYXJkSW5mbxIOCgJpZBgBIAEoA1ICaWQSFwoHY2FyZF9ubxgCIAEoCVIGY2FyZE5vEiAKDH'
    'JlYWxfY2FyZF9ubxgNIAEoCVIKcmVhbENhcmRObxIcCgljYXJkTG9nSWQYDiABKAlSCWNhcmRM'
    'b2dJZBIqCgZzeW1ib2wYAyABKA4yEi51c2VyLkN1cnJlbmN5Q29kZVIGc3ltYm9sEh8KC2V4cG'
    'lyeV9kYXRlGAkgASgJUgpleHBpcnlEYXRlEhAKA2N2dhgKIAEoCVIDY3Z2EhcKB29wZW5faWQY'
    'CyABKAlSBm9wZW5JZBIXCgd1c2VyX2lkGAQgASgDUgZ1c2VySWQSGQoIYWdlbnRfaWQYDyABKA'
    'NSB2FnZW50SWQSHQoKdXNlcl9lbWFpbBgQIAEoCVIJdXNlckVtYWlsEhsKCXVzZXJfbmFtZRgR'
    'IAEoCVIIdXNlck5hbWUSGAoHYmFsYW5jZRgFIAEoAVIHYmFsYW5jZRIdCgpjcmVhdGVkX2F0GA'
    'YgASgEUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgHIAEoBFIJdXBkYXRlZEF0EhkKCGlzX3Zj'
    'YXJkGAggASgIUgdpc1ZjYXJkEiEKDHBjYXJkX3N0YXR1cxgMIAEoA1ILcGNhcmRTdGF0dXM=');

@$core.Deprecated('Use listPcardApplyInfoRequestDescriptor instead')
const ListPcardApplyInfoRequest$json = {
  '1': 'ListPcardApplyInfoRequest',
  '2': [
    {'1': 'order_by', '3': 1, '4': 1, '5': 9, '10': 'orderBy'},
  ],
};

/// Descriptor for `ListPcardApplyInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPcardApplyInfoRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0UGNhcmRBcHBseUluZm9SZXF1ZXN0EhkKCG9yZGVyX2J5GAEgASgJUgdvcmRlckJ5');

@$core.Deprecated('Use listPcardApplyInfoResponseDescriptor instead')
const ListPcardApplyInfoResponse$json = {
  '1': 'ListPcardApplyInfoResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.PcardApplyInfo', '10': 'items'},
  ],
};

/// Descriptor for `ListPcardApplyInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPcardApplyInfoResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0UGNhcmRBcHBseUluZm9SZXNwb25zZRIqCgVpdGVtcxgBIAMoCzIULnVzZXIuUGNhcm'
    'RBcHBseUluZm9SBWl0ZW1z');

@$core.Deprecated('Use userUploadRequestDescriptor instead')
const UserUploadRequest$json = {
  '1': 'UserUploadRequest',
  '2': [
    {'1': 'file_name', '3': 1, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'file_bytes', '3': 2, '4': 1, '5': 12, '10': 'fileBytes'},
  ],
};

/// Descriptor for `UserUploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUploadRequestDescriptor = $convert.base64Decode(
    'ChFVc2VyVXBsb2FkUmVxdWVzdBIbCglmaWxlX25hbWUYASABKAlSCGZpbGVOYW1lEh0KCmZpbG'
    'VfYnl0ZXMYAiABKAxSCWZpbGVCeXRlcw==');

@$core.Deprecated('Use userUploadResponseDescriptor instead')
const UserUploadResponse$json = {
  '1': 'UserUploadResponse',
  '2': [
    {'1': 'file_url', '3': 3, '4': 1, '5': 9, '10': 'fileUrl'},
  ],
};

/// Descriptor for `UserUploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userUploadResponseDescriptor = $convert.base64Decode(
    'ChJVc2VyVXBsb2FkUmVzcG9uc2USGQoIZmlsZV91cmwYAyABKAlSB2ZpbGVVcmw=');

@$core.Deprecated('Use getLastKYC2InfoRequestDescriptor instead')
const GetLastKYC2InfoRequest$json = {
  '1': 'GetLastKYC2InfoRequest',
};

/// Descriptor for `GetLastKYC2InfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLastKYC2InfoRequestDescriptor = $convert.base64Decode(
    'ChZHZXRMYXN0S1lDMkluZm9SZXF1ZXN0');

@$core.Deprecated('Use kyc2InfoDescriptor instead')
const Kyc2Info$json = {
  '1': 'Kyc2Info',
  '2': [
    {'1': 'id', '3': 27, '4': 1, '5': 3, '10': 'id'},
    {'1': 'idType', '3': 1, '4': 1, '5': 9, '10': 'idType'},
    {'1': 'idNo', '3': 2, '4': 1, '5': 9, '10': 'idNo'},
    {'1': 'idBackFile', '3': 3, '4': 1, '5': 9, '10': 'idBackFile'},
    {'1': 'idFrontFile', '3': 4, '4': 1, '5': 9, '10': 'idFrontFile'},
    {'1': 'firstName', '3': 5, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 6, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'dob', '3': 7, '4': 1, '5': 9, '10': 'dob'},
    {'1': 'gender', '3': 8, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'addressType', '3': 9, '4': 1, '5': 9, '10': 'addressType'},
    {'1': 'marState', '3': 10, '4': 1, '5': 9, '10': 'marState'},
    {'1': 'areaCode', '3': 11, '4': 1, '5': 9, '10': 'areaCode'},
    {'1': 'cardPhone', '3': 12, '4': 1, '5': 9, '10': 'cardPhone'},
    {'1': 'postalCode', '3': 15, '4': 1, '5': 9, '10': 'postalCode'},
    {'1': 'city', '3': 16, '4': 1, '5': 9, '10': 'city'},
    {'1': 'address', '3': 17, '4': 1, '5': 9, '10': 'address'},
    {'1': 'status', '3': 23, '4': 1, '5': 3, '10': 'status'},
    {'1': 'error_msg', '3': 24, '4': 1, '5': 9, '10': 'errorMsg'},
    {'1': 'card_no', '3': 25, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'open_id', '3': 29, '4': 1, '5': 9, '10': 'openId'},
    {'1': 'created_at', '3': 26, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'user_id', '3': 28, '4': 1, '5': 3, '10': 'userId'},
  ],
};

/// Descriptor for `Kyc2Info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kyc2InfoDescriptor = $convert.base64Decode(
    'CghLeWMySW5mbxIOCgJpZBgbIAEoA1ICaWQSFgoGaWRUeXBlGAEgASgJUgZpZFR5cGUSEgoEaW'
    'RObxgCIAEoCVIEaWRObxIeCgppZEJhY2tGaWxlGAMgASgJUgppZEJhY2tGaWxlEiAKC2lkRnJv'
    'bnRGaWxlGAQgASgJUgtpZEZyb250RmlsZRIcCglmaXJzdE5hbWUYBSABKAlSCWZpcnN0TmFtZR'
    'IaCghsYXN0TmFtZRgGIAEoCVIIbGFzdE5hbWUSEAoDZG9iGAcgASgJUgNkb2ISFgoGZ2VuZGVy'
    'GAggASgJUgZnZW5kZXISIAoLYWRkcmVzc1R5cGUYCSABKAlSC2FkZHJlc3NUeXBlEhoKCG1hcl'
    'N0YXRlGAogASgJUghtYXJTdGF0ZRIaCghhcmVhQ29kZRgLIAEoCVIIYXJlYUNvZGUSHAoJY2Fy'
    'ZFBob25lGAwgASgJUgljYXJkUGhvbmUSHgoKcG9zdGFsQ29kZRgPIAEoCVIKcG9zdGFsQ29kZR'
    'ISCgRjaXR5GBAgASgJUgRjaXR5EhgKB2FkZHJlc3MYESABKAlSB2FkZHJlc3MSFgoGc3RhdHVz'
    'GBcgASgDUgZzdGF0dXMSGwoJZXJyb3JfbXNnGBggASgJUghlcnJvck1zZxIXCgdjYXJkX25vGB'
    'kgASgJUgZjYXJkTm8SFwoHb3Blbl9pZBgdIAEoCVIGb3BlbklkEh0KCmNyZWF0ZWRfYXQYGiAB'
    'KANSCWNyZWF0ZWRBdBIXCgd1c2VyX2lkGBwgASgDUgZ1c2VySWQ=');

@$core.Deprecated('Use getPcardApplyInfoRequestDescriptor instead')
const GetPcardApplyInfoRequest$json = {
  '1': 'GetPcardApplyInfoRequest',
};

/// Descriptor for `GetPcardApplyInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPcardApplyInfoRequestDescriptor = $convert.base64Decode(
    'ChhHZXRQY2FyZEFwcGx5SW5mb1JlcXVlc3Q=');

@$core.Deprecated('Use pcardApplyInfoDescriptor instead')
const PcardApplyInfo$json = {
  '1': 'PcardApplyInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'id_type', '3': 2, '4': 1, '5': 5, '10': 'idType'},
    {'1': 'id_image1', '3': 20, '4': 1, '5': 9, '10': 'idImage1'},
    {'1': 'id_image2', '3': 21, '4': 1, '5': 9, '10': 'idImage2'},
    {'1': 'card_no', '3': 24, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'status', '3': 25, '4': 1, '5': 3, '10': 'status'},
    {'1': 'status_msg', '3': 26, '4': 1, '5': 9, '10': 'statusMsg'},
    {'1': 'id_name', '3': 4, '4': 1, '5': 9, '10': 'idName'},
    {'1': 'id_no', '3': 3, '4': 1, '5': 9, '10': 'idNo'},
    {'1': 'gender', '3': 14, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'bod', '3': 5, '4': 1, '5': 9, '10': 'bod'},
    {'1': 'first_name', '3': 6, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 7, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'marital_status', '3': 19, '4': 1, '5': 9, '10': 'maritalStatus'},
    {'1': 'shipping_region', '3': 8, '4': 1, '5': 9, '10': 'shippingRegion'},
    {'1': 'shipping_address_type', '3': 9, '4': 1, '5': 9, '10': 'shippingAddressType'},
    {'1': 'shipping_province', '3': 10, '4': 1, '5': 9, '10': 'shippingProvince'},
    {'1': 'shipping_city', '3': 11, '4': 1, '5': 9, '10': 'shippingCity'},
    {'1': 'postcode', '3': 12, '4': 1, '5': 9, '10': 'postcode'},
    {'1': 'shipping_address', '3': 13, '4': 1, '5': 9, '10': 'shippingAddress'},
    {'1': 'mobile', '3': 15, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'foreign_city', '3': 17, '4': 1, '5': 9, '10': 'foreignCity'},
    {'1': 'foreign_postcode', '3': 18, '4': 1, '5': 9, '10': 'foreignPostcode'},
    {'1': 'foreign_address', '3': 16, '4': 1, '5': 9, '10': 'foreignAddress'},
    {'1': 'created_at', '3': 22, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 23, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
};

/// Descriptor for `PcardApplyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pcardApplyInfoDescriptor = $convert.base64Decode(
    'Cg5QY2FyZEFwcGx5SW5mbxIOCgJpZBgBIAEoA1ICaWQSFwoHaWRfdHlwZRgCIAEoBVIGaWRUeX'
    'BlEhsKCWlkX2ltYWdlMRgUIAEoCVIIaWRJbWFnZTESGwoJaWRfaW1hZ2UyGBUgASgJUghpZElt'
    'YWdlMhIXCgdjYXJkX25vGBggASgJUgZjYXJkTm8SFgoGc3RhdHVzGBkgASgDUgZzdGF0dXMSHQ'
    'oKc3RhdHVzX21zZxgaIAEoCVIJc3RhdHVzTXNnEhcKB2lkX25hbWUYBCABKAlSBmlkTmFtZRIT'
    'CgVpZF9ubxgDIAEoCVIEaWRObxIWCgZnZW5kZXIYDiABKAlSBmdlbmRlchIQCgNib2QYBSABKA'
    'lSA2JvZBIdCgpmaXJzdF9uYW1lGAYgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAcgASgJ'
    'UghsYXN0TmFtZRIlCg5tYXJpdGFsX3N0YXR1cxgTIAEoCVINbWFyaXRhbFN0YXR1cxInCg9zaG'
    'lwcGluZ19yZWdpb24YCCABKAlSDnNoaXBwaW5nUmVnaW9uEjIKFXNoaXBwaW5nX2FkZHJlc3Nf'
    'dHlwZRgJIAEoCVITc2hpcHBpbmdBZGRyZXNzVHlwZRIrChFzaGlwcGluZ19wcm92aW5jZRgKIA'
    'EoCVIQc2hpcHBpbmdQcm92aW5jZRIjCg1zaGlwcGluZ19jaXR5GAsgASgJUgxzaGlwcGluZ0Np'
    'dHkSGgoIcG9zdGNvZGUYDCABKAlSCHBvc3Rjb2RlEikKEHNoaXBwaW5nX2FkZHJlc3MYDSABKA'
    'lSD3NoaXBwaW5nQWRkcmVzcxIWCgZtb2JpbGUYDyABKAlSBm1vYmlsZRIhCgxmb3JlaWduX2Np'
    'dHkYESABKAlSC2ZvcmVpZ25DaXR5EikKEGZvcmVpZ25fcG9zdGNvZGUYEiABKAlSD2ZvcmVpZ2'
    '5Qb3N0Y29kZRInCg9mb3JlaWduX2FkZHJlc3MYECABKAlSDmZvcmVpZ25BZGRyZXNzEh0KCmNy'
    'ZWF0ZWRfYXQYFiABKANSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GBcgASgDUgl1cGRhdGVkQX'
    'Q=');

@$core.Deprecated('Use applyCardRequestDescriptor instead')
const ApplyCardRequest$json = {
  '1': 'ApplyCardRequest',
  '2': [
    {'1': 'currency', '3': 2, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'currency'},
    {'1': 'isRealCard', '3': 3, '4': 1, '5': 8, '10': 'isRealCard'},
  ],
};

/// Descriptor for `ApplyCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyCardRequestDescriptor = $convert.base64Decode(
    'ChBBcHBseUNhcmRSZXF1ZXN0Ei4KCGN1cnJlbmN5GAIgASgOMhIudXNlci5DdXJyZW5jeUNvZG'
    'VSCGN1cnJlbmN5Eh4KCmlzUmVhbENhcmQYAyABKAhSCmlzUmVhbENhcmQ=');

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
  '2': [
    {'1': 'without_balance', '3': 1, '4': 1, '5': 8, '10': 'withoutBalance'},
    {'1': 'is_agent_card', '3': 2, '4': 1, '5': 8, '10': 'isAgentCard'},
    {'1': 'agent_card_status', '3': 3, '4': 1, '5': 5, '10': 'agentCardStatus'},
  ],
};

/// Descriptor for `CardListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardListRequestDescriptor = $convert.base64Decode(
    'Cg9DYXJkTGlzdFJlcXVlc3QSJwoPd2l0aG91dF9iYWxhbmNlGAEgASgIUg53aXRob3V0QmFsYW'
    '5jZRIiCg1pc19hZ2VudF9jYXJkGAIgASgIUgtpc0FnZW50Q2FyZBIqChFhZ2VudF9jYXJkX3N0'
    'YXR1cxgDIAEoBVIPYWdlbnRDYXJkU3RhdHVz');

@$core.Deprecated('Use cardListResponseDescriptor instead')
const CardListResponse$json = {
  '1': 'CardListResponse',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.user.CardInfo', '10': 'items'},
    {'1': 'agent_card_stat', '3': 3, '4': 1, '5': 11, '6': '.user.AgentCardListStat', '10': 'agentCardStat'},
  ],
};

/// Descriptor for `CardListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardListResponseDescriptor = $convert.base64Decode(
    'ChBDYXJkTGlzdFJlc3BvbnNlEiQKBWl0ZW1zGAEgAygLMg4udXNlci5DYXJkSW5mb1IFaXRlbX'
    'MSPwoPYWdlbnRfY2FyZF9zdGF0GAMgASgLMhcudXNlci5BZ2VudENhcmRMaXN0U3RhdFINYWdl'
    'bnRDYXJkU3RhdA==');

@$core.Deprecated('Use agentCardListStatDescriptor instead')
const AgentCardListStat$json = {
  '1': 'AgentCardListStat',
  '2': [
    {'1': 'agent_card_status0', '3': 1, '4': 1, '5': 5, '10': 'agentCardStatus0'},
    {'1': 'agent_card_status1', '3': 2, '4': 1, '5': 5, '10': 'agentCardStatus1'},
    {'1': 'agent_card_status2', '3': 3, '4': 1, '5': 5, '10': 'agentCardStatus2'},
  ],
};

/// Descriptor for `AgentCardListStat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentCardListStatDescriptor = $convert.base64Decode(
    'ChFBZ2VudENhcmRMaXN0U3RhdBIsChJhZ2VudF9jYXJkX3N0YXR1czAYASABKAVSEGFnZW50Q2'
    'FyZFN0YXR1czASLAoSYWdlbnRfY2FyZF9zdGF0dXMxGAIgASgFUhBhZ2VudENhcmRTdGF0dXMx'
    'EiwKEmFnZW50X2NhcmRfc3RhdHVzMhgDIAEoBVIQYWdlbnRDYXJkU3RhdHVzMg==');

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

@$core.Deprecated('Use getCardActivateCodeRequestDescriptor instead')
const GetCardActivateCodeRequest$json = {
  '1': 'GetCardActivateCodeRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
  ],
};

/// Descriptor for `GetCardActivateCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCardActivateCodeRequestDescriptor = $convert.base64Decode(
    'ChpHZXRDYXJkQWN0aXZhdGVDb2RlUmVxdWVzdBIWCgZjYXJkTm8YASABKAlSBmNhcmRObw==');

@$core.Deprecated('Use getCardActivateCodeResponseDescriptor instead')
const GetCardActivateCodeResponse$json = {
  '1': 'GetCardActivateCodeResponse',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'codeToken', '3': 2, '4': 1, '5': 9, '10': 'codeToken'},
  ],
};

/// Descriptor for `GetCardActivateCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCardActivateCodeResponseDescriptor = $convert.base64Decode(
    'ChtHZXRDYXJkQWN0aXZhdGVDb2RlUmVzcG9uc2USFAoFZW1haWwYASABKAlSBWVtYWlsEhwKCW'
    'NvZGVUb2tlbhgCIAEoCVIJY29kZVRva2Vu');

@$core.Deprecated('Use cardActivateRequestDescriptor instead')
const CardActivateRequest$json = {
  '1': 'CardActivateRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'codeToken', '3': 2, '4': 1, '5': 9, '10': 'codeToken'},
    {'1': 'verifyCode', '3': 3, '4': 1, '5': 9, '10': 'verifyCode'},
  ],
};

/// Descriptor for `CardActivateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardActivateRequestDescriptor = $convert.base64Decode(
    'ChNDYXJkQWN0aXZhdGVSZXF1ZXN0EhYKBmNhcmRObxgBIAEoCVIGY2FyZE5vEhwKCWNvZGVUb2'
    'tlbhgCIAEoCVIJY29kZVRva2VuEh4KCnZlcmlmeUNvZGUYAyABKAlSCnZlcmlmeUNvZGU=');

@$core.Deprecated('Use cardActivateResponseDescriptor instead')
const CardActivateResponse$json = {
  '1': 'CardActivateResponse',
};

/// Descriptor for `CardActivateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardActivateResponseDescriptor = $convert.base64Decode(
    'ChRDYXJkQWN0aXZhdGVSZXNwb25zZQ==');

@$core.Deprecated('Use setCardPwdRequestDescriptor instead')
const SetCardPwdRequest$json = {
  '1': 'SetCardPwdRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'pwd', '3': 2, '4': 1, '5': 9, '10': 'pwd'},
  ],
};

/// Descriptor for `SetCardPwdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCardPwdRequestDescriptor = $convert.base64Decode(
    'ChFTZXRDYXJkUHdkUmVxdWVzdBIWCgZjYXJkTm8YASABKAlSBmNhcmRObxIQCgNwd2QYAiABKA'
    'lSA3B3ZA==');

@$core.Deprecated('Use setCardPwdResponseDescriptor instead')
const SetCardPwdResponse$json = {
  '1': 'SetCardPwdResponse',
};

/// Descriptor for `SetCardPwdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setCardPwdResponseDescriptor = $convert.base64Decode(
    'ChJTZXRDYXJkUHdkUmVzcG9uc2U=');

@$core.Deprecated('Use cardBindRequestDescriptor instead')
const CardBindRequest$json = {
  '1': 'CardBindRequest',
  '2': [
    {'1': 'cardNo', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'cid', '3': 3, '4': 1, '5': 9, '10': 'cid'},
    {'1': 'firstName', '3': 4, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 5, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'email', '3': 6, '4': 1, '5': 9, '10': 'email'},
    {'1': 'areaCode', '3': 8, '4': 1, '5': 9, '10': 'areaCode'},
    {'1': 'mobile', '3': 7, '4': 1, '5': 9, '10': 'mobile'},
  ],
};

/// Descriptor for `CardBindRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardBindRequestDescriptor = $convert.base64Decode(
    'Cg9DYXJkQmluZFJlcXVlc3QSFgoGY2FyZE5vGAEgASgJUgZjYXJkTm8SEAoDY2lkGAMgASgJUg'
    'NjaWQSHAoJZmlyc3ROYW1lGAQgASgJUglmaXJzdE5hbWUSGgoIbGFzdE5hbWUYBSABKAlSCGxh'
    'c3ROYW1lEhQKBWVtYWlsGAYgASgJUgVlbWFpbBIaCghhcmVhQ29kZRgIIAEoCVIIYXJlYUNvZG'
    'USFgoGbW9iaWxlGAcgASgJUgZtb2JpbGU=');

@$core.Deprecated('Use cardBindResponseDescriptor instead')
const CardBindResponse$json = {
  '1': 'CardBindResponse',
};

/// Descriptor for `CardBindResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardBindResponseDescriptor = $convert.base64Decode(
    'ChBDYXJkQmluZFJlc3BvbnNl');

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

