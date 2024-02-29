//
//  Generated code. Do not modify.
//  source: user/account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class NetWork extends $pb.ProtobufEnum {
  static const NetWork UnKownNetWork = NetWork._(0, _omitEnumNames ? '' : 'UnKownNetWork');
  static const NetWork ETHEREUM = NetWork._(1, _omitEnumNames ? '' : 'ETHEREUM');
  static const NetWork POLYGON = NetWork._(2, _omitEnumNames ? '' : 'POLYGON');
  static const NetWork TRON = NetWork._(3, _omitEnumNames ? '' : 'TRON');
  static const NetWork ACOUNT = NetWork._(4, _omitEnumNames ? '' : 'ACOUNT');

  static const $core.List<NetWork> values = <NetWork> [
    UnKownNetWork,
    ETHEREUM,
    POLYGON,
    TRON,
    ACOUNT,
  ];

  static final $core.Map<$core.int, NetWork> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NetWork? valueOf($core.int value) => _byValue[value];

  const NetWork._($core.int v, $core.String n) : super(v, n);
}

class TrackedTx_ContractSymbol extends $pb.ProtobufEnum {
  static const TrackedTx_ContractSymbol USD = TrackedTx_ContractSymbol._(0, _omitEnumNames ? '' : 'USD');
  static const TrackedTx_ContractSymbol ETH = TrackedTx_ContractSymbol._(1, _omitEnumNames ? '' : 'ETH');
  static const TrackedTx_ContractSymbol USDT = TrackedTx_ContractSymbol._(2, _omitEnumNames ? '' : 'USDT');
  static const TrackedTx_ContractSymbol USDC = TrackedTx_ContractSymbol._(3, _omitEnumNames ? '' : 'USDC');
  static const TrackedTx_ContractSymbol NFT = TrackedTx_ContractSymbol._(4, _omitEnumNames ? '' : 'NFT');

  static const $core.List<TrackedTx_ContractSymbol> values = <TrackedTx_ContractSymbol> [
    USD,
    ETH,
    USDT,
    USDC,
    NFT,
  ];

  static final $core.Map<$core.int, TrackedTx_ContractSymbol> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TrackedTx_ContractSymbol? valueOf($core.int value) => _byValue[value];

  const TrackedTx_ContractSymbol._($core.int v, $core.String n) : super(v, n);
}

class TrackedTx_Status extends $pb.ProtobufEnum {
  static const TrackedTx_Status StatusUnknown = TrackedTx_Status._(0, _omitEnumNames ? '' : 'StatusUnknown');
  static const TrackedTx_Status TxInit = TrackedTx_Status._(1, _omitEnumNames ? '' : 'TxInit');
  static const TrackedTx_Status TxCommited = TrackedTx_Status._(2, _omitEnumNames ? '' : 'TxCommited');
  static const TrackedTx_Status TxConfirming = TrackedTx_Status._(3, _omitEnumNames ? '' : 'TxConfirming');
  static const TrackedTx_Status TxCommitFail = TrackedTx_Status._(4, _omitEnumNames ? '' : 'TxCommitFail');
  static const TrackedTx_Status TxFinish = TrackedTx_Status._(5, _omitEnumNames ? '' : 'TxFinish');

  static const $core.List<TrackedTx_Status> values = <TrackedTx_Status> [
    StatusUnknown,
    TxInit,
    TxCommited,
    TxConfirming,
    TxCommitFail,
    TxFinish,
  ];

  static final $core.Map<$core.int, TrackedTx_Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TrackedTx_Status? valueOf($core.int value) => _byValue[value];

  const TrackedTx_Status._($core.int v, $core.String n) : super(v, n);
}

class AccountHistory_SourceType extends $pb.ProtobufEnum {
  static const AccountHistory_SourceType UnKnow = AccountHistory_SourceType._(0, _omitEnumNames ? '' : 'UnKnow');
  static const AccountHistory_SourceType Recharge = AccountHistory_SourceType._(1, _omitEnumNames ? '' : 'Recharge');
  static const AccountHistory_SourceType Withdraw = AccountHistory_SourceType._(2, _omitEnumNames ? '' : 'Withdraw');
  static const AccountHistory_SourceType Swap = AccountHistory_SourceType._(3, _omitEnumNames ? '' : 'Swap');
  static const AccountHistory_SourceType CreateCard = AccountHistory_SourceType._(4, _omitEnumNames ? '' : 'CreateCard');
  static const AccountHistory_SourceType CreatePCard = AccountHistory_SourceType._(8, _omitEnumNames ? '' : 'CreatePCard');
  static const AccountHistory_SourceType TokenTransfer = AccountHistory_SourceType._(5, _omitEnumNames ? '' : 'TokenTransfer');
  static const AccountHistory_SourceType Reward = AccountHistory_SourceType._(6, _omitEnumNames ? '' : 'Reward');
  static const AccountHistory_SourceType TelaRecharge = AccountHistory_SourceType._(7, _omitEnumNames ? '' : 'TelaRecharge');

  static const $core.List<AccountHistory_SourceType> values = <AccountHistory_SourceType> [
    UnKnow,
    Recharge,
    Withdraw,
    Swap,
    CreateCard,
    CreatePCard,
    TokenTransfer,
    Reward,
    TelaRecharge,
  ];

  static final $core.Map<$core.int, AccountHistory_SourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountHistory_SourceType? valueOf($core.int value) => _byValue[value];

  const AccountHistory_SourceType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
