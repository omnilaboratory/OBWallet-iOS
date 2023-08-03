///
//  Generated code. Do not modify.
//  source: walletunlocker.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lightning.pb.dart' as $0;

class GenSeedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenSeedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aezeedPassphrase', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'seedEntropy', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GenSeedRequest._() : super();
  factory GenSeedRequest({
    $core.List<$core.int>? aezeedPassphrase,
    $core.List<$core.int>? seedEntropy,
  }) {
    final _result = create();
    if (aezeedPassphrase != null) {
      _result.aezeedPassphrase = aezeedPassphrase;
    }
    if (seedEntropy != null) {
      _result.seedEntropy = seedEntropy;
    }
    return _result;
  }
  factory GenSeedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenSeedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenSeedRequest clone() => GenSeedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenSeedRequest copyWith(void Function(GenSeedRequest) updates) => super.copyWith((message) => updates(message as GenSeedRequest)) as GenSeedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenSeedRequest create() => GenSeedRequest._();
  GenSeedRequest createEmptyInstance() => create();
  static $pb.PbList<GenSeedRequest> createRepeated() => $pb.PbList<GenSeedRequest>();
  @$core.pragma('dart2js:noInline')
  static GenSeedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenSeedRequest>(create);
  static GenSeedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get aezeedPassphrase => $_getN(0);
  @$pb.TagNumber(1)
  set aezeedPassphrase($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAezeedPassphrase() => $_has(0);
  @$pb.TagNumber(1)
  void clearAezeedPassphrase() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get seedEntropy => $_getN(1);
  @$pb.TagNumber(2)
  set seedEntropy($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSeedEntropy() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeedEntropy() => clearField(2);
}

class GenSeedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenSeedResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cipherSeedMnemonic')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'encipheredSeed', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GenSeedResponse._() : super();
  factory GenSeedResponse({
    $core.Iterable<$core.String>? cipherSeedMnemonic,
    $core.List<$core.int>? encipheredSeed,
  }) {
    final _result = create();
    if (cipherSeedMnemonic != null) {
      _result.cipherSeedMnemonic.addAll(cipherSeedMnemonic);
    }
    if (encipheredSeed != null) {
      _result.encipheredSeed = encipheredSeed;
    }
    return _result;
  }
  factory GenSeedResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenSeedResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenSeedResponse clone() => GenSeedResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenSeedResponse copyWith(void Function(GenSeedResponse) updates) => super.copyWith((message) => updates(message as GenSeedResponse)) as GenSeedResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenSeedResponse create() => GenSeedResponse._();
  GenSeedResponse createEmptyInstance() => create();
  static $pb.PbList<GenSeedResponse> createRepeated() => $pb.PbList<GenSeedResponse>();
  @$core.pragma('dart2js:noInline')
  static GenSeedResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenSeedResponse>(create);
  static GenSeedResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get cipherSeedMnemonic => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get encipheredSeed => $_getN(1);
  @$pb.TagNumber(2)
  set encipheredSeed($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncipheredSeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncipheredSeed() => clearField(2);
}

class InitWalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitWalletRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletPassword', $pb.PbFieldType.OY)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cipherSeedMnemonic')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'aezeedPassphrase', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveryWindow', $pb.PbFieldType.O3)
    ..aOM<$0.ChanBackupSnapshot>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelBackups', subBuilder: $0.ChanBackupSnapshot.create)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statelessInit')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extendedMasterKey')
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extendedMasterKeyBirthdayTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<WatchOnly>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'watchOnly', subBuilder: WatchOnly.create)
    ..hasRequiredFields = false
  ;

  InitWalletRequest._() : super();
  factory InitWalletRequest({
    $core.List<$core.int>? walletPassword,
    $core.Iterable<$core.String>? cipherSeedMnemonic,
    $core.List<$core.int>? aezeedPassphrase,
    $core.int? recoveryWindow,
    $0.ChanBackupSnapshot? channelBackups,
    $core.bool? statelessInit,
    $core.String? extendedMasterKey,
    $fixnum.Int64? extendedMasterKeyBirthdayTimestamp,
    WatchOnly? watchOnly,
  }) {
    final _result = create();
    if (walletPassword != null) {
      _result.walletPassword = walletPassword;
    }
    if (cipherSeedMnemonic != null) {
      _result.cipherSeedMnemonic.addAll(cipherSeedMnemonic);
    }
    if (aezeedPassphrase != null) {
      _result.aezeedPassphrase = aezeedPassphrase;
    }
    if (recoveryWindow != null) {
      _result.recoveryWindow = recoveryWindow;
    }
    if (channelBackups != null) {
      _result.channelBackups = channelBackups;
    }
    if (statelessInit != null) {
      _result.statelessInit = statelessInit;
    }
    if (extendedMasterKey != null) {
      _result.extendedMasterKey = extendedMasterKey;
    }
    if (extendedMasterKeyBirthdayTimestamp != null) {
      _result.extendedMasterKeyBirthdayTimestamp = extendedMasterKeyBirthdayTimestamp;
    }
    if (watchOnly != null) {
      _result.watchOnly = watchOnly;
    }
    return _result;
  }
  factory InitWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitWalletRequest clone() => InitWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitWalletRequest copyWith(void Function(InitWalletRequest) updates) => super.copyWith((message) => updates(message as InitWalletRequest)) as InitWalletRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitWalletRequest create() => InitWalletRequest._();
  InitWalletRequest createEmptyInstance() => create();
  static $pb.PbList<InitWalletRequest> createRepeated() => $pb.PbList<InitWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static InitWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitWalletRequest>(create);
  static InitWalletRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get walletPassword => $_getN(0);
  @$pb.TagNumber(1)
  set walletPassword($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get cipherSeedMnemonic => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get aezeedPassphrase => $_getN(2);
  @$pb.TagNumber(3)
  set aezeedPassphrase($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAezeedPassphrase() => $_has(2);
  @$pb.TagNumber(3)
  void clearAezeedPassphrase() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get recoveryWindow => $_getIZ(3);
  @$pb.TagNumber(4)
  set recoveryWindow($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRecoveryWindow() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecoveryWindow() => clearField(4);

  @$pb.TagNumber(5)
  $0.ChanBackupSnapshot get channelBackups => $_getN(4);
  @$pb.TagNumber(5)
  set channelBackups($0.ChanBackupSnapshot v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannelBackups() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannelBackups() => clearField(5);
  @$pb.TagNumber(5)
  $0.ChanBackupSnapshot ensureChannelBackups() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.bool get statelessInit => $_getBF(5);
  @$pb.TagNumber(6)
  set statelessInit($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatelessInit() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatelessInit() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get extendedMasterKey => $_getSZ(6);
  @$pb.TagNumber(7)
  set extendedMasterKey($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExtendedMasterKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearExtendedMasterKey() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get extendedMasterKeyBirthdayTimestamp => $_getI64(7);
  @$pb.TagNumber(8)
  set extendedMasterKeyBirthdayTimestamp($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExtendedMasterKeyBirthdayTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearExtendedMasterKeyBirthdayTimestamp() => clearField(8);

  @$pb.TagNumber(9)
  WatchOnly get watchOnly => $_getN(8);
  @$pb.TagNumber(9)
  set watchOnly(WatchOnly v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasWatchOnly() => $_has(8);
  @$pb.TagNumber(9)
  void clearWatchOnly() => clearField(9);
  @$pb.TagNumber(9)
  WatchOnly ensureWatchOnly() => $_ensure(8);
}

class InitWalletResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InitWalletResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminMacaroon', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  InitWalletResponse._() : super();
  factory InitWalletResponse({
    $core.List<$core.int>? adminMacaroon,
  }) {
    final _result = create();
    if (adminMacaroon != null) {
      _result.adminMacaroon = adminMacaroon;
    }
    return _result;
  }
  factory InitWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitWalletResponse clone() => InitWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitWalletResponse copyWith(void Function(InitWalletResponse) updates) => super.copyWith((message) => updates(message as InitWalletResponse)) as InitWalletResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitWalletResponse create() => InitWalletResponse._();
  InitWalletResponse createEmptyInstance() => create();
  static $pb.PbList<InitWalletResponse> createRepeated() => $pb.PbList<InitWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static InitWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitWalletResponse>(create);
  static InitWalletResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get adminMacaroon => $_getN(0);
  @$pb.TagNumber(1)
  set adminMacaroon($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminMacaroon() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminMacaroon() => clearField(1);
}

class WatchOnly extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchOnly', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterKeyBirthdayTimestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'masterKeyFingerprint', $pb.PbFieldType.OY)
    ..pc<WatchOnlyAccount>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accounts', $pb.PbFieldType.PM, subBuilder: WatchOnlyAccount.create)
    ..hasRequiredFields = false
  ;

  WatchOnly._() : super();
  factory WatchOnly({
    $fixnum.Int64? masterKeyBirthdayTimestamp,
    $core.List<$core.int>? masterKeyFingerprint,
    $core.Iterable<WatchOnlyAccount>? accounts,
  }) {
    final _result = create();
    if (masterKeyBirthdayTimestamp != null) {
      _result.masterKeyBirthdayTimestamp = masterKeyBirthdayTimestamp;
    }
    if (masterKeyFingerprint != null) {
      _result.masterKeyFingerprint = masterKeyFingerprint;
    }
    if (accounts != null) {
      _result.accounts.addAll(accounts);
    }
    return _result;
  }
  factory WatchOnly.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchOnly.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchOnly clone() => WatchOnly()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchOnly copyWith(void Function(WatchOnly) updates) => super.copyWith((message) => updates(message as WatchOnly)) as WatchOnly; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchOnly create() => WatchOnly._();
  WatchOnly createEmptyInstance() => create();
  static $pb.PbList<WatchOnly> createRepeated() => $pb.PbList<WatchOnly>();
  @$core.pragma('dart2js:noInline')
  static WatchOnly getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchOnly>(create);
  static WatchOnly? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get masterKeyBirthdayTimestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set masterKeyBirthdayTimestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMasterKeyBirthdayTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearMasterKeyBirthdayTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get masterKeyFingerprint => $_getN(1);
  @$pb.TagNumber(2)
  set masterKeyFingerprint($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMasterKeyFingerprint() => $_has(1);
  @$pb.TagNumber(2)
  void clearMasterKeyFingerprint() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<WatchOnlyAccount> get accounts => $_getList(2);
}

class WatchOnlyAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WatchOnlyAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'purpose', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coinType', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xpub')
    ..hasRequiredFields = false
  ;

  WatchOnlyAccount._() : super();
  factory WatchOnlyAccount({
    $core.int? purpose,
    $core.int? coinType,
    $core.int? account,
    $core.String? xpub,
  }) {
    final _result = create();
    if (purpose != null) {
      _result.purpose = purpose;
    }
    if (coinType != null) {
      _result.coinType = coinType;
    }
    if (account != null) {
      _result.account = account;
    }
    if (xpub != null) {
      _result.xpub = xpub;
    }
    return _result;
  }
  factory WatchOnlyAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchOnlyAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchOnlyAccount clone() => WatchOnlyAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchOnlyAccount copyWith(void Function(WatchOnlyAccount) updates) => super.copyWith((message) => updates(message as WatchOnlyAccount)) as WatchOnlyAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WatchOnlyAccount create() => WatchOnlyAccount._();
  WatchOnlyAccount createEmptyInstance() => create();
  static $pb.PbList<WatchOnlyAccount> createRepeated() => $pb.PbList<WatchOnlyAccount>();
  @$core.pragma('dart2js:noInline')
  static WatchOnlyAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchOnlyAccount>(create);
  static WatchOnlyAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get purpose => $_getIZ(0);
  @$pb.TagNumber(1)
  set purpose($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPurpose() => $_has(0);
  @$pb.TagNumber(1)
  void clearPurpose() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get coinType => $_getIZ(1);
  @$pb.TagNumber(2)
  set coinType($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoinType() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoinType() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get account => $_getIZ(2);
  @$pb.TagNumber(3)
  set account($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccount() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get xpub => $_getSZ(3);
  @$pb.TagNumber(4)
  set xpub($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasXpub() => $_has(3);
  @$pb.TagNumber(4)
  void clearXpub() => clearField(4);
}

class UnlockWalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlockWalletRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'walletPassword', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveryWindow', $pb.PbFieldType.O3)
    ..aOM<$0.ChanBackupSnapshot>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelBackups', subBuilder: $0.ChanBackupSnapshot.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statelessInit')
    ..hasRequiredFields = false
  ;

  UnlockWalletRequest._() : super();
  factory UnlockWalletRequest({
    $core.List<$core.int>? walletPassword,
    $core.int? recoveryWindow,
    $0.ChanBackupSnapshot? channelBackups,
    $core.bool? statelessInit,
  }) {
    final _result = create();
    if (walletPassword != null) {
      _result.walletPassword = walletPassword;
    }
    if (recoveryWindow != null) {
      _result.recoveryWindow = recoveryWindow;
    }
    if (channelBackups != null) {
      _result.channelBackups = channelBackups;
    }
    if (statelessInit != null) {
      _result.statelessInit = statelessInit;
    }
    return _result;
  }
  factory UnlockWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlockWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlockWalletRequest clone() => UnlockWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlockWalletRequest copyWith(void Function(UnlockWalletRequest) updates) => super.copyWith((message) => updates(message as UnlockWalletRequest)) as UnlockWalletRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockWalletRequest create() => UnlockWalletRequest._();
  UnlockWalletRequest createEmptyInstance() => create();
  static $pb.PbList<UnlockWalletRequest> createRepeated() => $pb.PbList<UnlockWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static UnlockWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlockWalletRequest>(create);
  static UnlockWalletRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get walletPassword => $_getN(0);
  @$pb.TagNumber(1)
  set walletPassword($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasWalletPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearWalletPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get recoveryWindow => $_getIZ(1);
  @$pb.TagNumber(2)
  set recoveryWindow($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecoveryWindow() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecoveryWindow() => clearField(2);

  @$pb.TagNumber(3)
  $0.ChanBackupSnapshot get channelBackups => $_getN(2);
  @$pb.TagNumber(3)
  set channelBackups($0.ChanBackupSnapshot v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelBackups() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelBackups() => clearField(3);
  @$pb.TagNumber(3)
  $0.ChanBackupSnapshot ensureChannelBackups() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get statelessInit => $_getBF(3);
  @$pb.TagNumber(4)
  set statelessInit($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStatelessInit() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatelessInit() => clearField(4);
}

class UnlockWalletResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UnlockWalletResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  UnlockWalletResponse._() : super();
  factory UnlockWalletResponse() => create();
  factory UnlockWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UnlockWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UnlockWalletResponse clone() => UnlockWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UnlockWalletResponse copyWith(void Function(UnlockWalletResponse) updates) => super.copyWith((message) => updates(message as UnlockWalletResponse)) as UnlockWalletResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockWalletResponse create() => UnlockWalletResponse._();
  UnlockWalletResponse createEmptyInstance() => create();
  static $pb.PbList<UnlockWalletResponse> createRepeated() => $pb.PbList<UnlockWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static UnlockWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UnlockWalletResponse>(create);
  static UnlockWalletResponse? _defaultInstance;
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangePasswordRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currentPassword', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newPassword', $pb.PbFieldType.OY)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'statelessInit')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'newMacaroonRootKey')
    ..hasRequiredFields = false
  ;

  ChangePasswordRequest._() : super();
  factory ChangePasswordRequest({
    $core.List<$core.int>? currentPassword,
    $core.List<$core.int>? newPassword,
    $core.bool? statelessInit,
    $core.bool? newMacaroonRootKey,
  }) {
    final _result = create();
    if (currentPassword != null) {
      _result.currentPassword = currentPassword;
    }
    if (newPassword != null) {
      _result.newPassword = newPassword;
    }
    if (statelessInit != null) {
      _result.statelessInit = statelessInit;
    }
    if (newMacaroonRootKey != null) {
      _result.newMacaroonRootKey = newMacaroonRootKey;
    }
    return _result;
  }
  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangePasswordRequest clone() => ChangePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangePasswordRequest copyWith(void Function(ChangePasswordRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordRequest)) as ChangePasswordRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() => $pb.PbList<ChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get currentPassword => $_getN(0);
  @$pb.TagNumber(1)
  set currentPassword($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentPassword() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get newPassword => $_getN(1);
  @$pb.TagNumber(2)
  set newPassword($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get statelessInit => $_getBF(2);
  @$pb.TagNumber(3)
  set statelessInit($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatelessInit() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatelessInit() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get newMacaroonRootKey => $_getBF(3);
  @$pb.TagNumber(4)
  set newMacaroonRootKey($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNewMacaroonRootKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewMacaroonRootKey() => clearField(4);
}

class ChangePasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChangePasswordResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminMacaroon', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ChangePasswordResponse._() : super();
  factory ChangePasswordResponse({
    $core.List<$core.int>? adminMacaroon,
  }) {
    final _result = create();
    if (adminMacaroon != null) {
      _result.adminMacaroon = adminMacaroon;
    }
    return _result;
  }
  factory ChangePasswordResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangePasswordResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangePasswordResponse clone() => ChangePasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangePasswordResponse copyWith(void Function(ChangePasswordResponse) updates) => super.copyWith((message) => updates(message as ChangePasswordResponse)) as ChangePasswordResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse create() => ChangePasswordResponse._();
  ChangePasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordResponse> createRepeated() => $pb.PbList<ChangePasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordResponse>(create);
  static ChangePasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get adminMacaroon => $_getN(0);
  @$pb.TagNumber(1)
  set adminMacaroon($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminMacaroon() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminMacaroon() => clearField(1);
}

