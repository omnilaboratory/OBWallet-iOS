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

@$core.Deprecated('Use forgetPwdRequestDescriptor instead')
const ForgetPwdRequest$json = {
  '1': 'ForgetPwdRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'vcode', '3': 3, '4': 1, '5': 9, '10': 'vcode'},
    {'1': 'verify_code_id', '3': 4, '4': 1, '5': 9, '10': 'verifyCodeId'},
  ],
};

/// Descriptor for `ForgetPwdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgetPwdRequestDescriptor = $convert.base64Decode(
    'ChBGb3JnZXRQd2RSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZBgCIA'
    'EoCVIIcGFzc3dvcmQSFAoFdmNvZGUYAyABKAlSBXZjb2RlEiQKDnZlcmlmeV9jb2RlX2lkGAQg'
    'ASgJUgx2ZXJpZnlDb2RlSWQ=');

@$core.Deprecated('Use forgetPwdResponseDescriptor instead')
const ForgetPwdResponse$json = {
  '1': 'ForgetPwdResponse',
};

/// Descriptor for `ForgetPwdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgetPwdResponseDescriptor = $convert.base64Decode(
    'ChFGb3JnZXRQd2RSZXNwb25zZQ==');

@$core.Deprecated('Use updateUserLangRequestDescriptor instead')
const UpdateUserLangRequest$json = {
  '1': 'UpdateUserLangRequest',
  '2': [
    {'1': 'language', '3': 1, '4': 1, '5': 9, '10': 'language'},
  ],
};

/// Descriptor for `UpdateUserLangRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserLangRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVVc2VyTGFuZ1JlcXVlc3QSGgoIbGFuZ3VhZ2UYASABKAlSCGxhbmd1YWdl');

@$core.Deprecated('Use updateUserLangResponseDescriptor instead')
const UpdateUserLangResponse$json = {
  '1': 'UpdateUserLangResponse',
};

/// Descriptor for `UpdateUserLangResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserLangResponseDescriptor = $convert.base64Decode(
    'ChZVcGRhdGVVc2VyTGFuZ1Jlc3BvbnNl');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'password_hash', '3': 3, '4': 1, '5': 9, '10': 'passwordHash'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'wallet_address', '3': 37, '4': 1, '5': 9, '10': 'walletAddress'},
    {'1': 'tron_address', '3': 38, '4': 1, '5': 9, '10': 'tronAddress'},
    {'1': 'eth_address', '3': 25, '4': 1, '5': 9, '10': 'ethAddress'},
    {'1': 'btc_address', '3': 26, '4': 1, '5': 9, '10': 'btcAddress'},
    {'1': 'country_code', '3': 5, '4': 1, '5': 14, '6': '.user.CountryCode', '10': 'countryCode'},
    {'1': 'country', '3': 43, '4': 1, '5': 14, '6': '.user.CountryCode', '10': 'country'},
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
    {'1': 'areaCode', '3': 36, '4': 1, '5': 9, '10': 'areaCode'},
    {'1': 'marState', '3': 39, '4': 1, '5': 9, '10': 'marState'},
    {'1': 'addressType', '3': 40, '4': 1, '5': 9, '10': 'addressType'},
    {'1': 'gender', '3': 41, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'idType', '3': 42, '4': 1, '5': 9, '10': 'idType'},
    {'1': 'kycinfo_ok', '3': 20, '4': 1, '5': 8, '10': 'kycinfoOk'},
    {'1': 'open_id', '3': 21, '4': 1, '5': 9, '10': 'openId'},
    {'1': 'kyc_status', '3': 22, '4': 1, '5': 9, '10': 'kycStatus'},
    {'1': 'updated_at', '3': 19, '4': 1, '5': 4, '10': 'updatedAt'},
    {'1': 'created_at', '3': 24, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'card_count', '3': 27, '4': 1, '5': 4, '10': 'cardCount'},
    {'1': 'pcard_count', '3': 44, '4': 1, '5': 4, '10': 'pcardCount'},
    {'1': 'user_type', '3': 28, '4': 1, '5': 3, '10': 'userType'},
    {'1': 'is_agent_channel', '3': 33, '4': 1, '5': 8, '10': 'isAgentChannel'},
    {'1': 'muser_id', '3': 29, '4': 1, '5': 3, '10': 'muserId'},
    {'1': 'invitation_code', '3': 30, '4': 1, '5': 9, '10': 'invitationCode'},
    {'1': 'regist_code', '3': 31, '4': 1, '5': 9, '10': 'registCode'},
    {'1': 'invitation_userid', '3': 32, '4': 1, '5': 3, '10': 'invitationUserid'},
    {'1': 'ref_userid', '3': 34, '4': 1, '5': 3, '10': 'refUserid'},
    {'1': 'language', '3': 35, '4': 1, '5': 9, '10': 'language'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIOCgJpZBgBIAEoA1ICaWQSGwoJdXNlcl9uYW1lGAIgASgJUgh1c2VyTmFtZR'
    'IjCg1wYXNzd29yZF9oYXNoGAMgASgJUgxwYXNzd29yZEhhc2gSFAoFZW1haWwYBCABKAlSBWVt'
    'YWlsEiUKDndhbGxldF9hZGRyZXNzGCUgASgJUg13YWxsZXRBZGRyZXNzEiEKDHRyb25fYWRkcm'
    'VzcxgmIAEoCVILdHJvbkFkZHJlc3MSHwoLZXRoX2FkZHJlc3MYGSABKAlSCmV0aEFkZHJlc3MS'
    'HwoLYnRjX2FkZHJlc3MYGiABKAlSCmJ0Y0FkZHJlc3MSNAoMY291bnRyeV9jb2RlGAUgASgOMh'
    'EudXNlci5Db3VudHJ5Q29kZVILY291bnRyeUNvZGUSKwoHY291bnRyeRgrIAEoDjIRLnVzZXIu'
    'Q291bnRyeUNvZGVSB2NvdW50cnkSLgoIY3VycmVuY3kYFyABKA4yEi51c2VyLkN1cnJlbmN5Q2'
    '9kZVIIY3VycmVuY3kSEAoDaWQxGAYgASgJUgNpZDESEAoDaWQyGAcgASgJUgNpZDISFQoGaWRf'
    'bnVtGAggASgJUgVpZE51bRIbCglzb2NpYWxfaWQYCSABKAlSCHNvY2lhbElkEhwKCWZpcnN0Tm'
    'FtZRgKIAEoCVIJZmlyc3ROYW1lEhoKCGxhc3ROYW1lGAsgASgJUghsYXN0TmFtZRIWCgZtb2Jp'
    'bGUYDCABKAlSBm1vYmlsZRIQCgNkb2IYDSABKAlSA2RvYhIaCghhZGRyZXNzMRgOIAEoCVIIYW'
    'RkcmVzczESGgoIYWRkcmVzczIYDyABKAlSCGFkZHJlc3MyEhIKBGNpdHkYECABKAlSBGNpdHkS'
    'FAoFc3RhdGUYESABKAlSBXN0YXRlEhsKCXBvc3RfY29kZRgSIAEoCVIIcG9zdENvZGUSGgoIYX'
    'JlYUNvZGUYJCABKAlSCGFyZWFDb2RlEhoKCG1hclN0YXRlGCcgASgJUghtYXJTdGF0ZRIgCgth'
    'ZGRyZXNzVHlwZRgoIAEoCVILYWRkcmVzc1R5cGUSFgoGZ2VuZGVyGCkgASgJUgZnZW5kZXISFg'
    'oGaWRUeXBlGCogASgJUgZpZFR5cGUSHQoKa3ljaW5mb19vaxgUIAEoCFIJa3ljaW5mb09rEhcK'
    'B29wZW5faWQYFSABKAlSBm9wZW5JZBIdCgpreWNfc3RhdHVzGBYgASgJUglreWNTdGF0dXMSHQ'
    'oKdXBkYXRlZF9hdBgTIAEoBFIJdXBkYXRlZEF0Eh0KCmNyZWF0ZWRfYXQYGCABKARSCWNyZWF0'
    'ZWRBdBIdCgpjYXJkX2NvdW50GBsgASgEUgljYXJkQ291bnQSHwoLcGNhcmRfY291bnQYLCABKA'
    'RSCnBjYXJkQ291bnQSGwoJdXNlcl90eXBlGBwgASgDUgh1c2VyVHlwZRIoChBpc19hZ2VudF9j'
    'aGFubmVsGCEgASgIUg5pc0FnZW50Q2hhbm5lbBIZCghtdXNlcl9pZBgdIAEoA1IHbXVzZXJJZB'
    'InCg9pbnZpdGF0aW9uX2NvZGUYHiABKAlSDmludml0YXRpb25Db2RlEh8KC3JlZ2lzdF9jb2Rl'
    'GB8gASgJUgpyZWdpc3RDb2RlEisKEWludml0YXRpb25fdXNlcmlkGCAgASgDUhBpbnZpdGF0aW'
    '9uVXNlcmlkEh0KCnJlZl91c2VyaWQYIiABKANSCXJlZlVzZXJpZBIaCghsYW5ndWFnZRgjIAEo'
    'CVIIbGFuZ3VhZ2U=');

@$core.Deprecated('Use agentKycForCardResponseDescriptor instead')
const AgentKycForCardResponse$json = {
  '1': 'AgentKycForCardResponse',
  '2': [
    {'1': 'card_no', '3': 1, '4': 1, '5': 9, '10': 'cardNo'},
  ],
};

/// Descriptor for `AgentKycForCardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentKycForCardResponseDescriptor = $convert.base64Decode(
    'ChdBZ2VudEt5Y0ZvckNhcmRSZXNwb25zZRIXCgdjYXJkX25vGAEgASgJUgZjYXJkTm8=');

@$core.Deprecated('Use getAgentKycInfoRequestDescriptor instead')
const GetAgentKycInfoRequest$json = {
  '1': 'GetAgentKycInfoRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `GetAgentKycInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAgentKycInfoRequestDescriptor = $convert.base64Decode(
    'ChZHZXRBZ2VudEt5Y0luZm9SZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbA==');

@$core.Deprecated('Use listAgentKycInfoRequestDescriptor instead')
const ListAgentKycInfoRequest$json = {
  '1': 'ListAgentKycInfoRequest',
};

/// Descriptor for `ListAgentKycInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAgentKycInfoRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0QWdlbnRLeWNJbmZvUmVxdWVzdA==');

@$core.Deprecated('Use listAgentKycInfoResponseDescriptor instead')
const ListAgentKycInfoResponse$json = {
  '1': 'ListAgentKycInfoResponse',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.user.AgentKycInfo', '10': 'list'},
  ],
};

/// Descriptor for `ListAgentKycInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAgentKycInfoResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0QWdlbnRLeWNJbmZvUmVzcG9uc2USJgoEbGlzdBgBIAMoCzISLnVzZXIuQWdlbnRLeW'
    'NJbmZvUgRsaXN0');

@$core.Deprecated('Use agentCardRequestDescriptor instead')
const AgentCardRequest$json = {
  '1': 'AgentCardRequest',
  '2': [
    {'1': 'open_id', '3': 1, '4': 1, '5': 9, '10': 'openId'},
  ],
};

/// Descriptor for `AgentCardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentCardRequestDescriptor = $convert.base64Decode(
    'ChBBZ2VudENhcmRSZXF1ZXN0EhcKB29wZW5faWQYASABKAlSBm9wZW5JZA==');

@$core.Deprecated('Use agentKycInfoDescriptor instead')
const AgentKycInfo$json = {
  '1': 'AgentKycInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'agentCId', '3': 2, '4': 1, '5': 9, '10': 'agentCId'},
    {'1': 'agent_id', '3': 3, '4': 1, '5': 3, '10': 'agentId'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'country_code', '3': 5, '4': 1, '5': 14, '6': '.user.CountryCode', '10': 'countryCode'},
    {'1': 'country', '3': 43, '4': 1, '5': 14, '6': '.user.CountryCode', '10': 'country'},
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
    {'1': 'city', '3': 16, '4': 1, '5': 9, '10': 'city'},
    {'1': 'state', '3': 17, '4': 1, '5': 9, '10': 'state'},
    {'1': 'post_code', '3': 18, '4': 1, '5': 9, '10': 'postCode'},
    {'1': 'areaCode', '3': 36, '4': 1, '5': 9, '10': 'areaCode'},
    {'1': 'marState', '3': 39, '4': 1, '5': 9, '10': 'marState'},
    {'1': 'addressType', '3': 40, '4': 1, '5': 9, '10': 'addressType'},
    {'1': 'gender', '3': 41, '4': 1, '5': 9, '10': 'gender'},
    {'1': 'idType', '3': 42, '4': 1, '5': 9, '10': 'idType'},
    {'1': 'open_id', '3': 21, '4': 1, '5': 9, '10': 'openId'},
    {'1': 'kyc_status', '3': 22, '4': 1, '5': 9, '10': 'kycStatus'},
    {'1': 'updated_at', '3': 19, '4': 1, '5': 4, '10': 'updatedAt'},
    {'1': 'created_at', '3': 24, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'cardNo', '3': 25, '4': 1, '5': 9, '10': 'cardNo'},
  ],
};

/// Descriptor for `AgentKycInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List agentKycInfoDescriptor = $convert.base64Decode(
    'CgxBZ2VudEt5Y0luZm8SDgoCaWQYASABKANSAmlkEhoKCGFnZW50Q0lkGAIgASgJUghhZ2VudE'
    'NJZBIZCghhZ2VudF9pZBgDIAEoA1IHYWdlbnRJZBIUCgVlbWFpbBgEIAEoCVIFZW1haWwSNAoM'
    'Y291bnRyeV9jb2RlGAUgASgOMhEudXNlci5Db3VudHJ5Q29kZVILY291bnRyeUNvZGUSKwoHY2'
    '91bnRyeRgrIAEoDjIRLnVzZXIuQ291bnRyeUNvZGVSB2NvdW50cnkSLgoIY3VycmVuY3kYFyAB'
    'KA4yEi51c2VyLkN1cnJlbmN5Q29kZVIIY3VycmVuY3kSEAoDaWQxGAYgASgJUgNpZDESEAoDaW'
    'QyGAcgASgJUgNpZDISFQoGaWRfbnVtGAggASgJUgVpZE51bRIbCglzb2NpYWxfaWQYCSABKAlS'
    'CHNvY2lhbElkEhwKCWZpcnN0TmFtZRgKIAEoCVIJZmlyc3ROYW1lEhoKCGxhc3ROYW1lGAsgAS'
    'gJUghsYXN0TmFtZRIWCgZtb2JpbGUYDCABKAlSBm1vYmlsZRIQCgNkb2IYDSABKAlSA2RvYhIa'
    'CghhZGRyZXNzMRgOIAEoCVIIYWRkcmVzczESEgoEY2l0eRgQIAEoCVIEY2l0eRIUCgVzdGF0ZR'
    'gRIAEoCVIFc3RhdGUSGwoJcG9zdF9jb2RlGBIgASgJUghwb3N0Q29kZRIaCghhcmVhQ29kZRgk'
    'IAEoCVIIYXJlYUNvZGUSGgoIbWFyU3RhdGUYJyABKAlSCG1hclN0YXRlEiAKC2FkZHJlc3NUeX'
    'BlGCggASgJUgthZGRyZXNzVHlwZRIWCgZnZW5kZXIYKSABKAlSBmdlbmRlchIWCgZpZFR5cGUY'
    'KiABKAlSBmlkVHlwZRIXCgdvcGVuX2lkGBUgASgJUgZvcGVuSWQSHQoKa3ljX3N0YXR1cxgWIA'
    'EoCVIJa3ljU3RhdHVzEh0KCnVwZGF0ZWRfYXQYEyABKARSCXVwZGF0ZWRBdBIdCgpjcmVhdGVk'
    'X2F0GBggASgEUgljcmVhdGVkQXQSFgoGY2FyZE5vGBkgASgJUgZjYXJkTm8=');

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
    {'1': 'regist_code', '3': 10, '4': 1, '5': 9, '10': 'registCode'},
    {'1': 'device_id', '3': 7, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'os', '3': 8, '4': 1, '5': 9, '10': 'os'},
    {'1': 'osVersion', '3': 9, '4': 1, '5': 9, '10': 'osVersion'},
  ],
};

/// Descriptor for `SignUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduVXBSZXF1ZXN0EhsKCXVzZXJfbmFtZRgBIAEoCVIIdXNlck5hbWUSGgoIcGFzc3dvcm'
    'QYAiABKAlSCHBhc3N3b3JkEikKEGNvbmZpcm1fcGFzc3dvcmQYAyABKAlSD2NvbmZpcm1QYXNz'
    'd29yZBIUCgVlbWFpbBgEIAEoCVIFZW1haWwSFAoFdmNvZGUYBSABKAlSBXZjb2RlEiQKDnZlcm'
    'lmeV9jb2RlX2lkGAYgASgJUgx2ZXJpZnlDb2RlSWQSHwoLcmVnaXN0X2NvZGUYCiABKAlSCnJl'
    'Z2lzdENvZGUSGwoJZGV2aWNlX2lkGAcgASgJUghkZXZpY2VJZBIOCgJvcxgIIAEoCVICb3MSHA'
    'oJb3NWZXJzaW9uGAkgASgJUglvc1ZlcnNpb24=');

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

@$core.Deprecated('Use verifyImageRequestDescriptor instead')
const VerifyImageRequest$json = {
  '1': 'VerifyImageRequest',
};

/// Descriptor for `VerifyImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyImageRequestDescriptor = $convert.base64Decode(
    'ChJWZXJpZnlJbWFnZVJlcXVlc3Q=');

@$core.Deprecated('Use verifyImageResponseDescriptor instead')
const VerifyImageResponse$json = {
  '1': 'VerifyImageResponse',
  '2': [
    {'1': 'verify_code_id', '3': 1, '4': 1, '5': 9, '10': 'verifyCodeId'},
    {'1': 'image_bs', '3': 2, '4': 1, '5': 9, '10': 'imageBs'},
  ],
};

/// Descriptor for `VerifyImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyImageResponseDescriptor = $convert.base64Decode(
    'ChNWZXJpZnlJbWFnZVJlc3BvbnNlEiQKDnZlcmlmeV9jb2RlX2lkGAEgASgJUgx2ZXJpZnlDb2'
    'RlSWQSGQoIaW1hZ2VfYnMYAiABKAlSB2ltYWdlQnM=');

@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = {
  '1': 'SignInRequest',
  '2': [
    {'1': 'user_name', '3': 1, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'vcode', '3': 3, '4': 1, '5': 9, '10': 'vcode'},
    {'1': 'verify_code_id', '3': 4, '4': 1, '5': 9, '10': 'verifyCodeId'},
    {'1': 'device_id', '3': 7, '4': 1, '5': 9, '10': 'deviceId'},
    {'1': 'os', '3': 8, '4': 1, '5': 9, '10': 'os'},
    {'1': 'osVersion', '3': 9, '4': 1, '5': 9, '10': 'osVersion'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode(
    'Cg1TaWduSW5SZXF1ZXN0EhsKCXVzZXJfbmFtZRgBIAEoCVIIdXNlck5hbWUSGgoIcGFzc3dvcm'
    'QYAiABKAlSCHBhc3N3b3JkEhQKBXZjb2RlGAMgASgJUgV2Y29kZRIkCg52ZXJpZnlfY29kZV9p'
    'ZBgEIAEoCVIMdmVyaWZ5Q29kZUlkEhsKCWRldmljZV9pZBgHIAEoCVIIZGV2aWNlSWQSDgoCb3'
    'MYCCABKAlSAm9zEhwKCW9zVmVyc2lvbhgJIAEoCVIJb3NWZXJzaW9u');

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

@$core.Deprecated('Use updatePwdRequestDescriptor instead')
const UpdatePwdRequest$json = {
  '1': 'UpdatePwdRequest',
  '2': [
    {'1': 'old_password', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    {'1': 'new_password', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `UpdatePwdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePwdRequestDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVQd2RSZXF1ZXN0EiEKDG9sZF9wYXNzd29yZBgCIAEoCVILb2xkUGFzc3dvcmQSIQ'
    'oMbmV3X3Bhc3N3b3JkGAMgASgJUgtuZXdQYXNzd29yZA==');

@$core.Deprecated('Use updatePwdResponseDescriptor instead')
const UpdatePwdResponse$json = {
  '1': 'UpdatePwdResponse',
};

/// Descriptor for `UpdatePwdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updatePwdResponseDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVQd2RSZXNwb25zZQ==');

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

@$core.Deprecated('Use listInvitedUserRequestDescriptor instead')
const ListInvitedUserRequest$json = {
  '1': 'ListInvitedUserRequest',
  '2': [
    {'1': 'start', '3': 2, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
  ],
};

/// Descriptor for `ListInvitedUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInvitedUserRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0SW52aXRlZFVzZXJSZXF1ZXN0EhQKBXN0YXJ0GAIgASgDUgVzdGFydBIUCgVsaW1pdB'
    'gDIAEoA1IFbGltaXQ=');

@$core.Deprecated('Use listInvitedUserResponseDescriptor instead')
const ListInvitedUserResponse$json = {
  '1': 'ListInvitedUserResponse',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.user.InvitedUser', '10': 'list'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
  ],
};

/// Descriptor for `ListInvitedUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInvitedUserResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0SW52aXRlZFVzZXJSZXNwb25zZRIlCgRsaXN0GAEgAygLMhEudXNlci5JbnZpdGVkVX'
    'NlclIEbGlzdBIUCgVjb3VudBgCIAEoA1IFY291bnQ=');

@$core.Deprecated('Use invitedUserDescriptor instead')
const InvitedUser$json = {
  '1': 'InvitedUser',
  '2': [
    {'1': 'user_name', '3': 3, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'firstName', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'lastName', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 4, '10': 'createdAt'},
  ],
};

/// Descriptor for `InvitedUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invitedUserDescriptor = $convert.base64Decode(
    'CgtJbnZpdGVkVXNlchIbCgl1c2VyX25hbWUYAyABKAlSCHVzZXJOYW1lEhQKBWVtYWlsGAQgAS'
    'gJUgVlbWFpbBIcCglmaXJzdE5hbWUYASABKAlSCWZpcnN0TmFtZRIaCghsYXN0TmFtZRgCIAEo'
    'CVIIbGFzdE5hbWUSHQoKY3JlYXRlZF9hdBgFIAEoBFIJY3JlYXRlZEF0');

@$core.Deprecated('Use listRewardRequestDescriptor instead')
const ListRewardRequest$json = {
  '1': 'ListRewardRequest',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
  ],
};

/// Descriptor for `ListRewardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRewardRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0UmV3YXJkUmVxdWVzdBIUCgVzdGFydBgBIAEoA1IFc3RhcnQSFAoFbGltaXQYAiABKA'
    'NSBWxpbWl0');

@$core.Deprecated('Use listRewardResponseDescriptor instead')
const ListRewardResponse$json = {
  '1': 'ListRewardResponse',
  '2': [
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.user.UserReward', '10': 'list'},
    {'1': 'total_amt', '3': 2, '4': 1, '5': 1, '10': 'totalAmt'},
  ],
};

/// Descriptor for `ListRewardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRewardResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0UmV3YXJkUmVzcG9uc2USJAoEbGlzdBgBIAMoCzIQLnVzZXIuVXNlclJld2FyZFIEbG'
    'lzdBIbCgl0b3RhbF9hbXQYAiABKAFSCHRvdGFsQW10');

@$core.Deprecated('Use listRewardWithUserRequestDescriptor instead')
const ListRewardWithUserRequest$json = {
  '1': 'ListRewardWithUserRequest',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'date_sec', '3': 3, '4': 1, '5': 4, '10': 'dateSec'},
  ],
};

/// Descriptor for `ListRewardWithUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRewardWithUserRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0UmV3YXJkV2l0aFVzZXJSZXF1ZXN0EhQKBXN0YXJ0GAEgASgDUgVzdGFydBIUCgVsaW'
    '1pdBgCIAEoA1IFbGltaXQSGQoIZGF0ZV9zZWMYAyABKARSB2RhdGVTZWM=');

@$core.Deprecated('Use listRewardWithUserResponseDescriptor instead')
const ListRewardWithUserResponse$json = {
  '1': 'ListRewardWithUserResponse',
  '2': [
    {'1': 'user_count', '3': 2, '4': 1, '5': 3, '10': 'userCount'},
    {'1': 'rewards', '3': 3, '4': 1, '5': 1, '10': 'rewards'},
    {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.user.UserRewardItem', '10': 'list'},
  ],
};

/// Descriptor for `ListRewardWithUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRewardWithUserResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0UmV3YXJkV2l0aFVzZXJSZXNwb25zZRIdCgp1c2VyX2NvdW50GAIgASgDUgl1c2VyQ2'
    '91bnQSGAoHcmV3YXJkcxgDIAEoAVIHcmV3YXJkcxIoCgRsaXN0GAEgAygLMhQudXNlci5Vc2Vy'
    'UmV3YXJkSXRlbVIEbGlzdA==');

@$core.Deprecated('Use userRewardDescriptor instead')
const UserReward$json = {
  '1': 'UserReward',
  '2': [
    {'1': 'created_at', '3': 1, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
    {'1': 'status', '3': 3, '4': 1, '5': 3, '10': 'status'},
  ],
};

/// Descriptor for `UserReward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRewardDescriptor = $convert.base64Decode(
    'CgpVc2VyUmV3YXJkEh0KCmNyZWF0ZWRfYXQYASABKARSCWNyZWF0ZWRBdBIQCgNhbXQYAiABKA'
    'FSA2FtdBIWCgZzdGF0dXMYAyABKANSBnN0YXR1cw==');

@$core.Deprecated('Use userRewardItemDescriptor instead')
const UserRewardItem$json = {
  '1': 'UserRewardItem',
  '2': [
    {'1': 'id', '3': 9, '4': 1, '5': 3, '10': 'id'},
    {'1': 'reward_userid', '3': 1, '4': 1, '5': 3, '10': 'rewardUserid'},
    {'1': 'date_sec', '3': 2, '4': 1, '5': 3, '10': 'dateSec'},
    {'1': 'data_str', '3': 3, '4': 1, '5': 9, '10': 'dataStr'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'reward', '3': 5, '4': 1, '5': 1, '10': 'reward'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.user.Timestamp', '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 11, '6': '.user.Timestamp', '10': 'updatedAt'},
    {'1': 'user_name', '3': 10, '4': 1, '5': 9, '10': 'userName'},
  ],
};

/// Descriptor for `UserRewardItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRewardItemDescriptor = $convert.base64Decode(
    'Cg5Vc2VyUmV3YXJkSXRlbRIOCgJpZBgJIAEoA1ICaWQSIwoNcmV3YXJkX3VzZXJpZBgBIAEoA1'
    'IMcmV3YXJkVXNlcmlkEhkKCGRhdGVfc2VjGAIgASgDUgdkYXRlU2VjEhkKCGRhdGFfc3RyGAMg'
    'ASgJUgdkYXRhU3RyEhcKB3VzZXJfaWQYBCABKANSBnVzZXJJZBIWCgZyZXdhcmQYBSABKAFSBn'
    'Jld2FyZBIuCgpjcmVhdGVkX2F0GAcgASgLMg8udXNlci5UaW1lc3RhbXBSCWNyZWF0ZWRBdBIu'
    'Cgp1cGRhdGVkX2F0GAggASgLMg8udXNlci5UaW1lc3RhbXBSCXVwZGF0ZWRBdBIbCgl1c2VyX2'
    '5hbWUYCiABKAlSCHVzZXJOYW1l');

@$core.Deprecated('Use userRewardDetailDescriptor instead')
const UserRewardDetail$json = {
  '1': 'UserRewardDetail',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'reward_userid', '3': 2, '4': 1, '5': 3, '10': 'rewardUserid'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 3, '10': 'userId'},
    {'1': 'source_id', '3': 4, '4': 1, '5': 3, '10': 'sourceId'},
    {'1': 'source_type', '3': 5, '4': 1, '5': 14, '6': '.user.UserRewardDetail.SourceType', '10': 'sourceType'},
    {'1': 'reward', '3': 6, '4': 1, '5': 1, '10': 'reward'},
    {'1': 'status', '3': 9, '4': 1, '5': 3, '10': 'status'},
    {'1': 'tx_id', '3': 10, '4': 1, '5': 9, '10': 'txId'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 3, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 3, '10': 'updatedAt'},
  ],
  '4': [UserRewardDetail_SourceType$json],
};

@$core.Deprecated('Use userRewardDetailDescriptor instead')
const UserRewardDetail_SourceType$json = {
  '1': 'SourceType',
  '2': [
    {'1': 'UnKnow', '2': 0},
    {'1': 'BuyCoin', '2': 1},
    {'1': 'SellCoin', '2': 2},
    {'1': 'WithdrawTOVcard', '2': 3},
    {'1': 'WithdrawTOPcard', '2': 4},
    {'1': 'CreateVcard', '2': 5},
    {'1': 'CreatePcard', '2': 6},
    {'1': 'Transak', '2': 7},
  ],
};

/// Descriptor for `UserRewardDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRewardDetailDescriptor = $convert.base64Decode(
    'ChBVc2VyUmV3YXJkRGV0YWlsEg4KAmlkGAEgASgDUgJpZBIjCg1yZXdhcmRfdXNlcmlkGAIgAS'
    'gDUgxyZXdhcmRVc2VyaWQSFwoHdXNlcl9pZBgDIAEoA1IGdXNlcklkEhsKCXNvdXJjZV9pZBgE'
    'IAEoA1IIc291cmNlSWQSQgoLc291cmNlX3R5cGUYBSABKA4yIS51c2VyLlVzZXJSZXdhcmREZX'
    'RhaWwuU291cmNlVHlwZVIKc291cmNlVHlwZRIWCgZyZXdhcmQYBiABKAFSBnJld2FyZBIWCgZz'
    'dGF0dXMYCSABKANSBnN0YXR1cxITCgV0eF9pZBgKIAEoCVIEdHhJZBIdCgpjcmVhdGVkX2F0GA'
    'cgASgDUgljcmVhdGVkQXQSHQoKdXBkYXRlZF9hdBgIIAEoA1IJdXBkYXRlZEF0IowBCgpTb3Vy'
    'Y2VUeXBlEgoKBlVuS25vdxAAEgsKB0J1eUNvaW4QARIMCghTZWxsQ29pbhACEhMKD1dpdGhkcm'
    'F3VE9WY2FyZBADEhMKD1dpdGhkcmF3VE9QY2FyZBAEEg8KC0NyZWF0ZVZjYXJkEAUSDwoLQ3Jl'
    'YXRlUGNhcmQQBhILCgdUcmFuc2FrEAc=');

