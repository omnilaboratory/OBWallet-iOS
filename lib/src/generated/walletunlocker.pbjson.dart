///
//  Generated code. Do not modify.
//  source: walletunlocker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genSeedRequestDescriptor instead')
const GenSeedRequest$json = const {
  '1': 'GenSeedRequest',
  '2': const [
    const {'1': 'aezeed_passphrase', '3': 1, '4': 1, '5': 12, '10': 'aezeedPassphrase'},
    const {'1': 'seed_entropy', '3': 2, '4': 1, '5': 12, '10': 'seedEntropy'},
  ],
};

/// Descriptor for `GenSeedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genSeedRequestDescriptor = $convert.base64Decode('Cg5HZW5TZWVkUmVxdWVzdBIrChFhZXplZWRfcGFzc3BocmFzZRgBIAEoDFIQYWV6ZWVkUGFzc3BocmFzZRIhCgxzZWVkX2VudHJvcHkYAiABKAxSC3NlZWRFbnRyb3B5');
@$core.Deprecated('Use genSeedResponseDescriptor instead')
const GenSeedResponse$json = const {
  '1': 'GenSeedResponse',
  '2': const [
    const {'1': 'cipher_seed_mnemonic', '3': 1, '4': 3, '5': 9, '10': 'cipherSeedMnemonic'},
    const {'1': 'enciphered_seed', '3': 2, '4': 1, '5': 12, '10': 'encipheredSeed'},
  ],
};

/// Descriptor for `GenSeedResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genSeedResponseDescriptor = $convert.base64Decode('Cg9HZW5TZWVkUmVzcG9uc2USMAoUY2lwaGVyX3NlZWRfbW5lbW9uaWMYASADKAlSEmNpcGhlclNlZWRNbmVtb25pYxInCg9lbmNpcGhlcmVkX3NlZWQYAiABKAxSDmVuY2lwaGVyZWRTZWVk');
@$core.Deprecated('Use initWalletRequestDescriptor instead')
const InitWalletRequest$json = const {
  '1': 'InitWalletRequest',
  '2': const [
    const {'1': 'wallet_password', '3': 1, '4': 1, '5': 12, '10': 'walletPassword'},
    const {'1': 'cipher_seed_mnemonic', '3': 2, '4': 3, '5': 9, '10': 'cipherSeedMnemonic'},
    const {'1': 'aezeed_passphrase', '3': 3, '4': 1, '5': 12, '10': 'aezeedPassphrase'},
    const {'1': 'recovery_window', '3': 4, '4': 1, '5': 5, '10': 'recoveryWindow'},
    const {'1': 'channel_backups', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.ChanBackupSnapshot', '10': 'channelBackups'},
    const {'1': 'stateless_init', '3': 6, '4': 1, '5': 8, '10': 'statelessInit'},
    const {'1': 'extended_master_key', '3': 7, '4': 1, '5': 9, '10': 'extendedMasterKey'},
    const {'1': 'extended_master_key_birthday_timestamp', '3': 8, '4': 1, '5': 4, '10': 'extendedMasterKeyBirthdayTimestamp'},
    const {'1': 'watch_only', '3': 9, '4': 1, '5': 11, '6': '.lnrpc.WatchOnly', '10': 'watchOnly'},
  ],
};

/// Descriptor for `InitWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initWalletRequestDescriptor = $convert.base64Decode('ChFJbml0V2FsbGV0UmVxdWVzdBInCg93YWxsZXRfcGFzc3dvcmQYASABKAxSDndhbGxldFBhc3N3b3JkEjAKFGNpcGhlcl9zZWVkX21uZW1vbmljGAIgAygJUhJjaXBoZXJTZWVkTW5lbW9uaWMSKwoRYWV6ZWVkX3Bhc3NwaHJhc2UYAyABKAxSEGFlemVlZFBhc3NwaHJhc2USJwoPcmVjb3Zlcnlfd2luZG93GAQgASgFUg5yZWNvdmVyeVdpbmRvdxJCCg9jaGFubmVsX2JhY2t1cHMYBSABKAsyGS5sbnJwYy5DaGFuQmFja3VwU25hcHNob3RSDmNoYW5uZWxCYWNrdXBzEiUKDnN0YXRlbGVzc19pbml0GAYgASgIUg1zdGF0ZWxlc3NJbml0Ei4KE2V4dGVuZGVkX21hc3Rlcl9rZXkYByABKAlSEWV4dGVuZGVkTWFzdGVyS2V5ElIKJmV4dGVuZGVkX21hc3Rlcl9rZXlfYmlydGhkYXlfdGltZXN0YW1wGAggASgEUiJleHRlbmRlZE1hc3RlcktleUJpcnRoZGF5VGltZXN0YW1wEi8KCndhdGNoX29ubHkYCSABKAsyEC5sbnJwYy5XYXRjaE9ubHlSCXdhdGNoT25seQ==');
@$core.Deprecated('Use initWalletResponseDescriptor instead')
const InitWalletResponse$json = const {
  '1': 'InitWalletResponse',
  '2': const [
    const {'1': 'admin_macaroon', '3': 1, '4': 1, '5': 12, '10': 'adminMacaroon'},
  ],
};

/// Descriptor for `InitWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initWalletResponseDescriptor = $convert.base64Decode('ChJJbml0V2FsbGV0UmVzcG9uc2USJQoOYWRtaW5fbWFjYXJvb24YASABKAxSDWFkbWluTWFjYXJvb24=');
@$core.Deprecated('Use watchOnlyDescriptor instead')
const WatchOnly$json = const {
  '1': 'WatchOnly',
  '2': const [
    const {'1': 'master_key_birthday_timestamp', '3': 1, '4': 1, '5': 4, '10': 'masterKeyBirthdayTimestamp'},
    const {'1': 'master_key_fingerprint', '3': 2, '4': 1, '5': 12, '10': 'masterKeyFingerprint'},
    const {'1': 'accounts', '3': 3, '4': 3, '5': 11, '6': '.lnrpc.WatchOnlyAccount', '10': 'accounts'},
  ],
};

/// Descriptor for `WatchOnly`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchOnlyDescriptor = $convert.base64Decode('CglXYXRjaE9ubHkSQQodbWFzdGVyX2tleV9iaXJ0aGRheV90aW1lc3RhbXAYASABKARSGm1hc3RlcktleUJpcnRoZGF5VGltZXN0YW1wEjQKFm1hc3Rlcl9rZXlfZmluZ2VycHJpbnQYAiABKAxSFG1hc3RlcktleUZpbmdlcnByaW50EjMKCGFjY291bnRzGAMgAygLMhcubG5ycGMuV2F0Y2hPbmx5QWNjb3VudFIIYWNjb3VudHM=');
@$core.Deprecated('Use watchOnlyAccountDescriptor instead')
const WatchOnlyAccount$json = const {
  '1': 'WatchOnlyAccount',
  '2': const [
    const {'1': 'purpose', '3': 1, '4': 1, '5': 13, '10': 'purpose'},
    const {'1': 'coin_type', '3': 2, '4': 1, '5': 13, '10': 'coinType'},
    const {'1': 'account', '3': 3, '4': 1, '5': 13, '10': 'account'},
    const {'1': 'xpub', '3': 4, '4': 1, '5': 9, '10': 'xpub'},
  ],
};

/// Descriptor for `WatchOnlyAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchOnlyAccountDescriptor = $convert.base64Decode('ChBXYXRjaE9ubHlBY2NvdW50EhgKB3B1cnBvc2UYASABKA1SB3B1cnBvc2USGwoJY29pbl90eXBlGAIgASgNUghjb2luVHlwZRIYCgdhY2NvdW50GAMgASgNUgdhY2NvdW50EhIKBHhwdWIYBCABKAlSBHhwdWI=');
@$core.Deprecated('Use unlockWalletRequestDescriptor instead')
const UnlockWalletRequest$json = const {
  '1': 'UnlockWalletRequest',
  '2': const [
    const {'1': 'wallet_password', '3': 1, '4': 1, '5': 12, '10': 'walletPassword'},
    const {'1': 'recovery_window', '3': 2, '4': 1, '5': 5, '10': 'recoveryWindow'},
    const {'1': 'channel_backups', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChanBackupSnapshot', '10': 'channelBackups'},
    const {'1': 'stateless_init', '3': 4, '4': 1, '5': 8, '10': 'statelessInit'},
  ],
};

/// Descriptor for `UnlockWalletRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockWalletRequestDescriptor = $convert.base64Decode('ChNVbmxvY2tXYWxsZXRSZXF1ZXN0EicKD3dhbGxldF9wYXNzd29yZBgBIAEoDFIOd2FsbGV0UGFzc3dvcmQSJwoPcmVjb3Zlcnlfd2luZG93GAIgASgFUg5yZWNvdmVyeVdpbmRvdxJCCg9jaGFubmVsX2JhY2t1cHMYAyABKAsyGS5sbnJwYy5DaGFuQmFja3VwU25hcHNob3RSDmNoYW5uZWxCYWNrdXBzEiUKDnN0YXRlbGVzc19pbml0GAQgASgIUg1zdGF0ZWxlc3NJbml0');
@$core.Deprecated('Use unlockWalletResponseDescriptor instead')
const UnlockWalletResponse$json = const {
  '1': 'UnlockWalletResponse',
};

/// Descriptor for `UnlockWalletResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unlockWalletResponseDescriptor = $convert.base64Decode('ChRVbmxvY2tXYWxsZXRSZXNwb25zZQ==');
@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = const {
  '1': 'ChangePasswordRequest',
  '2': const [
    const {'1': 'current_password', '3': 1, '4': 1, '5': 12, '10': 'currentPassword'},
    const {'1': 'new_password', '3': 2, '4': 1, '5': 12, '10': 'newPassword'},
    const {'1': 'stateless_init', '3': 3, '4': 1, '5': 8, '10': 'statelessInit'},
    const {'1': 'new_macaroon_root_key', '3': 4, '4': 1, '5': 8, '10': 'newMacaroonRootKey'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode('ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSKQoQY3VycmVudF9wYXNzd29yZBgBIAEoDFIPY3VycmVudFBhc3N3b3JkEiEKDG5ld19wYXNzd29yZBgCIAEoDFILbmV3UGFzc3dvcmQSJQoOc3RhdGVsZXNzX2luaXQYAyABKAhSDXN0YXRlbGVzc0luaXQSMQoVbmV3X21hY2Fyb29uX3Jvb3Rfa2V5GAQgASgIUhJuZXdNYWNhcm9vblJvb3RLZXk=');
@$core.Deprecated('Use changePasswordResponseDescriptor instead')
const ChangePasswordResponse$json = const {
  '1': 'ChangePasswordResponse',
  '2': const [
    const {'1': 'admin_macaroon', '3': 1, '4': 1, '5': 12, '10': 'adminMacaroon'},
  ],
};

/// Descriptor for `ChangePasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordResponseDescriptor = $convert.base64Decode('ChZDaGFuZ2VQYXNzd29yZFJlc3BvbnNlEiUKDmFkbWluX21hY2Fyb29uGAEgASgMUg1hZG1pbk1hY2Fyb29u');
