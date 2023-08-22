//
//  Generated code. Do not modify.
//  source: user/user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'password_hash', '3': 3, '4': 1, '5': 9, '10': 'passwordHash'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'country_code', '3': 5, '4': 1, '5': 14, '6': '.user.CountryCode', '10': 'countryCode'},
    {'1': 'currency', '3': 23, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'currency'},
    {'1': 'id1', '3': 6, '4': 1, '5': 9, '10': 'id1'},
    {'1': 'id2', '3': 7, '4': 1, '5': 9, '10': 'id2'},
    {'1': 'id_num', '3': 8, '4': 1, '5': 9, '10': 'idNum'},
    {'1': 'social_id', '3': 9, '4': 1, '5': 9, '10': 'socialId'},
    {'1': 'firstName', '3': 10, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 11, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'mobile', '3': 12, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'dob', '3': 13, '4': 1, '5': 9, '10': 'dob'},
    {'1': 'address1', '3': 14, '4': 1, '5': 9, '10': 'address1'},
    {'1': 'address2', '3': 15, '4': 1, '5': 9, '10': 'address2'},
    {'1': 'city', '3': 16, '4': 1, '5': 9, '10': 'city'},
    {'1': 'state', '3': 17, '4': 1, '5': 9, '10': 'state'},
    {'1': 'post_code', '3': 18, '4': 1, '5': 9, '10': 'postCode'},
    {'1': 'updated_at', '3': 19, '4': 1, '5': 4, '10': 'updatedAt'},
    {'1': 'kycinfo_ok', '3': 20, '4': 1, '5': 8, '10': 'kycinfoOk'},
    {'1': 'open_id', '3': 21, '4': 1, '5': 9, '10': 'openId'},
    {'1': 'kyc_status', '3': 22, '4': 1, '5': 9, '10': 'kycStatus'},
    {'1': 'created_at', '3': 24, '4': 1, '5': 4, '10': 'createdAt'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIOCgJpZBgBIAEoA1ICaWQSGwoJdXNlcl9uYW1lGAIgASgJUgh1c2VyTmFtZR'
    'IjCg1wYXNzd29yZF9oYXNoGAMgASgJUgxwYXNzd29yZEhhc2gSFAoFZW1haWwYBCABKAlSBWVt'
    'YWlsEjQKDGNvdW50cnlfY29kZRgFIAEoDjIRLnVzZXIuQ291bnRyeUNvZGVSC2NvdW50cnlDb2'
    'RlEi4KCGN1cnJlbmN5GBcgASgOMhIudXNlci5DdXJyZW5jeUNvZGVSCGN1cnJlbmN5EhAKA2lk'
    'MRgGIAEoCVIDaWQxEhAKA2lkMhgHIAEoCVIDaWQyEhUKBmlkX251bRgIIAEoCVIFaWROdW0SGw'
    'oJc29jaWFsX2lkGAkgASgJUghzb2NpYWxJZBIcCglmaXJzdE5hbWUYCiABKAlSCWZpcnN0TmFt'
    'ZRIaCghsYXN0TmFtZRgLIAEoCVIIbGFzdE5hbWUSFgoGbW9iaWxlGAwgASgJUgZtb2JpbGUSEA'
    'oDZG9iGA0gASgJUgNkb2ISGgoIYWRkcmVzczEYDiABKAlSCGFkZHJlc3MxEhoKCGFkZHJlc3My'
    'GA8gASgJUghhZGRyZXNzMhISCgRjaXR5GBAgASgJUgRjaXR5EhQKBXN0YXRlGBEgASgJUgVzdG'
    'F0ZRIbCglwb3N0X2NvZGUYEiABKAlSCHBvc3RDb2RlEh0KCnVwZGF0ZWRfYXQYEyABKARSCXVw'
    'ZGF0ZWRBdBIdCgpreWNpbmZvX29rGBQgASgIUglreWNpbmZvT2sSFwoHb3Blbl9pZBgVIAEoCV'
    'IGb3BlbklkEh0KCmt5Y19zdGF0dXMYFiABKAlSCWt5Y1N0YXR1cxIdCgpjcmVhdGVkX2F0GBgg'
    'ASgEUgljcmVhdGVkQXQ=');

@$core.Deprecated('Use cardInfoDescriptor instead')
const CardInfo$json = {
  '1': 'CardInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'card_no', '3': 2, '4': 1, '5': 9, '10': 'cardNo'},
    {'1': 'symbol', '3': 3, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'symbol'},
    {'1': 'expiry_date', '3': 9, '4': 1, '5': 9, '10': 'expiryDate'},
    {'1': 'cvv', '3': 10, '4': 1, '5': 9, '10': 'cvv'},
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
    'CSABKAlSCmV4cGlyeURhdGUSEAoDY3Z2GAogASgJUgNjdnYSFwoHdXNlcl9pZBgEIAEoA1IGdX'
    'NlcklkEhgKB2JhbGFuY2UYBSABKAFSB2JhbGFuY2USHQoKY3JlYXRlZF9hdBgGIAEoBFIJY3Jl'
    'YXRlZEF0Eh0KCnVwZGF0ZWRfYXQYByABKARSCXVwZGF0ZWRBdA==');

@$core.Deprecated('Use cardExchangeInfoDescriptor instead')
const CardExchangeInfo$json = {
  '1': 'CardExchangeInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'card_id', '3': 2, '4': 1, '5': 3, '10': 'cardId'},
    {'1': 'counter_party', '3': 3, '4': 1, '5': 9, '10': 'counterParty'},
    {'1': 'counter_party_no', '3': 4, '4': 1, '5': 9, '10': 'counterPartyNo'},
    {'1': 'amt', '3': 5, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'updated_at', '3': 7, '4': 1, '5': 4, '10': 'updatedAt'},
  ],
};

/// Descriptor for `CardExchangeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cardExchangeInfoDescriptor = $convert.base64Decode(
    'ChBDYXJkRXhjaGFuZ2VJbmZvEg4KAmlkGAEgASgDUgJpZBIXCgdjYXJkX2lkGAIgASgDUgZjYX'
    'JkSWQSIwoNY291bnRlcl9wYXJ0eRgDIAEoCVIMY291bnRlclBhcnR5EigKEGNvdW50ZXJfcGFy'
    'dHlfbm8YBCABKAlSDmNvdW50ZXJQYXJ0eU5vEhAKA2FtdBgFIAEoAVIDYW10Eh0KCmNyZWF0ZW'
    'RfYXQYBiABKARSCWNyZWF0ZWRBdBIdCgp1cGRhdGVkX2F0GAcgASgEUgl1cGRhdGVkQXQ=');

@$core.Deprecated('Use signUpRequestDescriptor instead')
const SignUpRequest$json = {
  '1': 'SignUpRequest',
  '2': [
    {'1': 'user_name', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'confirm_password', '3': 3, '4': 1, '5': 9, '10': 'confirmPassword'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'vcode', '3': 5, '4': 1, '5': 9, '10': 'vcode'},
    {'1': 'verify_code_id', '3': 6, '4': 1, '5': 9, '10': 'verifyCodeId'},
  ],
};

/// Descriptor for `SignUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduVXBSZXF1ZXN0EhsKCXVzZXJfbmFtZRgBIAEoCVIIdXNlck5hbWUSGgoIcGFzc3dvcm'
    'QYAiABKAlSCHBhc3N3b3JkEikKEGNvbmZpcm1fcGFzc3dvcmQYAyABKAlSD2NvbmZpcm1QYXNz'
    'd29yZBIUCgVlbWFpbBgEIAEoCVIFZW1haWwSFAoFdmNvZGUYBSABKAlSBXZjb2RlEiQKDnZlcm'
    'lmeV9jb2RlX2lkGAYgASgJUgx2ZXJpZnlDb2RlSWQ=');

@$core.Deprecated('Use signUpResponseDescriptor instead')
const SignUpResponse$json = {
  '1': 'SignUpResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `SignUpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpResponseDescriptor = $convert.base64Decode(
    'Cg5TaWduVXBSZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4=');

@$core.Deprecated('Use verifyCodeRequestDescriptor instead')
const VerifyCodeRequest$json = {
  '1': 'VerifyCodeRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `VerifyCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyCodeRequestDescriptor = $convert.base64Decode(
    'ChFWZXJpZnlDb2RlUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWw=');

@$core.Deprecated('Use verifyCodeResponseDescriptor instead')
const VerifyCodeResponse$json = {
  '1': 'VerifyCodeResponse',
  '2': [
    {'1': 'verify_code_id', '3': 1, '4': 1, '5': 9, '10': 'verifyCodeId'},
  ],
};

/// Descriptor for `VerifyCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyCodeResponseDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlDb2RlUmVzcG9uc2USJAoOdmVyaWZ5X2NvZGVfaWQYASABKAlSDHZlcmlmeUNvZG'
    'VJZA==');

@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = {
  '1': 'SignInRequest',
  '2': [
    {'1': 'user_name', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0EhsKCXVzZXJfbmFtZRgBIAEoCVIIdXNlck5hbWUSGgoIcGFzc3dvcm'
    'QYAiABKAlSCHBhc3N3b3Jk');

@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = {
  '1': 'SignInResponse',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'kyc_ok', '3': 2, '4': 1, '5': 8, '10': 'kycOk'},
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode(
    'Cg5TaWduSW5SZXNwb25zZRIUCgV0b2tlbhgBIAEoCVIFdG9rZW4SFQoGa3ljX29rGAIgASgIUg'
    'VreWNPaw==');

@$core.Deprecated('Use kycRequestDescriptor instead')
const KycRequest$json = {
  '1': 'KycRequest',
  '2': [
    {'1': 'country_code', '3': 1, '4': 1, '5': 14, '6': '.user.CountryCode', '10': 'countryCode'},
    {'1': 'currency', '3': 2, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'currency'},
    {'1': 'id1', '3': 3, '4': 1, '5': 9, '10': 'id1'},
    {'1': 'id2', '3': 4, '4': 1, '5': 9, '10': 'id2'},
    {'1': 'id_num', '3': 5, '4': 1, '5': 9, '10': 'idNum'},
    {'1': 'social_id', '3': 6, '4': 1, '5': 9, '10': 'socialId'},
    {'1': 'firstName', '3': 7, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 8, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'mobile', '3': 9, '4': 1, '5': 9, '10': 'mobile'},
    {'1': 'dob', '3': 10, '4': 1, '5': 9, '10': 'dob'},
    {'1': 'address1', '3': 11, '4': 1, '5': 9, '10': 'address1'},
    {'1': 'address2', '3': 12, '4': 1, '5': 9, '10': 'address2'},
    {'1': 'city', '3': 13, '4': 1, '5': 9, '10': 'city'},
    {'1': 'state', '3': 14, '4': 1, '5': 9, '10': 'state'},
    {'1': 'post_code', '3': 15, '4': 1, '5': 9, '10': 'postCode'},
  ],
};

/// Descriptor for `KycRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kycRequestDescriptor = $convert.base64Decode(
    'CgpLeWNSZXF1ZXN0EjQKDGNvdW50cnlfY29kZRgBIAEoDjIRLnVzZXIuQ291bnRyeUNvZGVSC2'
    'NvdW50cnlDb2RlEi4KCGN1cnJlbmN5GAIgASgOMhIudXNlci5DdXJyZW5jeUNvZGVSCGN1cnJl'
    'bmN5EhAKA2lkMRgDIAEoCVIDaWQxEhAKA2lkMhgEIAEoCVIDaWQyEhUKBmlkX251bRgFIAEoCV'
    'IFaWROdW0SGwoJc29jaWFsX2lkGAYgASgJUghzb2NpYWxJZBIcCglmaXJzdE5hbWUYByABKAlS'
    'CWZpcnN0TmFtZRIaCghsYXN0TmFtZRgIIAEoCVIIbGFzdE5hbWUSFgoGbW9iaWxlGAkgASgJUg'
    'Ztb2JpbGUSEAoDZG9iGAogASgJUgNkb2ISGgoIYWRkcmVzczEYCyABKAlSCGFkZHJlc3MxEhoK'
    'CGFkZHJlc3MyGAwgASgJUghhZGRyZXNzMhISCgRjaXR5GA0gASgJUgRjaXR5EhQKBXN0YXRlGA'
    '4gASgJUgVzdGF0ZRIbCglwb3N0X2NvZGUYDyABKAlSCHBvc3RDb2Rl');

@$core.Deprecated('Use kycResponseDescriptor instead')
const KycResponse$json = {
  '1': 'KycResponse',
};

/// Descriptor for `KycResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kycResponseDescriptor = $convert.base64Decode(
    'CgtLeWNSZXNwb25zZQ==');

@$core.Deprecated('Use uploadRequestDescriptor instead')
const UploadRequest$json = {
  '1': 'UploadRequest',
  '2': [
    {'1': 'tag', '3': 1, '4': 1, '5': 9, '10': 'tag'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'content', '3': 3, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `UploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadRequestDescriptor = $convert.base64Decode(
    'Cg1VcGxvYWRSZXF1ZXN0EhAKA3RhZxgBIAEoCVIDdGFnEhIKBG5hbWUYAiABKAlSBG5hbWUSGA'
    'oHY29udGVudBgDIAEoDFIHY29udGVudA==');

@$core.Deprecated('Use uploadResponseDescriptor instead')
const UploadResponse$json = {
  '1': 'UploadResponse',
  '2': [
    {'1': 'image_url', '3': 1, '4': 1, '5': 9, '10': 'imageUrl'},
  ],
};

/// Descriptor for `UploadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadResponseDescriptor = $convert.base64Decode(
    'Cg5VcGxvYWRSZXNwb25zZRIbCglpbWFnZV91cmwYASABKAlSCGltYWdlVXJs');

@$core.Deprecated('Use getUserInfoRequestDescriptor instead')
const GetUserInfoRequest$json = {
  '1': 'GetUserInfoRequest',
};

/// Descriptor for `GetUserInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserInfoRequestDescriptor = $convert.base64Decode(
    'ChJHZXRVc2VySW5mb1JlcXVlc3Q=');

@$core.Deprecated('Use getUserInfoResponseDescriptor instead')
const GetUserInfoResponse$json = {
  '1': 'GetUserInfoResponse',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 11, '6': '.user.UserInfo', '10': 'user'},
  ],
};

/// Descriptor for `GetUserInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserInfoResponseDescriptor = $convert.base64Decode(
    'ChNHZXRVc2VySW5mb1Jlc3BvbnNlEiIKBHVzZXIYASABKAsyDi51c2VyLlVzZXJJbmZvUgR1c2'
    'Vy');

@$core.Deprecated('Use applyCardRequestDescriptor instead')
const ApplyCardRequest$json = {
  '1': 'ApplyCardRequest',
  '2': [
    {'1': 'ic_no', '3': 1, '4': 1, '5': 9, '10': 'icNo'},
    {'1': 'currency', '3': 2, '4': 1, '5': 14, '6': '.user.CurrencyCode', '10': 'currency'},
  ],
};

/// Descriptor for `ApplyCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyCardRequestDescriptor = $convert.base64Decode(
    'ChBBcHBseUNhcmRSZXF1ZXN0EhMKBWljX25vGAEgASgJUgRpY05vEi4KCGN1cnJlbmN5GAIgAS'
    'gOMhIudXNlci5DdXJyZW5jeUNvZGVSCGN1cnJlbmN5');

@$core.Deprecated('Use applyCardResponseDescriptor instead')
const ApplyCardResponse$json = {
  '1': 'ApplyCardResponse',
  '2': [
    {'1': 'card', '3': 1, '4': 1, '5': 11, '6': '.user.CardInfo', '10': 'card'},
  ],
};

/// Descriptor for `ApplyCardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyCardResponseDescriptor = $convert.base64Decode(
    'ChFBcHBseUNhcmRSZXNwb25zZRIiCgRjYXJkGAEgASgLMg4udXNlci5DYXJkSW5mb1IEY2FyZA'
    '==');

@$core.Deprecated('Use sayRequestDescriptor instead')
const SayRequest$json = {
  '1': 'SayRequest',
  '2': [
    {'1': 'sentence', '3': 1, '4': 1, '5': 9, '10': 'sentence'},
  ],
};

/// Descriptor for `SayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sayRequestDescriptor = $convert.base64Decode(
    'CgpTYXlSZXF1ZXN0EhoKCHNlbnRlbmNlGAEgASgJUghzZW50ZW5jZQ==');

@$core.Deprecated('Use sayResponseDescriptor instead')
const SayResponse$json = {
  '1': 'SayResponse',
  '2': [
    {'1': 'sentence', '3': 1, '4': 1, '5': 9, '10': 'sentence'},
  ],
};

/// Descriptor for `SayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sayResponseDescriptor = $convert.base64Decode(
    'CgtTYXlSZXNwb25zZRIaCghzZW50ZW5jZRgBIAEoCVIIc2VudGVuY2U=');

