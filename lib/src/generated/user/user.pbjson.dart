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

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    {'1': 'user_name', '3': 2, '4': 1, '5': 9, '10': 'userName'},
    {'1': 'password_hash', '3': 3, '4': 1, '5': 9, '10': 'passwordHash'},
    {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    {'1': 'eth_address', '3': 25, '4': 1, '5': 9, '10': 'ethAddress'},
    {'1': 'btc_address', '3': 26, '4': 1, '5': 9, '10': 'btcAddress'},
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
    {'1': 'card_count', '3': 27, '4': 1, '5': 4, '10': 'cardCount'},
    {'1': 'user_type', '3': 28, '4': 1, '5': 3, '10': 'userType'},
    {'1': 'is_agent_channel', '3': 33, '4': 1, '5': 8, '10': 'isAgentChannel'},
    {'1': 'muser_id', '3': 29, '4': 1, '5': 3, '10': 'muserId'},
    {'1': 'invitation_code', '3': 30, '4': 1, '5': 9, '10': 'invitationCode'},
    {'1': 'regist_code', '3': 31, '4': 1, '5': 9, '10': 'registCode'},
    {'1': 'invitation_userid', '3': 32, '4': 1, '5': 3, '10': 'invitationUserid'},
  ],
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIOCgJpZBgBIAEoA1ICaWQSGwoJdXNlcl9uYW1lGAIgASgJUgh1c2VyTmFtZR'
    'IjCg1wYXNzd29yZF9oYXNoGAMgASgJUgxwYXNzd29yZEhhc2gSFAoFZW1haWwYBCABKAlSBWVt'
    'YWlsEh8KC2V0aF9hZGRyZXNzGBkgASgJUgpldGhBZGRyZXNzEh8KC2J0Y19hZGRyZXNzGBogAS'
    'gJUgpidGNBZGRyZXNzEjQKDGNvdW50cnlfY29kZRgFIAEoDjIRLnVzZXIuQ291bnRyeUNvZGVS'
    'C2NvdW50cnlDb2RlEi4KCGN1cnJlbmN5GBcgASgOMhIudXNlci5DdXJyZW5jeUNvZGVSCGN1cn'
    'JlbmN5EhAKA2lkMRgGIAEoCVIDaWQxEhAKA2lkMhgHIAEoCVIDaWQyEhUKBmlkX251bRgIIAEo'
    'CVIFaWROdW0SGwoJc29jaWFsX2lkGAkgASgJUghzb2NpYWxJZBIcCglmaXJzdE5hbWUYCiABKA'
    'lSCWZpcnN0TmFtZRIaCghsYXN0TmFtZRgLIAEoCVIIbGFzdE5hbWUSFgoGbW9iaWxlGAwgASgJ'
    'UgZtb2JpbGUSEAoDZG9iGA0gASgJUgNkb2ISGgoIYWRkcmVzczEYDiABKAlSCGFkZHJlc3MxEh'
    'oKCGFkZHJlc3MyGA8gASgJUghhZGRyZXNzMhISCgRjaXR5GBAgASgJUgRjaXR5EhQKBXN0YXRl'
    'GBEgASgJUgVzdGF0ZRIbCglwb3N0X2NvZGUYEiABKAlSCHBvc3RDb2RlEh0KCnVwZGF0ZWRfYX'
    'QYEyABKARSCXVwZGF0ZWRBdBIdCgpreWNpbmZvX29rGBQgASgIUglreWNpbmZvT2sSFwoHb3Bl'
    'bl9pZBgVIAEoCVIGb3BlbklkEh0KCmt5Y19zdGF0dXMYFiABKAlSCWt5Y1N0YXR1cxIdCgpjcm'
    'VhdGVkX2F0GBggASgEUgljcmVhdGVkQXQSHQoKY2FyZF9jb3VudBgbIAEoBFIJY2FyZENvdW50'
    'EhsKCXVzZXJfdHlwZRgcIAEoA1IIdXNlclR5cGUSKAoQaXNfYWdlbnRfY2hhbm5lbBghIAEoCF'
    'IOaXNBZ2VudENoYW5uZWwSGQoIbXVzZXJfaWQYHSABKANSB211c2VySWQSJwoPaW52aXRhdGlv'
    'bl9jb2RlGB4gASgJUg5pbnZpdGF0aW9uQ29kZRIfCgtyZWdpc3RfY29kZRgfIAEoCVIKcmVnaX'
    'N0Q29kZRIrChFpbnZpdGF0aW9uX3VzZXJpZBggIAEoA1IQaW52aXRhdGlvblVzZXJpZA==');

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
    {'1': 'start', '3': 2, '4': 1, '5': 3, '10': 'start'},
    {'1': 'limit', '3': 3, '4': 1, '5': 3, '10': 'limit'},
  ],
};

/// Descriptor for `ListRewardRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRewardRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0UmV3YXJkUmVxdWVzdBIUCgVzdGFydBgCIAEoA1IFc3RhcnQSFAoFbGltaXQYAyABKA'
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

@$core.Deprecated('Use userRewardDescriptor instead')
const UserReward$json = {
  '1': 'UserReward',
  '2': [
    {'1': 'created_at', '3': 1, '4': 1, '5': 4, '10': 'createdAt'},
    {'1': 'amt', '3': 2, '4': 1, '5': 1, '10': 'amt'},
  ],
};

/// Descriptor for `UserReward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userRewardDescriptor = $convert.base64Decode(
    'CgpVc2VyUmV3YXJkEh0KCmNyZWF0ZWRfYXQYASABKARSCWNyZWF0ZWRBdBIQCgNhbXQYAiABKA'
    'FSA2FtdA==');

