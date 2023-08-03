///
//  Generated code. Do not modify.
//  source: lightning.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use addressTypeDescriptor instead')
const AddressType$json = const {
  '1': 'AddressType',
  '2': const [
    const {'1': 'WITNESS_PUBKEY_HASH_Disabled', '2': 0},
    const {'1': 'NESTED_PUBKEY_HASH_Disabled', '2': 1},
    const {'1': 'PUBKEY', '2': 2},
    const {'1': 'UNUSED_WITNESS_PUBKEY_HASH', '2': 3},
    const {'1': 'UNUSED_NESTED_PUBKEY_HASH', '2': 4},
    const {'1': 'NFT_WITNESS_PUBKEY_HASH', '2': 5},
    const {'1': 'TAPROOT_PUBKEY', '2': 6},
  ],
};

/// Descriptor for `AddressType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List addressTypeDescriptor = $convert.base64Decode('CgtBZGRyZXNzVHlwZRIgChxXSVRORVNTX1BVQktFWV9IQVNIX0Rpc2FibGVkEAASHwobTkVTVEVEX1BVQktFWV9IQVNIX0Rpc2FibGVkEAESCgoGUFVCS0VZEAISHgoaVU5VU0VEX1dJVE5FU1NfUFVCS0VZX0hBU0gQAxIdChlVTlVTRURfTkVTVEVEX1BVQktFWV9IQVNIEAQSGwoXTkZUX1dJVE5FU1NfUFVCS0VZX0hBU0gQBRISCg5UQVBST09UX1BVQktFWRAG');
@$core.Deprecated('Use commitmentTypeDescriptor instead')
const CommitmentType$json = const {
  '1': 'CommitmentType',
  '2': const [
    const {'1': 'UNKNOWN_COMMITMENT_TYPE', '2': 0},
    const {'1': 'LEGACY', '2': 1},
    const {'1': 'STATIC_REMOTE_KEY', '2': 2},
    const {'1': 'ANCHORS', '2': 3},
    const {'1': 'SCRIPT_ENFORCED_LEASE', '2': 4},
  ],
};

/// Descriptor for `CommitmentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commitmentTypeDescriptor = $convert.base64Decode('Cg5Db21taXRtZW50VHlwZRIbChdVTktOT1dOX0NPTU1JVE1FTlRfVFlQRRAAEgoKBkxFR0FDWRABEhUKEVNUQVRJQ19SRU1PVEVfS0VZEAISCwoHQU5DSE9SUxADEhkKFVNDUklQVF9FTkZPUkNFRF9MRUFTRRAE');
@$core.Deprecated('Use initiatorDescriptor instead')
const Initiator$json = const {
  '1': 'Initiator',
  '2': const [
    const {'1': 'INITIATOR_UNKNOWN', '2': 0},
    const {'1': 'INITIATOR_LOCAL', '2': 1},
    const {'1': 'INITIATOR_REMOTE', '2': 2},
    const {'1': 'INITIATOR_BOTH', '2': 3},
  ],
};

/// Descriptor for `Initiator`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List initiatorDescriptor = $convert.base64Decode('CglJbml0aWF0b3ISFQoRSU5JVElBVE9SX1VOS05PV04QABITCg9JTklUSUFUT1JfTE9DQUwQARIUChBJTklUSUFUT1JfUkVNT1RFEAISEgoOSU5JVElBVE9SX0JPVEgQAw==');
@$core.Deprecated('Use resolutionTypeDescriptor instead')
const ResolutionType$json = const {
  '1': 'ResolutionType',
  '2': const [
    const {'1': 'TYPE_UNKNOWN', '2': 0},
    const {'1': 'ANCHOR', '2': 1},
    const {'1': 'INCOMING_HTLC', '2': 2},
    const {'1': 'OUTGOING_HTLC', '2': 3},
    const {'1': 'COMMIT', '2': 4},
  ],
};

/// Descriptor for `ResolutionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resolutionTypeDescriptor = $convert.base64Decode('Cg5SZXNvbHV0aW9uVHlwZRIQCgxUWVBFX1VOS05PV04QABIKCgZBTkNIT1IQARIRCg1JTkNPTUlOR19IVExDEAISEQoNT1VUR09JTkdfSFRMQxADEgoKBkNPTU1JVBAE');
@$core.Deprecated('Use resolutionOutcomeDescriptor instead')
const ResolutionOutcome$json = const {
  '1': 'ResolutionOutcome',
  '2': const [
    const {'1': 'OUTCOME_UNKNOWN', '2': 0},
    const {'1': 'CLAIMED', '2': 1},
    const {'1': 'UNCLAIMED', '2': 2},
    const {'1': 'ABANDONED', '2': 3},
    const {'1': 'FIRST_STAGE', '2': 4},
    const {'1': 'TIMEOUT', '2': 5},
  ],
};

/// Descriptor for `ResolutionOutcome`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resolutionOutcomeDescriptor = $convert.base64Decode('ChFSZXNvbHV0aW9uT3V0Y29tZRITCg9PVVRDT01FX1VOS05PV04QABILCgdDTEFJTUVEEAESDQoJVU5DTEFJTUVEEAISDQoJQUJBTkRPTkVEEAMSDwoLRklSU1RfU1RBR0UQBBILCgdUSU1FT1VUEAU=');
@$core.Deprecated('Use nodeMetricTypeDescriptor instead')
const NodeMetricType$json = const {
  '1': 'NodeMetricType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'BETWEENNESS_CENTRALITY', '2': 1},
  ],
};

/// Descriptor for `NodeMetricType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nodeMetricTypeDescriptor = $convert.base64Decode('Cg5Ob2RlTWV0cmljVHlwZRILCgdVTktOT1dOEAASGgoWQkVUV0VFTk5FU1NfQ0VOVFJBTElUWRAB');
@$core.Deprecated('Use invoiceHTLCStateDescriptor instead')
const InvoiceHTLCState$json = const {
  '1': 'InvoiceHTLCState',
  '2': const [
    const {'1': 'ACCEPTED', '2': 0},
    const {'1': 'SETTLED', '2': 1},
    const {'1': 'CANCELED', '2': 2},
  ],
};

/// Descriptor for `InvoiceHTLCState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List invoiceHTLCStateDescriptor = $convert.base64Decode('ChBJbnZvaWNlSFRMQ1N0YXRlEgwKCEFDQ0VQVEVEEAASCwoHU0VUVExFRBABEgwKCENBTkNFTEVEEAI=');
@$core.Deprecated('Use paymentFailureReasonDescriptor instead')
const PaymentFailureReason$json = const {
  '1': 'PaymentFailureReason',
  '2': const [
    const {'1': 'FAILURE_REASON_NONE', '2': 0},
    const {'1': 'FAILURE_REASON_TIMEOUT', '2': 1},
    const {'1': 'FAILURE_REASON_NO_ROUTE', '2': 2},
    const {'1': 'FAILURE_REASON_ERROR', '2': 3},
    const {'1': 'FAILURE_REASON_INCORRECT_PAYMENT_DETAILS', '2': 4},
    const {'1': 'FAILURE_REASON_INSUFFICIENT_BALANCE', '2': 5},
  ],
};

/// Descriptor for `PaymentFailureReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentFailureReasonDescriptor = $convert.base64Decode('ChRQYXltZW50RmFpbHVyZVJlYXNvbhIXChNGQUlMVVJFX1JFQVNPTl9OT05FEAASGgoWRkFJTFVSRV9SRUFTT05fVElNRU9VVBABEhsKF0ZBSUxVUkVfUkVBU09OX05PX1JPVVRFEAISGAoURkFJTFVSRV9SRUFTT05fRVJST1IQAxIsCihGQUlMVVJFX1JFQVNPTl9JTkNPUlJFQ1RfUEFZTUVOVF9ERVRBSUxTEAQSJwojRkFJTFVSRV9SRUFTT05fSU5TVUZGSUNJRU5UX0JBTEFOQ0UQBQ==');
@$core.Deprecated('Use featureBitDescriptor instead')
const FeatureBit$json = const {
  '1': 'FeatureBit',
  '2': const [
    const {'1': 'DATALOSS_PROTECT_REQ', '2': 0},
    const {'1': 'DATALOSS_PROTECT_OPT', '2': 1},
    const {'1': 'INITIAL_ROUING_SYNC', '2': 3},
    const {'1': 'UPFRONT_SHUTDOWN_SCRIPT_REQ', '2': 4},
    const {'1': 'UPFRONT_SHUTDOWN_SCRIPT_OPT', '2': 5},
    const {'1': 'GOSSIP_QUERIES_REQ', '2': 6},
    const {'1': 'GOSSIP_QUERIES_OPT', '2': 7},
    const {'1': 'TLV_ONION_REQ', '2': 8},
    const {'1': 'TLV_ONION_OPT', '2': 9},
    const {'1': 'EXT_GOSSIP_QUERIES_REQ', '2': 10},
    const {'1': 'EXT_GOSSIP_QUERIES_OPT', '2': 11},
    const {'1': 'STATIC_REMOTE_KEY_REQ', '2': 12},
    const {'1': 'STATIC_REMOTE_KEY_OPT', '2': 13},
    const {'1': 'PAYMENT_ADDR_REQ', '2': 14},
    const {'1': 'PAYMENT_ADDR_OPT', '2': 15},
    const {'1': 'MPP_REQ', '2': 16},
    const {'1': 'MPP_OPT', '2': 17},
    const {'1': 'WUMBO_CHANNELS_REQ', '2': 18},
    const {'1': 'WUMBO_CHANNELS_OPT', '2': 19},
    const {'1': 'ANCHORS_REQ', '2': 20},
    const {'1': 'ANCHORS_OPT', '2': 21},
    const {'1': 'ANCHORS_ZERO_FEE_HTLC_REQ', '2': 22},
    const {'1': 'ANCHORS_ZERO_FEE_HTLC_OPT', '2': 23},
    const {'1': 'AMP_REQ', '2': 30},
    const {'1': 'AMP_OPT', '2': 31},
  ],
};

/// Descriptor for `FeatureBit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List featureBitDescriptor = $convert.base64Decode('CgpGZWF0dXJlQml0EhgKFERBVEFMT1NTX1BST1RFQ1RfUkVREAASGAoUREFUQUxPU1NfUFJPVEVDVF9PUFQQARIXChNJTklUSUFMX1JPVUlOR19TWU5DEAMSHwobVVBGUk9OVF9TSFVURE9XTl9TQ1JJUFRfUkVREAQSHwobVVBGUk9OVF9TSFVURE9XTl9TQ1JJUFRfT1BUEAUSFgoSR09TU0lQX1FVRVJJRVNfUkVREAYSFgoSR09TU0lQX1FVRVJJRVNfT1BUEAcSEQoNVExWX09OSU9OX1JFURAIEhEKDVRMVl9PTklPTl9PUFQQCRIaChZFWFRfR09TU0lQX1FVRVJJRVNfUkVREAoSGgoWRVhUX0dPU1NJUF9RVUVSSUVTX09QVBALEhkKFVNUQVRJQ19SRU1PVEVfS0VZX1JFURAMEhkKFVNUQVRJQ19SRU1PVEVfS0VZX09QVBANEhQKEFBBWU1FTlRfQUREUl9SRVEQDhIUChBQQVlNRU5UX0FERFJfT1BUEA8SCwoHTVBQX1JFURAQEgsKB01QUF9PUFQQERIWChJXVU1CT19DSEFOTkVMU19SRVEQEhIWChJXVU1CT19DSEFOTkVMU19PUFQQExIPCgtBTkNIT1JTX1JFURAUEg8KC0FOQ0hPUlNfT1BUEBUSHQoZQU5DSE9SU19aRVJPX0ZFRV9IVExDX1JFURAWEh0KGUFOQ0hPUlNfWkVST19GRUVfSFRMQ19PUFQQFxILCgdBTVBfUkVREB4SCwoHQU1QX09QVBAf');
@$core.Deprecated('Use updateFailureDescriptor instead')
const UpdateFailure$json = const {
  '1': 'UpdateFailure',
  '2': const [
    const {'1': 'UPDATE_FAILURE_UNKNOWN', '2': 0},
    const {'1': 'UPDATE_FAILURE_PENDING', '2': 1},
    const {'1': 'UPDATE_FAILURE_NOT_FOUND', '2': 2},
    const {'1': 'UPDATE_FAILURE_INTERNAL_ERR', '2': 3},
    const {'1': 'UPDATE_FAILURE_INVALID_PARAMETER', '2': 4},
  ],
};

/// Descriptor for `UpdateFailure`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List updateFailureDescriptor = $convert.base64Decode('Cg1VcGRhdGVGYWlsdXJlEhoKFlVQREFURV9GQUlMVVJFX1VOS05PV04QABIaChZVUERBVEVfRkFJTFVSRV9QRU5ESU5HEAESHAoYVVBEQVRFX0ZBSUxVUkVfTk9UX0ZPVU5EEAISHwobVVBEQVRFX0ZBSUxVUkVfSU5URVJOQUxfRVJSEAMSJAogVVBEQVRFX0ZBSUxVUkVfSU5WQUxJRF9QQVJBTUVURVIQBA==');
@$core.Deprecated('Use listAddressesRequestDescriptor instead')
const ListAddressesRequest$json = const {
  '1': 'ListAddressesRequest',
  '2': const [
    const {'1': 'address_type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.AddressType', '10': 'addressType'},
  ],
};

/// Descriptor for `ListAddressesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAddressesRequestDescriptor = $convert.base64Decode('ChRMaXN0QWRkcmVzc2VzUmVxdWVzdBI1CgxhZGRyZXNzX3R5cGUYASABKA4yEi5sbnJwYy5BZGRyZXNzVHlwZVILYWRkcmVzc1R5cGU=');
@$core.Deprecated('Use listAddressesResponseDescriptor instead')
const ListAddressesResponse$json = const {
  '1': 'ListAddressesResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `ListAddressesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAddressesResponseDescriptor = $convert.base64Decode('ChVMaXN0QWRkcmVzc2VzUmVzcG9uc2USFAoFaXRlbXMYASADKAlSBWl0ZW1z');
@$core.Deprecated('Use recAddressDescriptor instead')
const RecAddress$json = const {
  '1': 'RecAddress',
  '2': const [
    const {'1': 'Addre', '3': 1, '4': 1, '5': 9, '10': 'Addre'},
    const {'1': 'IsDefault', '3': 2, '4': 1, '5': 8, '10': 'IsDefault'},
  ],
};

/// Descriptor for `RecAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recAddressDescriptor = $convert.base64Decode('CgpSZWNBZGRyZXNzEhQKBUFkZHJlGAEgASgJUgVBZGRyZRIcCglJc0RlZmF1bHQYAiABKAhSCUlzRGVmYXVsdA==');
@$core.Deprecated('Use listRecAddressRequestDescriptor instead')
const ListRecAddressRequest$json = const {
  '1': 'ListRecAddressRequest',
};

/// Descriptor for `ListRecAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRecAddressRequestDescriptor = $convert.base64Decode('ChVMaXN0UmVjQWRkcmVzc1JlcXVlc3Q=');
@$core.Deprecated('Use listRecAddressResponseDescriptor instead')
const ListRecAddressResponse$json = const {
  '1': 'ListRecAddressResponse',
  '2': const [
    const {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.RecAddress', '10': 'items'},
  ],
};

/// Descriptor for `ListRecAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRecAddressResponseDescriptor = $convert.base64Decode('ChZMaXN0UmVjQWRkcmVzc1Jlc3BvbnNlEicKBWl0ZW1zGAEgAygLMhEubG5ycGMuUmVjQWRkcmVzc1IFaXRlbXM=');
@$core.Deprecated('Use setDefaultAddressRequestDescriptor instead')
const SetDefaultAddressRequest$json = const {
  '1': 'SetDefaultAddressRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `SetDefaultAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDefaultAddressRequestDescriptor = $convert.base64Decode('ChhTZXREZWZhdWx0QWRkcmVzc1JlcXVlc3QSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use setDefaultAddressResponseDescriptor instead')
const SetDefaultAddressResponse$json = const {
  '1': 'SetDefaultAddressResponse',
};

/// Descriptor for `SetDefaultAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setDefaultAddressResponseDescriptor = $convert.base64Decode('ChlTZXREZWZhdWx0QWRkcmVzc1Jlc3BvbnNl');
@$core.Deprecated('Use listAssetRequestDescriptor instead')
const ListAssetRequest$json = const {
  '1': 'ListAssetRequest',
};

/// Descriptor for `ListAssetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAssetRequestDescriptor = $convert.base64Decode('ChBMaXN0QXNzZXRSZXF1ZXN0');
@$core.Deprecated('Use getOmniTransactionRequestDescriptor instead')
const GetOmniTransactionRequest$json = const {
  '1': 'GetOmniTransactionRequest',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `GetOmniTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOmniTransactionRequestDescriptor = $convert.base64Decode('ChlHZXRPbW5pVHJhbnNhY3Rpb25SZXF1ZXN0EhIKBHR4aWQYASABKAlSBHR4aWQ=');
@$core.Deprecated('Use listTranscationsRequestDescriptor instead')
const ListTranscationsRequest$json = const {
  '1': 'ListTranscationsRequest',
  '2': const [
    const {'1': 'addrs', '3': 1, '4': 3, '5': 9, '10': 'addrs'},
  ],
};

/// Descriptor for `ListTranscationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTranscationsRequestDescriptor = $convert.base64Decode('ChdMaXN0VHJhbnNjYXRpb25zUmVxdWVzdBIUCgVhZGRycxgBIAMoCVIFYWRkcnM=');
@$core.Deprecated('Use listTranscationsResponseDescriptor instead')
const ListTranscationsResponse$json = const {
  '1': 'ListTranscationsResponse',
  '2': const [
    const {'1': 'List', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.AssetTx', '10': 'List'},
  ],
};

/// Descriptor for `ListTranscationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTranscationsResponseDescriptor = $convert.base64Decode('ChhMaXN0VHJhbnNjYXRpb25zUmVzcG9uc2USIgoETGlzdBgBIAMoCzIOLmxucnBjLkFzc2V0VHhSBExpc3Q=');
@$core.Deprecated('Use receiverDescriptor instead')
const receiver$json = const {
  '1': 'receiver',
  '2': const [
    const {'1': 'output', '3': 1, '4': 1, '5': 3, '10': 'output'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 9, '10': 'amount'},
  ],
};

/// Descriptor for `receiver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiverDescriptor = $convert.base64Decode('CghyZWNlaXZlchIWCgZvdXRwdXQYASABKANSBm91dHB1dBIYCgdhZGRyZXNzGAIgASgJUgdhZGRyZXNzEhYKBmFtb3VudBgDIAEoCVIGYW1vdW50');
@$core.Deprecated('Use assetTxDescriptor instead')
const AssetTx$json = const {
  '1': 'AssetTx',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'block', '3': 2, '4': 1, '5': 3, '10': 'block'},
    const {'1': 'blockhash', '3': 3, '4': 1, '5': 9, '10': 'blockhash'},
    const {'1': 'blocktime', '3': 4, '4': 1, '5': 3, '10': 'blocktime'},
    const {'1': 'confirmations', '3': 5, '4': 1, '5': 3, '10': 'confirmations'},
    const {'1': 'divisible', '3': 6, '4': 1, '5': 8, '10': 'divisible'},
    const {'1': 'fee', '3': 7, '4': 1, '5': 9, '10': 'fee'},
    const {'1': 'ismine', '3': 8, '4': 1, '5': 8, '10': 'ismine'},
    const {'1': 'positioninblock', '3': 9, '4': 1, '5': 3, '10': 'positioninblock'},
    const {'1': 'propertyid', '3': 10, '4': 1, '5': 3, '10': 'propertyid'},
    const {'1': 'referenceaddress', '3': 11, '4': 1, '5': 9, '10': 'referenceaddress'},
    const {'1': 'sendingaddress', '3': 12, '4': 1, '5': 9, '10': 'sendingaddress'},
    const {'1': 'txid', '3': 13, '4': 1, '5': 9, '10': 'txid'},
    const {'1': 'type', '3': 14, '4': 1, '5': 9, '10': 'type'},
    const {'1': 'type_int', '3': 15, '4': 1, '5': 3, '10': 'typeInt'},
    const {'1': 'valid', '3': 16, '4': 1, '5': 8, '10': 'valid'},
    const {'1': 'version', '3': 17, '4': 1, '5': 3, '10': 'version'},
    const {'1': 'receivers', '3': 18, '4': 3, '5': 11, '6': '.lnrpc.receiver', '10': 'receivers'},
    const {'1': 'totalamount', '3': 19, '4': 1, '5': 9, '10': 'totalamount'},
  ],
};

/// Descriptor for `AssetTx`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetTxDescriptor = $convert.base64Decode('CgdBc3NldFR4EhYKBmFtb3VudBgBIAEoCVIGYW1vdW50EhQKBWJsb2NrGAIgASgDUgVibG9jaxIcCglibG9ja2hhc2gYAyABKAlSCWJsb2NraGFzaBIcCglibG9ja3RpbWUYBCABKANSCWJsb2NrdGltZRIkCg1jb25maXJtYXRpb25zGAUgASgDUg1jb25maXJtYXRpb25zEhwKCWRpdmlzaWJsZRgGIAEoCFIJZGl2aXNpYmxlEhAKA2ZlZRgHIAEoCVIDZmVlEhYKBmlzbWluZRgIIAEoCFIGaXNtaW5lEigKD3Bvc2l0aW9uaW5ibG9jaxgJIAEoA1IPcG9zaXRpb25pbmJsb2NrEh4KCnByb3BlcnR5aWQYCiABKANSCnByb3BlcnR5aWQSKgoQcmVmZXJlbmNlYWRkcmVzcxgLIAEoCVIQcmVmZXJlbmNlYWRkcmVzcxImCg5zZW5kaW5nYWRkcmVzcxgMIAEoCVIOc2VuZGluZ2FkZHJlc3MSEgoEdHhpZBgNIAEoCVIEdHhpZBISCgR0eXBlGA4gASgJUgR0eXBlEhkKCHR5cGVfaW50GA8gASgDUgd0eXBlSW50EhQKBXZhbGlkGBAgASgIUgV2YWxpZBIYCgd2ZXJzaW9uGBEgASgDUgd2ZXJzaW9uEi0KCXJlY2VpdmVycxgSIAMoCzIPLmxucnBjLnJlY2VpdmVyUglyZWNlaXZlcnMSIAoLdG90YWxhbW91bnQYEyABKAlSC3RvdGFsYW1vdW50');
@$core.Deprecated('Use listAssetResponseDescriptor instead')
const ListAssetResponse$json = const {
  '1': 'ListAssetResponse',
  '2': const [
    const {'1': 'List', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Asset', '10': 'List'},
  ],
};

/// Descriptor for `ListAssetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAssetResponseDescriptor = $convert.base64Decode('ChFMaXN0QXNzZXRSZXNwb25zZRIgCgRMaXN0GAEgAygLMgwubG5ycGMuQXNzZXRSBExpc3Q=');
@$core.Deprecated('Use assetDescriptor instead')
const Asset$json = const {
  '1': 'Asset',
  '2': const [
    const {'1': 'propertyid', '3': 11, '4': 1, '5': 3, '10': 'propertyid'},
    const {'1': 'name', '3': 9, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'category', '3': 1, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'creationtxid', '3': 2, '4': 1, '5': 9, '10': 'creationtxid'},
    const {'1': 'data', '3': 3, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'delegate', '3': 4, '4': 1, '5': 9, '10': 'delegate'},
    const {'1': 'divisible', '3': 5, '4': 1, '5': 8, '10': 'divisible'},
    const {'1': 'fixedissuance', '3': 6, '4': 1, '5': 8, '10': 'fixedissuance'},
    const {'1': 'issuer', '3': 7, '4': 1, '5': 9, '10': 'issuer'},
    const {'1': 'managedissuance', '3': 8, '4': 1, '5': 8, '10': 'managedissuance'},
    const {'1': 'non_fungibletoken', '3': 10, '4': 1, '5': 8, '10': 'nonFungibletoken'},
    const {'1': 'subcategory', '3': 12, '4': 1, '5': 9, '10': 'subcategory'},
    const {'1': 'url', '3': 13, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `Asset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetDescriptor = $convert.base64Decode('CgVBc3NldBIeCgpwcm9wZXJ0eWlkGAsgASgDUgpwcm9wZXJ0eWlkEhIKBG5hbWUYCSABKAlSBG5hbWUSGgoIY2F0ZWdvcnkYASABKAlSCGNhdGVnb3J5EiIKDGNyZWF0aW9udHhpZBgCIAEoCVIMY3JlYXRpb250eGlkEhIKBGRhdGEYAyABKAlSBGRhdGESGgoIZGVsZWdhdGUYBCABKAlSCGRlbGVnYXRlEhwKCWRpdmlzaWJsZRgFIAEoCFIJZGl2aXNpYmxlEiQKDWZpeGVkaXNzdWFuY2UYBiABKAhSDWZpeGVkaXNzdWFuY2USFgoGaXNzdWVyGAcgASgJUgZpc3N1ZXISKAoPbWFuYWdlZGlzc3VhbmNlGAggASgIUg9tYW5hZ2VkaXNzdWFuY2USKwoRbm9uX2Z1bmdpYmxldG9rZW4YCiABKAhSEG5vbkZ1bmdpYmxldG9rZW4SIAoLc3ViY2F0ZWdvcnkYDCABKAlSC3N1YmNhdGVnb3J5EhAKA3VybBgNIAEoCVIDdXJs');
@$core.Deprecated('Use subscribeCustomMessagesRequestDescriptor instead')
const SubscribeCustomMessagesRequest$json = const {
  '1': 'SubscribeCustomMessagesRequest',
};

/// Descriptor for `SubscribeCustomMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeCustomMessagesRequestDescriptor = $convert.base64Decode('Ch5TdWJzY3JpYmVDdXN0b21NZXNzYWdlc1JlcXVlc3Q=');
@$core.Deprecated('Use customMessageDescriptor instead')
const CustomMessage$json = const {
  '1': 'CustomMessage',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 12, '10': 'peer'},
    const {'1': 'type', '3': 2, '4': 1, '5': 13, '10': 'type'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `CustomMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customMessageDescriptor = $convert.base64Decode('Cg1DdXN0b21NZXNzYWdlEhIKBHBlZXIYASABKAxSBHBlZXISEgoEdHlwZRgCIAEoDVIEdHlwZRISCgRkYXRhGAMgASgMUgRkYXRh');
@$core.Deprecated('Use sendCustomMessageRequestDescriptor instead')
const SendCustomMessageRequest$json = const {
  '1': 'SendCustomMessageRequest',
  '2': const [
    const {'1': 'peer', '3': 1, '4': 1, '5': 12, '10': 'peer'},
    const {'1': 'type', '3': 2, '4': 1, '5': 13, '10': 'type'},
    const {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `SendCustomMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCustomMessageRequestDescriptor = $convert.base64Decode('ChhTZW5kQ3VzdG9tTWVzc2FnZVJlcXVlc3QSEgoEcGVlchgBIAEoDFIEcGVlchISCgR0eXBlGAIgASgNUgR0eXBlEhIKBGRhdGEYAyABKAxSBGRhdGE=');
@$core.Deprecated('Use sendCustomMessageResponseDescriptor instead')
const SendCustomMessageResponse$json = const {
  '1': 'SendCustomMessageResponse',
};

/// Descriptor for `SendCustomMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCustomMessageResponseDescriptor = $convert.base64Decode('ChlTZW5kQ3VzdG9tTWVzc2FnZVJlc3BvbnNl');
@$core.Deprecated('Use utxoDescriptor instead')
const Utxo$json = const {
  '1': 'Utxo',
  '2': const [
    const {'1': 'address_type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.AddressType', '10': 'addressType'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'amount_sat', '3': 3, '4': 1, '5': 3, '10': 'amountSat'},
    const {'1': 'pk_script', '3': 4, '4': 1, '5': 9, '10': 'pkScript'},
    const {'1': 'outpoint', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'confirmations', '3': 6, '4': 1, '5': 3, '10': 'confirmations'},
  ],
};

/// Descriptor for `Utxo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxoDescriptor = $convert.base64Decode('CgRVdHhvEjUKDGFkZHJlc3NfdHlwZRgBIAEoDjISLmxucnBjLkFkZHJlc3NUeXBlUgthZGRyZXNzVHlwZRIYCgdhZGRyZXNzGAIgASgJUgdhZGRyZXNzEh0KCmFtb3VudF9zYXQYAyABKANSCWFtb3VudFNhdBIbCglwa19zY3JpcHQYBCABKAlSCHBrU2NyaXB0EisKCG91dHBvaW50GAUgASgLMg8ubG5ycGMuT3V0UG9pbnRSCG91dHBvaW50EiQKDWNvbmZpcm1hdGlvbnMYBiABKANSDWNvbmZpcm1hdGlvbnM=');
@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'tx_hash', '3': 1, '4': 1, '5': 9, '10': 'txHash'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'num_confirmations', '3': 3, '4': 1, '5': 5, '10': 'numConfirmations'},
    const {'1': 'block_hash', '3': 4, '4': 1, '5': 9, '10': 'blockHash'},
    const {'1': 'block_height', '3': 5, '4': 1, '5': 5, '10': 'blockHeight'},
    const {'1': 'time_stamp', '3': 6, '4': 1, '5': 3, '10': 'timeStamp'},
    const {'1': 'total_fees', '3': 7, '4': 1, '5': 3, '10': 'totalFees'},
    const {'1': 'dest_addresses', '3': 8, '4': 3, '5': 9, '10': 'destAddresses'},
    const {'1': 'raw_tx_hex', '3': 9, '4': 1, '5': 9, '10': 'rawTxHex'},
    const {'1': 'label', '3': 10, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode('CgtUcmFuc2FjdGlvbhIXCgd0eF9oYXNoGAEgASgJUgZ0eEhhc2gSFgoGYW1vdW50GAIgASgDUgZhbW91bnQSKwoRbnVtX2NvbmZpcm1hdGlvbnMYAyABKAVSEG51bUNvbmZpcm1hdGlvbnMSHQoKYmxvY2tfaGFzaBgEIAEoCVIJYmxvY2tIYXNoEiEKDGJsb2NrX2hlaWdodBgFIAEoBVILYmxvY2tIZWlnaHQSHQoKdGltZV9zdGFtcBgGIAEoA1IJdGltZVN0YW1wEh0KCnRvdGFsX2ZlZXMYByABKANSCXRvdGFsRmVlcxIlCg5kZXN0X2FkZHJlc3NlcxgIIAMoCVINZGVzdEFkZHJlc3NlcxIcCgpyYXdfdHhfaGV4GAkgASgJUghyYXdUeEhleBIUCgVsYWJlbBgKIAEoCVIFbGFiZWw=');
@$core.Deprecated('Use getTransactionsRequestDescriptor instead')
const GetTransactionsRequest$json = const {
  '1': 'GetTransactionsRequest',
  '2': const [
    const {'1': 'start_height', '3': 1, '4': 1, '5': 5, '10': 'startHeight'},
    const {'1': 'end_height', '3': 2, '4': 1, '5': 5, '10': 'endHeight'},
    const {'1': 'account', '3': 3, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `GetTransactionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionsRequestDescriptor = $convert.base64Decode('ChZHZXRUcmFuc2FjdGlvbnNSZXF1ZXN0EiEKDHN0YXJ0X2hlaWdodBgBIAEoBVILc3RhcnRIZWlnaHQSHQoKZW5kX2hlaWdodBgCIAEoBVIJZW5kSGVpZ2h0EhgKB2FjY291bnQYAyABKAlSB2FjY291bnQ=');
@$core.Deprecated('Use transactionDetailsDescriptor instead')
const TransactionDetails$json = const {
  '1': 'TransactionDetails',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Transaction', '10': 'transactions'},
  ],
};

/// Descriptor for `TransactionDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDetailsDescriptor = $convert.base64Decode('ChJUcmFuc2FjdGlvbkRldGFpbHMSNgoMdHJhbnNhY3Rpb25zGAEgAygLMhIubG5ycGMuVHJhbnNhY3Rpb25SDHRyYW5zYWN0aW9ucw==');
@$core.Deprecated('Use feeLimitDescriptor instead')
const FeeLimit$json = const {
  '1': 'FeeLimit',
  '2': const [
    const {'1': 'fixed_msat', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'fixedMsat'},
    const {'1': 'percent', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'percent'},
  ],
  '8': const [
    const {'1': 'limit'},
  ],
};

/// Descriptor for `FeeLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeLimitDescriptor = $convert.base64Decode('CghGZWVMaW1pdBIfCgpmaXhlZF9tc2F0GAMgASgDSABSCWZpeGVkTXNhdBIaCgdwZXJjZW50GAIgASgDSABSB3BlcmNlbnRCBwoFbGltaXQ=');
@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest$json = const {
  '1': 'SendRequest',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 12, '10': 'dest'},
    const {
      '1': 'dest_string',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'destString',
    },
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'asset_id', '3': 17, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'payment_hash', '3': 4, '4': 1, '5': 12, '10': 'paymentHash'},
    const {
      '1': 'payment_hash_string',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'paymentHashString',
    },
    const {'1': 'payment_request', '3': 6, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'final_cltv_delta', '3': 7, '4': 1, '5': 5, '10': 'finalCltvDelta'},
    const {'1': 'fee_limit', '3': 8, '4': 1, '5': 11, '6': '.lnrpc.FeeLimit', '10': 'feeLimit'},
    const {
      '1': 'outgoing_chan_id',
      '3': 9,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'last_hop_pubkey', '3': 13, '4': 1, '5': 12, '10': 'lastHopPubkey'},
    const {'1': 'cltv_limit', '3': 10, '4': 1, '5': 13, '10': 'cltvLimit'},
    const {'1': 'dest_custom_records', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.SendRequest.DestCustomRecordsEntry', '10': 'destCustomRecords'},
    const {'1': 'allow_self_payment', '3': 14, '4': 1, '5': 8, '10': 'allowSelfPayment'},
    const {'1': 'dest_features', '3': 15, '4': 3, '5': 14, '6': '.lnrpc.FeatureBit', '10': 'destFeatures'},
    const {'1': 'payment_addr', '3': 16, '4': 1, '5': 12, '10': 'paymentAddr'},
  ],
  '3': const [SendRequest_DestCustomRecordsEntry$json],
};

@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest_DestCustomRecordsEntry$json = const {
  '1': 'DestCustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendRequestDescriptor = $convert.base64Decode('CgtTZW5kUmVxdWVzdBISCgRkZXN0GAEgASgMUgRkZXN0EiMKC2Rlc3Rfc3RyaW5nGAIgASgJQgIYAVIKZGVzdFN0cmluZxIZCghhbXRfbXNhdBgMIAEoA1IHYW10TXNhdBIZCghhc3NldF9pZBgRIAEoDVIHYXNzZXRJZBIhCgxwYXltZW50X2hhc2gYBCABKAxSC3BheW1lbnRIYXNoEjIKE3BheW1lbnRfaGFzaF9zdHJpbmcYBSABKAlCAhgBUhFwYXltZW50SGFzaFN0cmluZxInCg9wYXltZW50X3JlcXVlc3QYBiABKAlSDnBheW1lbnRSZXF1ZXN0EigKEGZpbmFsX2NsdHZfZGVsdGEYByABKAVSDmZpbmFsQ2x0dkRlbHRhEiwKCWZlZV9saW1pdBgIIAEoCzIPLmxucnBjLkZlZUxpbWl0UghmZWVMaW1pdBIsChBvdXRnb2luZ19jaGFuX2lkGAkgASgEQgIwAVIOb3V0Z29pbmdDaGFuSWQSJgoPbGFzdF9ob3BfcHVia2V5GA0gASgMUg1sYXN0SG9wUHVia2V5Eh0KCmNsdHZfbGltaXQYCiABKA1SCWNsdHZMaW1pdBJZChNkZXN0X2N1c3RvbV9yZWNvcmRzGAsgAygLMikubG5ycGMuU2VuZFJlcXVlc3QuRGVzdEN1c3RvbVJlY29yZHNFbnRyeVIRZGVzdEN1c3RvbVJlY29yZHMSLAoSYWxsb3dfc2VsZl9wYXltZW50GA4gASgIUhBhbGxvd1NlbGZQYXltZW50EjYKDWRlc3RfZmVhdHVyZXMYDyADKA4yES5sbnJwYy5GZWF0dXJlQml0UgxkZXN0RmVhdHVyZXMSIQoMcGF5bWVudF9hZGRyGBAgASgMUgtwYXltZW50QWRkchpEChZEZXN0Q3VzdG9tUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoBFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = const {
  '1': 'SendResponse',
  '2': const [
    const {'1': 'payment_error', '3': 1, '4': 1, '5': 9, '10': 'paymentError'},
    const {'1': 'payment_preimage', '3': 2, '4': 1, '5': 12, '10': 'paymentPreimage'},
    const {'1': 'payment_route', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'paymentRoute'},
    const {'1': 'payment_hash', '3': 4, '4': 1, '5': 12, '10': 'paymentHash'},
  ],
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor = $convert.base64Decode('CgxTZW5kUmVzcG9uc2USIwoNcGF5bWVudF9lcnJvchgBIAEoCVIMcGF5bWVudEVycm9yEikKEHBheW1lbnRfcHJlaW1hZ2UYAiABKAxSD3BheW1lbnRQcmVpbWFnZRIxCg1wYXltZW50X3JvdXRlGAMgASgLMgwubG5ycGMuUm91dGVSDHBheW1lbnRSb3V0ZRIhCgxwYXltZW50X2hhc2gYBCABKAxSC3BheW1lbnRIYXNo');
@$core.Deprecated('Use sendToRouteRequestDescriptor instead')
const SendToRouteRequest$json = const {
  '1': 'SendToRouteRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    const {
      '1': 'payment_hash_string',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'paymentHashString',
    },
    const {'1': 'route', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'route'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

/// Descriptor for `SendToRouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToRouteRequestDescriptor = $convert.base64Decode('ChJTZW5kVG9Sb3V0ZVJlcXVlc3QSIQoMcGF5bWVudF9oYXNoGAEgASgMUgtwYXltZW50SGFzaBIyChNwYXltZW50X2hhc2hfc3RyaW5nGAIgASgJQgIYAVIRcGF5bWVudEhhc2hTdHJpbmcSIgoFcm91dGUYBCABKAsyDC5sbnJwYy5Sb3V0ZVIFcm91dGVKBAgDEAQ=');
@$core.Deprecated('Use channelAcceptRequestDescriptor instead')
const ChannelAcceptRequest$json = const {
  '1': 'ChannelAcceptRequest',
  '2': const [
    const {'1': 'node_pubkey', '3': 1, '4': 1, '5': 12, '10': 'nodePubkey'},
    const {'1': 'chain_hash', '3': 2, '4': 1, '5': 12, '10': 'chainHash'},
    const {'1': 'pending_chan_id', '3': 3, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'funding_amt', '3': 4, '4': 1, '5': 4, '10': 'fundingAmt'},
    const {'1': 'push_amt', '3': 5, '4': 1, '5': 4, '10': 'pushAmt'},
    const {'1': 'dust_limit', '3': 6, '4': 1, '5': 4, '10': 'dustLimit'},
    const {'1': 'max_value_in_flight', '3': 7, '4': 1, '5': 4, '10': 'maxValueInFlight'},
    const {'1': 'channel_reserve', '3': 8, '4': 1, '5': 4, '10': 'channelReserve'},
    const {'1': 'min_htlc', '3': 9, '4': 1, '5': 4, '10': 'minHtlc'},
    const {'1': 'fee_per_kw', '3': 10, '4': 1, '5': 4, '10': 'feePerKw'},
    const {'1': 'csv_delay', '3': 11, '4': 1, '5': 13, '10': 'csvDelay'},
    const {'1': 'max_accepted_htlcs', '3': 12, '4': 1, '5': 13, '10': 'maxAcceptedHtlcs'},
    const {'1': 'channel_flags', '3': 13, '4': 1, '5': 13, '10': 'channelFlags'},
    const {'1': 'commitment_type', '3': 14, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
  ],
};

/// Descriptor for `ChannelAcceptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelAcceptRequestDescriptor = $convert.base64Decode('ChRDaGFubmVsQWNjZXB0UmVxdWVzdBIfCgtub2RlX3B1YmtleRgBIAEoDFIKbm9kZVB1YmtleRIdCgpjaGFpbl9oYXNoGAIgASgMUgljaGFpbkhhc2gSJgoPcGVuZGluZ19jaGFuX2lkGAMgASgMUg1wZW5kaW5nQ2hhbklkEh8KC2Z1bmRpbmdfYW10GAQgASgEUgpmdW5kaW5nQW10EhkKCHB1c2hfYW10GAUgASgEUgdwdXNoQW10Eh0KCmR1c3RfbGltaXQYBiABKARSCWR1c3RMaW1pdBItChNtYXhfdmFsdWVfaW5fZmxpZ2h0GAcgASgEUhBtYXhWYWx1ZUluRmxpZ2h0EicKD2NoYW5uZWxfcmVzZXJ2ZRgIIAEoBFIOY2hhbm5lbFJlc2VydmUSGQoIbWluX2h0bGMYCSABKARSB21pbkh0bGMSHAoKZmVlX3Blcl9rdxgKIAEoBFIIZmVlUGVyS3cSGwoJY3N2X2RlbGF5GAsgASgNUghjc3ZEZWxheRIsChJtYXhfYWNjZXB0ZWRfaHRsY3MYDCABKA1SEG1heEFjY2VwdGVkSHRsY3MSIwoNY2hhbm5lbF9mbGFncxgNIAEoDVIMY2hhbm5lbEZsYWdzEj4KD2NvbW1pdG1lbnRfdHlwZRgOIAEoDjIVLmxucnBjLkNvbW1pdG1lbnRUeXBlUg5jb21taXRtZW50VHlwZQ==');
@$core.Deprecated('Use channelAcceptResponseDescriptor instead')
const ChannelAcceptResponse$json = const {
  '1': 'ChannelAcceptResponse',
  '2': const [
    const {'1': 'accept', '3': 1, '4': 1, '5': 8, '10': 'accept'},
    const {'1': 'pending_chan_id', '3': 2, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'upfront_shutdown', '3': 4, '4': 1, '5': 9, '10': 'upfrontShutdown'},
    const {'1': 'csv_delay', '3': 5, '4': 1, '5': 13, '10': 'csvDelay'},
    const {'1': 'reserve_sat', '3': 6, '4': 1, '5': 4, '10': 'reserveSat'},
    const {'1': 'in_flight_max_msat', '3': 7, '4': 1, '5': 4, '10': 'inFlightMaxMsat'},
    const {'1': 'max_htlc_count', '3': 8, '4': 1, '5': 13, '10': 'maxHtlcCount'},
    const {'1': 'min_htlc_in', '3': 9, '4': 1, '5': 4, '10': 'minHtlcIn'},
    const {'1': 'min_accept_depth', '3': 10, '4': 1, '5': 13, '10': 'minAcceptDepth'},
  ],
};

/// Descriptor for `ChannelAcceptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelAcceptResponseDescriptor = $convert.base64Decode('ChVDaGFubmVsQWNjZXB0UmVzcG9uc2USFgoGYWNjZXB0GAEgASgIUgZhY2NlcHQSJgoPcGVuZGluZ19jaGFuX2lkGAIgASgMUg1wZW5kaW5nQ2hhbklkEhQKBWVycm9yGAMgASgJUgVlcnJvchIpChB1cGZyb250X3NodXRkb3duGAQgASgJUg91cGZyb250U2h1dGRvd24SGwoJY3N2X2RlbGF5GAUgASgNUghjc3ZEZWxheRIfCgtyZXNlcnZlX3NhdBgGIAEoBFIKcmVzZXJ2ZVNhdBIrChJpbl9mbGlnaHRfbWF4X21zYXQYByABKARSD2luRmxpZ2h0TWF4TXNhdBIkCg5tYXhfaHRsY19jb3VudBgIIAEoDVIMbWF4SHRsY0NvdW50Eh4KC21pbl9odGxjX2luGAkgASgEUgltaW5IdGxjSW4SKAoQbWluX2FjY2VwdF9kZXB0aBgKIAEoDVIObWluQWNjZXB0RGVwdGg=');
@$core.Deprecated('Use channelPointDescriptor instead')
const ChannelPoint$json = const {
  '1': 'ChannelPoint',
  '2': const [
    const {'1': 'funding_txid_bytes', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'fundingTxidBytes'},
    const {'1': 'funding_txid_str', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'fundingTxidStr'},
    const {'1': 'output_index', '3': 3, '4': 1, '5': 13, '10': 'outputIndex'},
  ],
  '8': const [
    const {'1': 'funding_txid'},
  ],
};

/// Descriptor for `ChannelPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelPointDescriptor = $convert.base64Decode('CgxDaGFubmVsUG9pbnQSLgoSZnVuZGluZ190eGlkX2J5dGVzGAEgASgMSABSEGZ1bmRpbmdUeGlkQnl0ZXMSKgoQZnVuZGluZ190eGlkX3N0chgCIAEoCUgAUg5mdW5kaW5nVHhpZFN0chIhCgxvdXRwdXRfaW5kZXgYAyABKA1SC291dHB1dEluZGV4Qg4KDGZ1bmRpbmdfdHhpZA==');
@$core.Deprecated('Use outPointDescriptor instead')
const OutPoint$json = const {
  '1': 'OutPoint',
  '2': const [
    const {'1': 'txid_bytes', '3': 1, '4': 1, '5': 12, '10': 'txidBytes'},
    const {'1': 'txid_str', '3': 2, '4': 1, '5': 9, '10': 'txidStr'},
    const {'1': 'output_index', '3': 3, '4': 1, '5': 13, '10': 'outputIndex'},
  ],
};

/// Descriptor for `OutPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outPointDescriptor = $convert.base64Decode('CghPdXRQb2ludBIdCgp0eGlkX2J5dGVzGAEgASgMUgl0eGlkQnl0ZXMSGQoIdHhpZF9zdHIYAiABKAlSB3R4aWRTdHISIQoMb3V0cHV0X2luZGV4GAMgASgNUgtvdXRwdXRJbmRleA==');
@$core.Deprecated('Use lightningAddressDescriptor instead')
const LightningAddress$json = const {
  '1': 'LightningAddress',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 9, '10': 'pubkey'},
    const {'1': 'host', '3': 2, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `LightningAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lightningAddressDescriptor = $convert.base64Decode('ChBMaWdodG5pbmdBZGRyZXNzEhYKBnB1YmtleRgBIAEoCVIGcHVia2V5EhIKBGhvc3QYAiABKAlSBGhvc3Q=');
@$core.Deprecated('Use obEstimateFeeRequestDescriptor instead')
const ObEstimateFeeRequest$json = const {
  '1': 'ObEstimateFeeRequest',
  '2': const [
    const {'1': 'addr', '3': 5, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'amount', '3': 6, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'from', '3': 7, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'asset_amount', '3': 8, '4': 1, '5': 3, '10': 'assetAmount'},
    const {'1': 'asset_id', '3': 9, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'inscription_id', '3': 10, '4': 1, '5': 9, '10': 'inscriptionId'},
    const {'1': 'target_conf', '3': 2, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'min_confs', '3': 3, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 4, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
};

/// Descriptor for `ObEstimateFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List obEstimateFeeRequestDescriptor = $convert.base64Decode('ChRPYkVzdGltYXRlRmVlUmVxdWVzdBISCgRhZGRyGAUgASgJUgRhZGRyEhYKBmFtb3VudBgGIAEoA1IGYW1vdW50EhIKBGZyb20YByABKAlSBGZyb20SIQoMYXNzZXRfYW1vdW50GAggASgDUgthc3NldEFtb3VudBIZCghhc3NldF9pZBgJIAEoDVIHYXNzZXRJZBIlCg5pbnNjcmlwdGlvbl9pZBgKIAEoCVINaW5zY3JpcHRpb25JZBIfCgt0YXJnZXRfY29uZhgCIAEoBVIKdGFyZ2V0Q29uZhIbCgltaW5fY29uZnMYAyABKAVSCG1pbkNvbmZzEisKEXNwZW5kX3VuY29uZmlybWVkGAQgASgIUhBzcGVuZFVuY29uZmlybWVk');
@$core.Deprecated('Use estimateFeeRequestDescriptor instead')
const EstimateFeeRequest$json = const {
  '1': 'EstimateFeeRequest',
  '2': const [
    const {'1': 'AddrToAmount', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.EstimateFeeRequest.AddrToAmountEntry', '10': 'AddrToAmount'},
    const {'1': 'target_conf', '3': 2, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'min_confs', '3': 3, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 4, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
  '3': const [EstimateFeeRequest_AddrToAmountEntry$json],
};

@$core.Deprecated('Use estimateFeeRequestDescriptor instead')
const EstimateFeeRequest_AddrToAmountEntry$json = const {
  '1': 'AddrToAmountEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `EstimateFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateFeeRequestDescriptor = $convert.base64Decode('ChJFc3RpbWF0ZUZlZVJlcXVlc3QSTwoMQWRkclRvQW1vdW50GAEgAygLMisubG5ycGMuRXN0aW1hdGVGZWVSZXF1ZXN0LkFkZHJUb0Ftb3VudEVudHJ5UgxBZGRyVG9BbW91bnQSHwoLdGFyZ2V0X2NvbmYYAiABKAVSCnRhcmdldENvbmYSGwoJbWluX2NvbmZzGAMgASgFUghtaW5Db25mcxIrChFzcGVuZF91bmNvbmZpcm1lZBgEIAEoCFIQc3BlbmRVbmNvbmZpcm1lZBo/ChFBZGRyVG9BbW91bnRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU6AjgB');
@$core.Deprecated('Use estimateFeeResponseDescriptor instead')
const EstimateFeeResponse$json = const {
  '1': 'EstimateFeeResponse',
  '2': const [
    const {'1': 'fee_sat', '3': 1, '4': 1, '5': 3, '10': 'feeSat'},
    const {
      '1': 'feerate_sat_per_byte',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'feerateSatPerByte',
    },
    const {'1': 'sat_per_vbyte', '3': 3, '4': 1, '5': 4, '10': 'satPerVbyte'},
  ],
};

/// Descriptor for `EstimateFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateFeeResponseDescriptor = $convert.base64Decode('ChNFc3RpbWF0ZUZlZVJlc3BvbnNlEhcKB2ZlZV9zYXQYASABKANSBmZlZVNhdBIzChRmZWVyYXRlX3NhdF9wZXJfYnl0ZRgCIAEoA0ICGAFSEWZlZXJhdGVTYXRQZXJCeXRlEiIKDXNhdF9wZXJfdmJ5dGUYAyABKARSC3NhdFBlclZieXRl');
@$core.Deprecated('Use sendManyRequestDescriptor instead')
const SendManyRequest$json = const {
  '1': 'SendManyRequest',
  '2': const [
    const {'1': 'AddrToAmount', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.SendManyRequest.AddrToAmountEntry', '10': 'AddrToAmount'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_vbyte', '3': 4, '4': 1, '5': 4, '10': 'satPerVbyte'},
    const {
      '1': 'sat_per_byte',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'satPerByte',
    },
    const {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 7, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 8, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
  '3': const [SendManyRequest_AddrToAmountEntry$json],
};

@$core.Deprecated('Use sendManyRequestDescriptor instead')
const SendManyRequest_AddrToAmountEntry$json = const {
  '1': 'AddrToAmountEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SendManyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendManyRequestDescriptor = $convert.base64Decode('Cg9TZW5kTWFueVJlcXVlc3QSTAoMQWRkclRvQW1vdW50GAEgAygLMigubG5ycGMuU2VuZE1hbnlSZXF1ZXN0LkFkZHJUb0Ftb3VudEVudHJ5UgxBZGRyVG9BbW91bnQSHwoLdGFyZ2V0X2NvbmYYAyABKAVSCnRhcmdldENvbmYSIgoNc2F0X3Blcl92Ynl0ZRgEIAEoBFILc2F0UGVyVmJ5dGUSJAoMc2F0X3Blcl9ieXRlGAUgASgDQgIYAVIKc2F0UGVyQnl0ZRIUCgVsYWJlbBgGIAEoCVIFbGFiZWwSGwoJbWluX2NvbmZzGAcgASgFUghtaW5Db25mcxIrChFzcGVuZF91bmNvbmZpcm1lZBgIIAEoCFIQc3BlbmRVbmNvbmZpcm1lZBo/ChFBZGRyVG9BbW91bnRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoA1IFdmFsdWU6AjgB');
@$core.Deprecated('Use sendManyResponseDescriptor instead')
const SendManyResponse$json = const {
  '1': 'SendManyResponse',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `SendManyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendManyResponseDescriptor = $convert.base64Decode('ChBTZW5kTWFueVJlc3BvbnNlEhIKBHR4aWQYASABKAlSBHR4aWQ=');
@$core.Deprecated('Use sendCoinsFromRequestDescriptor instead')
const SendCoinsFromRequest$json = const {
  '1': 'SendCoinsFromRequest',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'from', '3': 10, '4': 1, '5': 9, '10': 'from'},
    const {'1': 'asset_amount', '3': 11, '4': 1, '5': 3, '10': 'assetAmount'},
    const {'1': 'asset_id', '3': 12, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'inscription_id', '3': 13, '4': 1, '5': 9, '10': 'inscriptionId'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_vbyte', '3': 4, '4': 1, '5': 4, '10': 'satPerVbyte'},
    const {
      '1': 'sat_per_byte',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'satPerByte',
    },
    const {'1': 'label', '3': 7, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 8, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 9, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
};

/// Descriptor for `SendCoinsFromRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCoinsFromRequestDescriptor = $convert.base64Decode('ChRTZW5kQ29pbnNGcm9tUmVxdWVzdBISCgRhZGRyGAEgASgJUgRhZGRyEhYKBmFtb3VudBgCIAEoA1IGYW1vdW50EhIKBGZyb20YCiABKAlSBGZyb20SIQoMYXNzZXRfYW1vdW50GAsgASgDUgthc3NldEFtb3VudBIZCghhc3NldF9pZBgMIAEoDVIHYXNzZXRJZBIlCg5pbnNjcmlwdGlvbl9pZBgNIAEoCVINaW5zY3JpcHRpb25JZBIfCgt0YXJnZXRfY29uZhgDIAEoBVIKdGFyZ2V0Q29uZhIiCg1zYXRfcGVyX3ZieXRlGAQgASgEUgtzYXRQZXJWYnl0ZRIkCgxzYXRfcGVyX2J5dGUYBSABKANCAhgBUgpzYXRQZXJCeXRlEhQKBWxhYmVsGAcgASgJUgVsYWJlbBIbCgltaW5fY29uZnMYCCABKAVSCG1pbkNvbmZzEisKEXNwZW5kX3VuY29uZmlybWVkGAkgASgIUhBzcGVuZFVuY29uZmlybWVk');
@$core.Deprecated('Use mintNftRequestDescriptor instead')
const MintNftRequest$json = const {
  '1': 'MintNftRequest',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_vbyte', '3': 4, '4': 1, '5': 4, '10': 'satPerVbyte'},
    const {
      '1': 'sat_per_byte',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'satPerByte',
    },
    const {'1': 'label', '3': 7, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 8, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 9, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
    const {'1': 'nftFilePath', '3': 10, '4': 1, '5': 9, '10': 'nftFilePath'},
  ],
};

/// Descriptor for `MintNftRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mintNftRequestDescriptor = $convert.base64Decode('Cg5NaW50TmZ0UmVxdWVzdBISCgRhZGRyGAEgASgJUgRhZGRyEh8KC3RhcmdldF9jb25mGAMgASgFUgp0YXJnZXRDb25mEiIKDXNhdF9wZXJfdmJ5dGUYBCABKARSC3NhdFBlclZieXRlEiQKDHNhdF9wZXJfYnl0ZRgFIAEoA0ICGAFSCnNhdFBlckJ5dGUSFAoFbGFiZWwYByABKAlSBWxhYmVsEhsKCW1pbl9jb25mcxgIIAEoBVIIbWluQ29uZnMSKwoRc3BlbmRfdW5jb25maXJtZWQYCSABKAhSEHNwZW5kVW5jb25maXJtZWQSIAoLbmZ0RmlsZVBhdGgYCiABKAlSC25mdEZpbGVQYXRo');
@$core.Deprecated('Use sendCoinsRequestDescriptor instead')
const SendCoinsRequest$json = const {
  '1': 'SendCoinsRequest',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_vbyte', '3': 4, '4': 1, '5': 4, '10': 'satPerVbyte'},
    const {
      '1': 'sat_per_byte',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'satPerByte',
    },
    const {'1': 'send_all', '3': 6, '4': 1, '5': 8, '10': 'sendAll'},
    const {'1': 'label', '3': 7, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 8, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 9, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
};

/// Descriptor for `SendCoinsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCoinsRequestDescriptor = $convert.base64Decode('ChBTZW5kQ29pbnNSZXF1ZXN0EhIKBGFkZHIYASABKAlSBGFkZHISFgoGYW1vdW50GAIgASgDUgZhbW91bnQSHwoLdGFyZ2V0X2NvbmYYAyABKAVSCnRhcmdldENvbmYSIgoNc2F0X3Blcl92Ynl0ZRgEIAEoBFILc2F0UGVyVmJ5dGUSJAoMc2F0X3Blcl9ieXRlGAUgASgDQgIYAVIKc2F0UGVyQnl0ZRIZCghzZW5kX2FsbBgGIAEoCFIHc2VuZEFsbBIUCgVsYWJlbBgHIAEoCVIFbGFiZWwSGwoJbWluX2NvbmZzGAggASgFUghtaW5Db25mcxIrChFzcGVuZF91bmNvbmZpcm1lZBgJIAEoCFIQc3BlbmRVbmNvbmZpcm1lZA==');
@$core.Deprecated('Use sendCoinsResponseDescriptor instead')
const SendCoinsResponse$json = const {
  '1': 'SendCoinsResponse',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `SendCoinsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCoinsResponseDescriptor = $convert.base64Decode('ChFTZW5kQ29pbnNSZXNwb25zZRISCgR0eGlkGAEgASgJUgR0eGlk');
@$core.Deprecated('Use listUnspentRequestDescriptor instead')
const ListUnspentRequest$json = const {
  '1': 'ListUnspentRequest',
  '2': const [
    const {'1': 'min_confs', '3': 1, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'max_confs', '3': 2, '4': 1, '5': 5, '10': 'maxConfs'},
    const {'1': 'account', '3': 3, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `ListUnspentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUnspentRequestDescriptor = $convert.base64Decode('ChJMaXN0VW5zcGVudFJlcXVlc3QSGwoJbWluX2NvbmZzGAEgASgFUghtaW5Db25mcxIbCgltYXhfY29uZnMYAiABKAVSCG1heENvbmZzEhgKB2FjY291bnQYAyABKAlSB2FjY291bnQ=');
@$core.Deprecated('Use listUnspentResponseDescriptor instead')
const ListUnspentResponse$json = const {
  '1': 'ListUnspentResponse',
  '2': const [
    const {'1': 'utxos', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Utxo', '10': 'utxos'},
  ],
};

/// Descriptor for `ListUnspentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUnspentResponseDescriptor = $convert.base64Decode('ChNMaXN0VW5zcGVudFJlc3BvbnNlEiEKBXV0eG9zGAEgAygLMgsubG5ycGMuVXR4b1IFdXR4b3M=');
@$core.Deprecated('Use dumpPrivkeyRequestDescriptor instead')
const DumpPrivkeyRequest$json = const {
  '1': 'DumpPrivkeyRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `DumpPrivkeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dumpPrivkeyRequestDescriptor = $convert.base64Decode('ChJEdW1wUHJpdmtleVJlcXVlc3QSGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use dumpPrivkeyResponseDescriptor instead')
const DumpPrivkeyResponse$json = const {
  '1': 'DumpPrivkeyResponse',
  '2': const [
    const {'1': 'key_wif', '3': 1, '4': 1, '5': 9, '10': 'keyWif'},
  ],
};

/// Descriptor for `DumpPrivkeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dumpPrivkeyResponseDescriptor = $convert.base64Decode('ChNEdW1wUHJpdmtleVJlc3BvbnNlEhcKB2tleV93aWYYASABKAlSBmtleVdpZg==');
@$core.Deprecated('Use newAddressRequestDescriptor instead')
const NewAddressRequest$json = const {
  '1': 'NewAddressRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.AddressType', '10': 'type'},
    const {'1': 'account', '3': 2, '4': 1, '5': 9, '10': 'account'},
  ],
};

/// Descriptor for `NewAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newAddressRequestDescriptor = $convert.base64Decode('ChFOZXdBZGRyZXNzUmVxdWVzdBImCgR0eXBlGAEgASgOMhIubG5ycGMuQWRkcmVzc1R5cGVSBHR5cGUSGAoHYWNjb3VudBgCIAEoCVIHYWNjb3VudA==');
@$core.Deprecated('Use newAddressResponseDescriptor instead')
const NewAddressResponse$json = const {
  '1': 'NewAddressResponse',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `NewAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newAddressResponseDescriptor = $convert.base64Decode('ChJOZXdBZGRyZXNzUmVzcG9uc2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use signMessageRequestDescriptor instead')
const SignMessageRequest$json = const {
  '1': 'SignMessageRequest',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'single_hash', '3': 2, '4': 1, '5': 8, '10': 'singleHash'},
  ],
};

/// Descriptor for `SignMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageRequestDescriptor = $convert.base64Decode('ChJTaWduTWVzc2FnZVJlcXVlc3QSEAoDbXNnGAEgASgMUgNtc2cSHwoLc2luZ2xlX2hhc2gYAiABKAhSCnNpbmdsZUhhc2g=');
@$core.Deprecated('Use signMessageResponseDescriptor instead')
const SignMessageResponse$json = const {
  '1': 'SignMessageResponse',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SignMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageResponseDescriptor = $convert.base64Decode('ChNTaWduTWVzc2FnZVJlc3BvbnNlEhwKCXNpZ25hdHVyZRgBIAEoCVIJc2lnbmF0dXJl');
@$core.Deprecated('Use verifyMessageRequestDescriptor instead')
const VerifyMessageRequest$json = const {
  '1': 'VerifyMessageRequest',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `VerifyMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageRequestDescriptor = $convert.base64Decode('ChRWZXJpZnlNZXNzYWdlUmVxdWVzdBIQCgNtc2cYASABKAxSA21zZxIcCglzaWduYXR1cmUYAiABKAlSCXNpZ25hdHVyZQ==');
@$core.Deprecated('Use verifyMessageResponseDescriptor instead')
const VerifyMessageResponse$json = const {
  '1': 'VerifyMessageResponse',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
    const {'1': 'pubkey', '3': 2, '4': 1, '5': 9, '10': 'pubkey'},
  ],
};

/// Descriptor for `VerifyMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageResponseDescriptor = $convert.base64Decode('ChVWZXJpZnlNZXNzYWdlUmVzcG9uc2USFAoFdmFsaWQYASABKAhSBXZhbGlkEhYKBnB1YmtleRgCIAEoCVIGcHVia2V5');
@$core.Deprecated('Use connectPeerRequestDescriptor instead')
const ConnectPeerRequest$json = const {
  '1': 'ConnectPeerRequest',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.LightningAddress', '10': 'addr'},
    const {'1': 'perm', '3': 2, '4': 1, '5': 8, '10': 'perm'},
    const {'1': 'timeout', '3': 3, '4': 1, '5': 4, '10': 'timeout'},
  ],
};

/// Descriptor for `ConnectPeerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectPeerRequestDescriptor = $convert.base64Decode('ChJDb25uZWN0UGVlclJlcXVlc3QSKwoEYWRkchgBIAEoCzIXLmxucnBjLkxpZ2h0bmluZ0FkZHJlc3NSBGFkZHISEgoEcGVybRgCIAEoCFIEcGVybRIYCgd0aW1lb3V0GAMgASgEUgd0aW1lb3V0');
@$core.Deprecated('Use connectPeerResponseDescriptor instead')
const ConnectPeerResponse$json = const {
  '1': 'ConnectPeerResponse',
};

/// Descriptor for `ConnectPeerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectPeerResponseDescriptor = $convert.base64Decode('ChNDb25uZWN0UGVlclJlc3BvbnNl');
@$core.Deprecated('Use disconnectPeerRequestDescriptor instead')
const DisconnectPeerRequest$json = const {
  '1': 'DisconnectPeerRequest',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
  ],
};

/// Descriptor for `DisconnectPeerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectPeerRequestDescriptor = $convert.base64Decode('ChVEaXNjb25uZWN0UGVlclJlcXVlc3QSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5');
@$core.Deprecated('Use disconnectPeerResponseDescriptor instead')
const DisconnectPeerResponse$json = const {
  '1': 'DisconnectPeerResponse',
};

/// Descriptor for `DisconnectPeerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectPeerResponseDescriptor = $convert.base64Decode('ChZEaXNjb25uZWN0UGVlclJlc3BvbnNl');
@$core.Deprecated('Use hTLCDescriptor instead')
const HTLC$json = const {
  '1': 'HTLC',
  '2': const [
    const {'1': 'incoming', '3': 1, '4': 1, '5': 8, '10': 'incoming'},
    const {'1': 'btc_amount', '3': 2, '4': 1, '5': 3, '10': 'btcAmount'},
    const {'1': 'asset_amount', '3': 8, '4': 1, '5': 3, '10': 'assetAmount'},
    const {'1': 'asset_id', '3': 9, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'hash_lock', '3': 3, '4': 1, '5': 12, '10': 'hashLock'},
    const {'1': 'expiration_height', '3': 4, '4': 1, '5': 13, '10': 'expirationHeight'},
    const {'1': 'htlc_index', '3': 5, '4': 1, '5': 4, '10': 'htlcIndex'},
    const {'1': 'forwarding_channel', '3': 6, '4': 1, '5': 4, '10': 'forwardingChannel'},
    const {'1': 'forwarding_htlc_index', '3': 7, '4': 1, '5': 4, '10': 'forwardingHtlcIndex'},
  ],
};

/// Descriptor for `HTLC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTLCDescriptor = $convert.base64Decode('CgRIVExDEhoKCGluY29taW5nGAEgASgIUghpbmNvbWluZxIdCgpidGNfYW1vdW50GAIgASgDUglidGNBbW91bnQSIQoMYXNzZXRfYW1vdW50GAggASgDUgthc3NldEFtb3VudBIZCghhc3NldF9pZBgJIAEoDVIHYXNzZXRJZBIbCgloYXNoX2xvY2sYAyABKAxSCGhhc2hMb2NrEisKEWV4cGlyYXRpb25faGVpZ2h0GAQgASgNUhBleHBpcmF0aW9uSGVpZ2h0Eh0KCmh0bGNfaW5kZXgYBSABKARSCWh0bGNJbmRleBItChJmb3J3YXJkaW5nX2NoYW5uZWwYBiABKARSEWZvcndhcmRpbmdDaGFubmVsEjIKFWZvcndhcmRpbmdfaHRsY19pbmRleBgHIAEoBFITZm9yd2FyZGluZ0h0bGNJbmRleA==');
@$core.Deprecated('Use channelConstraintsDescriptor instead')
const ChannelConstraints$json = const {
  '1': 'ChannelConstraints',
  '2': const [
    const {'1': 'csv_delay', '3': 1, '4': 1, '5': 13, '10': 'csvDelay'},
    const {'1': 'chan_reserve_sat', '3': 2, '4': 1, '5': 4, '10': 'chanReserveSat'},
    const {'1': 'dust_limit_sat', '3': 3, '4': 1, '5': 4, '10': 'dustLimitSat'},
    const {'1': 'max_pending_amt_msat', '3': 4, '4': 1, '5': 4, '10': 'maxPendingAmtMsat'},
    const {'1': 'min_htlc_msat', '3': 5, '4': 1, '5': 4, '10': 'minHtlcMsat'},
    const {'1': 'max_accepted_htlcs', '3': 6, '4': 1, '5': 13, '10': 'maxAcceptedHtlcs'},
  ],
};

/// Descriptor for `ChannelConstraints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelConstraintsDescriptor = $convert.base64Decode('ChJDaGFubmVsQ29uc3RyYWludHMSGwoJY3N2X2RlbGF5GAEgASgNUghjc3ZEZWxheRIoChBjaGFuX3Jlc2VydmVfc2F0GAIgASgEUg5jaGFuUmVzZXJ2ZVNhdBIkCg5kdXN0X2xpbWl0X3NhdBgDIAEoBFIMZHVzdExpbWl0U2F0Ei8KFG1heF9wZW5kaW5nX2FtdF9tc2F0GAQgASgEUhFtYXhQZW5kaW5nQW10TXNhdBIiCg1taW5faHRsY19tc2F0GAUgASgEUgttaW5IdGxjTXNhdBIsChJtYXhfYWNjZXB0ZWRfaHRsY3MYBiABKA1SEG1heEFjY2VwdGVkSHRsY3M=');
@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'active', '3': 1, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'remote_pubkey', '3': 2, '4': 1, '5': 9, '10': 'remotePubkey'},
    const {'1': 'channel_point', '3': 3, '4': 1, '5': 9, '10': 'channelPoint'},
    const {
      '1': 'chan_id',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'btc_capacity', '3': 5, '4': 1, '5': 3, '10': 'btcCapacity'},
    const {'1': 'asset_capacity', '3': 34, '4': 1, '5': 3, '10': 'assetCapacity'},
    const {'1': 'local_balance', '3': 6, '4': 1, '5': 3, '10': 'localBalance'},
    const {'1': 'remote_balance', '3': 7, '4': 1, '5': 3, '10': 'remoteBalance'},
    const {'1': 'local_asset_balance', '3': 31, '4': 1, '5': 3, '10': 'localAssetBalance'},
    const {'1': 'remote_asset_balance', '3': 32, '4': 1, '5': 3, '10': 'remoteAssetBalance'},
    const {'1': 'asset_id', '3': 33, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'create_time', '3': 38, '4': 1, '5': 13, '10': 'createTime'},
    const {'1': 'commit_fee', '3': 8, '4': 1, '5': 3, '10': 'commitFee'},
    const {'1': 'commit_weight', '3': 9, '4': 1, '5': 3, '10': 'commitWeight'},
    const {'1': 'fee_per_kw', '3': 10, '4': 1, '5': 3, '10': 'feePerKw'},
    const {'1': 'unsettled_balance', '3': 11, '4': 1, '5': 3, '10': 'unsettledBalance'},
    const {'1': 'total_satoshis_sent', '3': 12, '4': 1, '5': 3, '10': 'totalSatoshisSent'},
    const {'1': 'total_satoshis_received', '3': 13, '4': 1, '5': 3, '10': 'totalSatoshisReceived'},
    const {'1': 'total_asset_received', '3': 37, '4': 1, '5': 3, '10': 'totalAssetReceived'},
    const {'1': 'total_asset_sent', '3': 36, '4': 1, '5': 3, '10': 'totalAssetSent'},
    const {'1': 'num_updates', '3': 14, '4': 1, '5': 4, '10': 'numUpdates'},
    const {'1': 'pending_htlcs', '3': 15, '4': 3, '5': 11, '6': '.lnrpc.HTLC', '10': 'pendingHtlcs'},
    const {
      '1': 'csv_delay',
      '3': 16,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'csvDelay',
    },
    const {'1': 'private', '3': 17, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'initiator', '3': 18, '4': 1, '5': 8, '10': 'initiator'},
    const {'1': 'chan_status_flags', '3': 19, '4': 1, '5': 9, '10': 'chanStatusFlags'},
    const {
      '1': 'local_chan_reserve_sat',
      '3': 20,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'localChanReserveSat',
    },
    const {
      '1': 'remote_chan_reserve_sat',
      '3': 21,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'remoteChanReserveSat',
    },
    const {
      '1': 'static_remote_key',
      '3': 22,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'staticRemoteKey',
    },
    const {'1': 'commitment_type', '3': 26, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
    const {'1': 'lifetime', '3': 23, '4': 1, '5': 3, '10': 'lifetime'},
    const {'1': 'uptime', '3': 24, '4': 1, '5': 3, '10': 'uptime'},
    const {'1': 'close_address', '3': 25, '4': 1, '5': 9, '10': 'closeAddress'},
    const {'1': 'push_btc_amount_sat', '3': 27, '4': 1, '5': 4, '10': 'pushBtcAmountSat'},
    const {'1': 'push_asset_amount_sat', '3': 35, '4': 1, '5': 4, '10': 'pushAssetAmountSat'},
    const {'1': 'thaw_height', '3': 28, '4': 1, '5': 13, '10': 'thawHeight'},
    const {'1': 'local_constraints', '3': 29, '4': 1, '5': 11, '6': '.lnrpc.ChannelConstraints', '10': 'localConstraints'},
    const {'1': 'remote_constraints', '3': 30, '4': 1, '5': 11, '6': '.lnrpc.ChannelConstraints', '10': 'remoteConstraints'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode('CgdDaGFubmVsEhYKBmFjdGl2ZRgBIAEoCFIGYWN0aXZlEiMKDXJlbW90ZV9wdWJrZXkYAiABKAlSDHJlbW90ZVB1YmtleRIjCg1jaGFubmVsX3BvaW50GAMgASgJUgxjaGFubmVsUG9pbnQSGwoHY2hhbl9pZBgEIAEoBEICMAFSBmNoYW5JZBIhCgxidGNfY2FwYWNpdHkYBSABKANSC2J0Y0NhcGFjaXR5EiUKDmFzc2V0X2NhcGFjaXR5GCIgASgDUg1hc3NldENhcGFjaXR5EiMKDWxvY2FsX2JhbGFuY2UYBiABKANSDGxvY2FsQmFsYW5jZRIlCg5yZW1vdGVfYmFsYW5jZRgHIAEoA1INcmVtb3RlQmFsYW5jZRIuChNsb2NhbF9hc3NldF9iYWxhbmNlGB8gASgDUhFsb2NhbEFzc2V0QmFsYW5jZRIwChRyZW1vdGVfYXNzZXRfYmFsYW5jZRggIAEoA1IScmVtb3RlQXNzZXRCYWxhbmNlEhkKCGFzc2V0X2lkGCEgASgNUgdhc3NldElkEh8KC2NyZWF0ZV90aW1lGCYgASgNUgpjcmVhdGVUaW1lEh0KCmNvbW1pdF9mZWUYCCABKANSCWNvbW1pdEZlZRIjCg1jb21taXRfd2VpZ2h0GAkgASgDUgxjb21taXRXZWlnaHQSHAoKZmVlX3Blcl9rdxgKIAEoA1IIZmVlUGVyS3cSKwoRdW5zZXR0bGVkX2JhbGFuY2UYCyABKANSEHVuc2V0dGxlZEJhbGFuY2USLgoTdG90YWxfc2F0b3NoaXNfc2VudBgMIAEoA1IRdG90YWxTYXRvc2hpc1NlbnQSNgoXdG90YWxfc2F0b3NoaXNfcmVjZWl2ZWQYDSABKANSFXRvdGFsU2F0b3NoaXNSZWNlaXZlZBIwChR0b3RhbF9hc3NldF9yZWNlaXZlZBglIAEoA1ISdG90YWxBc3NldFJlY2VpdmVkEigKEHRvdGFsX2Fzc2V0X3NlbnQYJCABKANSDnRvdGFsQXNzZXRTZW50Eh8KC251bV91cGRhdGVzGA4gASgEUgpudW1VcGRhdGVzEjAKDXBlbmRpbmdfaHRsY3MYDyADKAsyCy5sbnJwYy5IVExDUgxwZW5kaW5nSHRsY3MSHwoJY3N2X2RlbGF5GBAgASgNQgIYAVIIY3N2RGVsYXkSGAoHcHJpdmF0ZRgRIAEoCFIHcHJpdmF0ZRIcCglpbml0aWF0b3IYEiABKAhSCWluaXRpYXRvchIqChFjaGFuX3N0YXR1c19mbGFncxgTIAEoCVIPY2hhblN0YXR1c0ZsYWdzEjcKFmxvY2FsX2NoYW5fcmVzZXJ2ZV9zYXQYFCABKANCAhgBUhNsb2NhbENoYW5SZXNlcnZlU2F0EjkKF3JlbW90ZV9jaGFuX3Jlc2VydmVfc2F0GBUgASgDQgIYAVIUcmVtb3RlQ2hhblJlc2VydmVTYXQSLgoRc3RhdGljX3JlbW90ZV9rZXkYFiABKAhCAhgBUg9zdGF0aWNSZW1vdGVLZXkSPgoPY29tbWl0bWVudF90eXBlGBogASgOMhUubG5ycGMuQ29tbWl0bWVudFR5cGVSDmNvbW1pdG1lbnRUeXBlEhoKCGxpZmV0aW1lGBcgASgDUghsaWZldGltZRIWCgZ1cHRpbWUYGCABKANSBnVwdGltZRIjCg1jbG9zZV9hZGRyZXNzGBkgASgJUgxjbG9zZUFkZHJlc3MSLQoTcHVzaF9idGNfYW1vdW50X3NhdBgbIAEoBFIQcHVzaEJ0Y0Ftb3VudFNhdBIxChVwdXNoX2Fzc2V0X2Ftb3VudF9zYXQYIyABKARSEnB1c2hBc3NldEFtb3VudFNhdBIfCgt0aGF3X2hlaWdodBgcIAEoDVIKdGhhd0hlaWdodBJGChFsb2NhbF9jb25zdHJhaW50cxgdIAEoCzIZLmxucnBjLkNoYW5uZWxDb25zdHJhaW50c1IQbG9jYWxDb25zdHJhaW50cxJIChJyZW1vdGVfY29uc3RyYWludHMYHiABKAsyGS5sbnJwYy5DaGFubmVsQ29uc3RyYWludHNSEXJlbW90ZUNvbnN0cmFpbnRz');
@$core.Deprecated('Use listChannelsRequestDescriptor instead')
const ListChannelsRequest$json = const {
  '1': 'ListChannelsRequest',
  '2': const [
    const {'1': 'active_only', '3': 1, '4': 1, '5': 8, '10': 'activeOnly'},
    const {'1': 'inactive_only', '3': 2, '4': 1, '5': 8, '10': 'inactiveOnly'},
    const {'1': 'public_only', '3': 3, '4': 1, '5': 8, '10': 'publicOnly'},
    const {'1': 'private_only', '3': 4, '4': 1, '5': 8, '10': 'privateOnly'},
    const {'1': 'peer', '3': 5, '4': 1, '5': 12, '10': 'peer'},
  ],
};

/// Descriptor for `ListChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listChannelsRequestDescriptor = $convert.base64Decode('ChNMaXN0Q2hhbm5lbHNSZXF1ZXN0Eh8KC2FjdGl2ZV9vbmx5GAEgASgIUgphY3RpdmVPbmx5EiMKDWluYWN0aXZlX29ubHkYAiABKAhSDGluYWN0aXZlT25seRIfCgtwdWJsaWNfb25seRgDIAEoCFIKcHVibGljT25seRIhCgxwcml2YXRlX29ubHkYBCABKAhSC3ByaXZhdGVPbmx5EhIKBHBlZXIYBSABKAxSBHBlZXI=');
@$core.Deprecated('Use listChannelsResponseDescriptor instead')
const ListChannelsResponse$json = const {
  '1': 'ListChannelsResponse',
  '2': const [
    const {'1': 'channels', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.Channel', '10': 'channels'},
  ],
};

/// Descriptor for `ListChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listChannelsResponseDescriptor = $convert.base64Decode('ChRMaXN0Q2hhbm5lbHNSZXNwb25zZRIqCghjaGFubmVscxgLIAMoCzIOLmxucnBjLkNoYW5uZWxSCGNoYW5uZWxz');
@$core.Deprecated('Use channelCloseSummaryDescriptor instead')
const ChannelCloseSummary$json = const {
  '1': 'ChannelCloseSummary',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 9, '10': 'channelPoint'},
    const {
      '1': 'chan_id',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'chain_hash', '3': 3, '4': 1, '5': 9, '10': 'chainHash'},
    const {'1': 'closing_tx_hash', '3': 4, '4': 1, '5': 9, '10': 'closingTxHash'},
    const {'1': 'remote_pubkey', '3': 5, '4': 1, '5': 9, '10': 'remotePubkey'},
    const {'1': 'btc_capacity', '3': 6, '4': 1, '5': 3, '10': 'btcCapacity'},
    const {'1': 'asset_capacity', '3': 14, '4': 1, '5': 3, '10': 'assetCapacity'},
    const {'1': 'asset_id', '3': 15, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'close_height', '3': 7, '4': 1, '5': 13, '10': 'closeHeight'},
    const {'1': 'settled_balance', '3': 8, '4': 1, '5': 3, '10': 'settledBalance'},
    const {'1': 'time_locked_balance', '3': 9, '4': 1, '5': 3, '10': 'timeLockedBalance'},
    const {'1': 'close_type', '3': 10, '4': 1, '5': 14, '6': '.lnrpc.ChannelCloseSummary.ClosureType', '10': 'closeType'},
    const {'1': 'open_initiator', '3': 11, '4': 1, '5': 14, '6': '.lnrpc.Initiator', '10': 'openInitiator'},
    const {'1': 'close_initiator', '3': 12, '4': 1, '5': 14, '6': '.lnrpc.Initiator', '10': 'closeInitiator'},
    const {'1': 'resolutions', '3': 13, '4': 3, '5': 11, '6': '.lnrpc.Resolution', '10': 'resolutions'},
  ],
  '4': const [ChannelCloseSummary_ClosureType$json],
};

@$core.Deprecated('Use channelCloseSummaryDescriptor instead')
const ChannelCloseSummary_ClosureType$json = const {
  '1': 'ClosureType',
  '2': const [
    const {'1': 'COOPERATIVE_CLOSE', '2': 0},
    const {'1': 'LOCAL_FORCE_CLOSE', '2': 1},
    const {'1': 'REMOTE_FORCE_CLOSE', '2': 2},
    const {'1': 'BREACH_CLOSE', '2': 3},
    const {'1': 'FUNDING_CANCELED', '2': 4},
    const {'1': 'ABANDONED', '2': 5},
  ],
};

/// Descriptor for `ChannelCloseSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCloseSummaryDescriptor = $convert.base64Decode('ChNDaGFubmVsQ2xvc2VTdW1tYXJ5EiMKDWNoYW5uZWxfcG9pbnQYASABKAlSDGNoYW5uZWxQb2ludBIbCgdjaGFuX2lkGAIgASgEQgIwAVIGY2hhbklkEh0KCmNoYWluX2hhc2gYAyABKAlSCWNoYWluSGFzaBImCg9jbG9zaW5nX3R4X2hhc2gYBCABKAlSDWNsb3NpbmdUeEhhc2gSIwoNcmVtb3RlX3B1YmtleRgFIAEoCVIMcmVtb3RlUHVia2V5EiEKDGJ0Y19jYXBhY2l0eRgGIAEoA1ILYnRjQ2FwYWNpdHkSJQoOYXNzZXRfY2FwYWNpdHkYDiABKANSDWFzc2V0Q2FwYWNpdHkSGQoIYXNzZXRfaWQYDyABKA1SB2Fzc2V0SWQSIQoMY2xvc2VfaGVpZ2h0GAcgASgNUgtjbG9zZUhlaWdodBInCg9zZXR0bGVkX2JhbGFuY2UYCCABKANSDnNldHRsZWRCYWxhbmNlEi4KE3RpbWVfbG9ja2VkX2JhbGFuY2UYCSABKANSEXRpbWVMb2NrZWRCYWxhbmNlEkUKCmNsb3NlX3R5cGUYCiABKA4yJi5sbnJwYy5DaGFubmVsQ2xvc2VTdW1tYXJ5LkNsb3N1cmVUeXBlUgljbG9zZVR5cGUSNwoOb3Blbl9pbml0aWF0b3IYCyABKA4yEC5sbnJwYy5Jbml0aWF0b3JSDW9wZW5Jbml0aWF0b3ISOQoPY2xvc2VfaW5pdGlhdG9yGAwgASgOMhAubG5ycGMuSW5pdGlhdG9yUg5jbG9zZUluaXRpYXRvchIzCgtyZXNvbHV0aW9ucxgNIAMoCzIRLmxucnBjLlJlc29sdXRpb25SC3Jlc29sdXRpb25zIooBCgtDbG9zdXJlVHlwZRIVChFDT09QRVJBVElWRV9DTE9TRRAAEhUKEUxPQ0FMX0ZPUkNFX0NMT1NFEAESFgoSUkVNT1RFX0ZPUkNFX0NMT1NFEAISEAoMQlJFQUNIX0NMT1NFEAMSFAoQRlVORElOR19DQU5DRUxFRBAEEg0KCUFCQU5ET05FRBAF');
@$core.Deprecated('Use resolutionDescriptor instead')
const Resolution$json = const {
  '1': 'Resolution',
  '2': const [
    const {'1': 'resolution_type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.ResolutionType', '10': 'resolutionType'},
    const {'1': 'outcome', '3': 2, '4': 1, '5': 14, '6': '.lnrpc.ResolutionOutcome', '10': 'outcome'},
    const {'1': 'outpoint', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'amount_sat', '3': 4, '4': 1, '5': 4, '10': 'amountSat'},
    const {'1': 'sweep_txid', '3': 5, '4': 1, '5': 9, '10': 'sweepTxid'},
  ],
};

/// Descriptor for `Resolution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolutionDescriptor = $convert.base64Decode('CgpSZXNvbHV0aW9uEj4KD3Jlc29sdXRpb25fdHlwZRgBIAEoDjIVLmxucnBjLlJlc29sdXRpb25UeXBlUg5yZXNvbHV0aW9uVHlwZRIyCgdvdXRjb21lGAIgASgOMhgubG5ycGMuUmVzb2x1dGlvbk91dGNvbWVSB291dGNvbWUSKwoIb3V0cG9pbnQYAyABKAsyDy5sbnJwYy5PdXRQb2ludFIIb3V0cG9pbnQSHQoKYW1vdW50X3NhdBgEIAEoBFIJYW1vdW50U2F0Eh0KCnN3ZWVwX3R4aWQYBSABKAlSCXN3ZWVwVHhpZA==');
@$core.Deprecated('Use closedChannelsRequestDescriptor instead')
const ClosedChannelsRequest$json = const {
  '1': 'ClosedChannelsRequest',
  '2': const [
    const {'1': 'cooperative', '3': 1, '4': 1, '5': 8, '10': 'cooperative'},
    const {'1': 'local_force', '3': 2, '4': 1, '5': 8, '10': 'localForce'},
    const {'1': 'remote_force', '3': 3, '4': 1, '5': 8, '10': 'remoteForce'},
    const {'1': 'breach', '3': 4, '4': 1, '5': 8, '10': 'breach'},
    const {'1': 'funding_canceled', '3': 5, '4': 1, '5': 8, '10': 'fundingCanceled'},
    const {'1': 'abandoned', '3': 6, '4': 1, '5': 8, '10': 'abandoned'},
  ],
};

/// Descriptor for `ClosedChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closedChannelsRequestDescriptor = $convert.base64Decode('ChVDbG9zZWRDaGFubmVsc1JlcXVlc3QSIAoLY29vcGVyYXRpdmUYASABKAhSC2Nvb3BlcmF0aXZlEh8KC2xvY2FsX2ZvcmNlGAIgASgIUgpsb2NhbEZvcmNlEiEKDHJlbW90ZV9mb3JjZRgDIAEoCFILcmVtb3RlRm9yY2USFgoGYnJlYWNoGAQgASgIUgZicmVhY2gSKQoQZnVuZGluZ19jYW5jZWxlZBgFIAEoCFIPZnVuZGluZ0NhbmNlbGVkEhwKCWFiYW5kb25lZBgGIAEoCFIJYWJhbmRvbmVk');
@$core.Deprecated('Use closedChannelsResponseDescriptor instead')
const ClosedChannelsResponse$json = const {
  '1': 'ClosedChannelsResponse',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelCloseSummary', '10': 'channels'},
  ],
};

/// Descriptor for `ClosedChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closedChannelsResponseDescriptor = $convert.base64Decode('ChZDbG9zZWRDaGFubmVsc1Jlc3BvbnNlEjYKCGNoYW5uZWxzGAEgAygLMhoubG5ycGMuQ2hhbm5lbENsb3NlU3VtbWFyeVIIY2hhbm5lbHM=');
@$core.Deprecated('Use peerDescriptor instead')
const Peer$json = const {
  '1': 'Peer',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'bytes_sent', '3': 4, '4': 1, '5': 4, '10': 'bytesSent'},
    const {'1': 'bytes_recv', '3': 5, '4': 1, '5': 4, '10': 'bytesRecv'},
    const {'1': 'sat_sent', '3': 6, '4': 1, '5': 3, '10': 'satSent'},
    const {'1': 'sat_recv', '3': 7, '4': 1, '5': 3, '10': 'satRecv'},
    const {'1': 'inbound', '3': 8, '4': 1, '5': 8, '10': 'inbound'},
    const {'1': 'ping_time', '3': 9, '4': 1, '5': 3, '10': 'pingTime'},
    const {'1': 'sync_type', '3': 10, '4': 1, '5': 14, '6': '.lnrpc.Peer.SyncType', '10': 'syncType'},
    const {'1': 'features', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.Peer.FeaturesEntry', '10': 'features'},
    const {'1': 'errors', '3': 12, '4': 3, '5': 11, '6': '.lnrpc.TimestampedError', '10': 'errors'},
    const {'1': 'flap_count', '3': 13, '4': 1, '5': 5, '10': 'flapCount'},
    const {'1': 'last_flap_ns', '3': 14, '4': 1, '5': 3, '10': 'lastFlapNs'},
    const {'1': 'last_ping_payload', '3': 15, '4': 1, '5': 12, '10': 'lastPingPayload'},
  ],
  '3': const [Peer_FeaturesEntry$json],
  '4': const [Peer_SyncType$json],
};

@$core.Deprecated('Use peerDescriptor instead')
const Peer_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use peerDescriptor instead')
const Peer_SyncType$json = const {
  '1': 'SyncType',
  '2': const [
    const {'1': 'UNKNOWN_SYNC', '2': 0},
    const {'1': 'ACTIVE_SYNC', '2': 1},
    const {'1': 'PASSIVE_SYNC', '2': 2},
    const {'1': 'PINNED_SYNC', '2': 3},
  ],
};

/// Descriptor for `Peer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerDescriptor = $convert.base64Decode('CgRQZWVyEhcKB3B1Yl9rZXkYASABKAlSBnB1YktleRIYCgdhZGRyZXNzGAMgASgJUgdhZGRyZXNzEh0KCmJ5dGVzX3NlbnQYBCABKARSCWJ5dGVzU2VudBIdCgpieXRlc19yZWN2GAUgASgEUglieXRlc1JlY3YSGQoIc2F0X3NlbnQYBiABKANSB3NhdFNlbnQSGQoIc2F0X3JlY3YYByABKANSB3NhdFJlY3YSGAoHaW5ib3VuZBgIIAEoCFIHaW5ib3VuZBIbCglwaW5nX3RpbWUYCSABKANSCHBpbmdUaW1lEjEKCXN5bmNfdHlwZRgKIAEoDjIULmxucnBjLlBlZXIuU3luY1R5cGVSCHN5bmNUeXBlEjUKCGZlYXR1cmVzGAsgAygLMhkubG5ycGMuUGVlci5GZWF0dXJlc0VudHJ5UghmZWF0dXJlcxIvCgZlcnJvcnMYDCADKAsyFy5sbnJwYy5UaW1lc3RhbXBlZEVycm9yUgZlcnJvcnMSHQoKZmxhcF9jb3VudBgNIAEoBVIJZmxhcENvdW50EiAKDGxhc3RfZmxhcF9ucxgOIAEoA1IKbGFzdEZsYXBOcxIqChFsYXN0X3BpbmdfcGF5bG9hZBgPIAEoDFIPbGFzdFBpbmdQYXlsb2FkGksKDUZlYXR1cmVzRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSJAoFdmFsdWUYAiABKAsyDi5sbnJwYy5GZWF0dXJlUgV2YWx1ZToCOAEiUAoIU3luY1R5cGUSEAoMVU5LTk9XTl9TWU5DEAASDwoLQUNUSVZFX1NZTkMQARIQCgxQQVNTSVZFX1NZTkMQAhIPCgtQSU5ORURfU1lOQxAD');
@$core.Deprecated('Use timestampedErrorDescriptor instead')
const TimestampedError$json = const {
  '1': 'TimestampedError',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TimestampedError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampedErrorDescriptor = $convert.base64Decode('ChBUaW1lc3RhbXBlZEVycm9yEhwKCXRpbWVzdGFtcBgBIAEoBFIJdGltZXN0YW1wEhQKBWVycm9yGAIgASgJUgVlcnJvcg==');
@$core.Deprecated('Use listPeersRequestDescriptor instead')
const ListPeersRequest$json = const {
  '1': 'ListPeersRequest',
  '2': const [
    const {'1': 'latest_error', '3': 1, '4': 1, '5': 8, '10': 'latestError'},
  ],
};

/// Descriptor for `ListPeersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPeersRequestDescriptor = $convert.base64Decode('ChBMaXN0UGVlcnNSZXF1ZXN0EiEKDGxhdGVzdF9lcnJvchgBIAEoCFILbGF0ZXN0RXJyb3I=');
@$core.Deprecated('Use listPeersResponseDescriptor instead')
const ListPeersResponse$json = const {
  '1': 'ListPeersResponse',
  '2': const [
    const {'1': 'peers', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Peer', '10': 'peers'},
  ],
};

/// Descriptor for `ListPeersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPeersResponseDescriptor = $convert.base64Decode('ChFMaXN0UGVlcnNSZXNwb25zZRIhCgVwZWVycxgBIAMoCzILLmxucnBjLlBlZXJSBXBlZXJz');
@$core.Deprecated('Use peerEventSubscriptionDescriptor instead')
const PeerEventSubscription$json = const {
  '1': 'PeerEventSubscription',
};

/// Descriptor for `PeerEventSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerEventSubscriptionDescriptor = $convert.base64Decode('ChVQZWVyRXZlbnRTdWJzY3JpcHRpb24=');
@$core.Deprecated('Use peerEventDescriptor instead')
const PeerEvent$json = const {
  '1': 'PeerEvent',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.lnrpc.PeerEvent.EventType', '10': 'type'},
  ],
  '4': const [PeerEvent_EventType$json],
};

@$core.Deprecated('Use peerEventDescriptor instead')
const PeerEvent_EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'PEER_ONLINE', '2': 0},
    const {'1': 'PEER_OFFLINE', '2': 1},
  ],
};

/// Descriptor for `PeerEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerEventDescriptor = $convert.base64Decode('CglQZWVyRXZlbnQSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5Ei4KBHR5cGUYAiABKA4yGi5sbnJwYy5QZWVyRXZlbnQuRXZlbnRUeXBlUgR0eXBlIi4KCUV2ZW50VHlwZRIPCgtQRUVSX09OTElORRAAEhAKDFBFRVJfT0ZGTElORRAB');
@$core.Deprecated('Use getInfoRequestDescriptor instead')
const GetInfoRequest$json = const {
  '1': 'GetInfoRequest',
};

/// Descriptor for `GetInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoRequestDescriptor = $convert.base64Decode('Cg5HZXRJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use getInfoResponseDescriptor instead')
const GetInfoResponse$json = const {
  '1': 'GetInfoResponse',
  '2': const [
    const {'1': 'version', '3': 14, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'commit_hash', '3': 20, '4': 1, '5': 9, '10': 'commitHash'},
    const {'1': 'identity_pubkey', '3': 1, '4': 1, '5': 9, '10': 'identityPubkey'},
    const {'1': 'pubkey_bech32', '3': 21, '4': 1, '5': 9, '10': 'pubkeyBech32'},
    const {'1': 'coin_address', '3': 22, '4': 1, '5': 9, '10': 'coinAddress'},
    const {'1': 'alias', '3': 2, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'color', '3': 17, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'num_pending_channels', '3': 3, '4': 1, '5': 13, '10': 'numPendingChannels'},
    const {'1': 'num_active_channels', '3': 4, '4': 1, '5': 13, '10': 'numActiveChannels'},
    const {'1': 'num_inactive_channels', '3': 15, '4': 1, '5': 13, '10': 'numInactiveChannels'},
    const {'1': 'num_peers', '3': 5, '4': 1, '5': 13, '10': 'numPeers'},
    const {'1': 'block_height', '3': 6, '4': 1, '5': 13, '10': 'blockHeight'},
    const {'1': 'block_hash', '3': 8, '4': 1, '5': 9, '10': 'blockHash'},
    const {'1': 'best_header_timestamp', '3': 13, '4': 1, '5': 3, '10': 'bestHeaderTimestamp'},
    const {'1': 'synced_to_chain', '3': 9, '4': 1, '5': 8, '10': 'syncedToChain'},
    const {'1': 'synced_to_graph', '3': 18, '4': 1, '5': 8, '10': 'syncedToGraph'},
    const {
      '1': 'testnet',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'testnet',
    },
    const {'1': 'chains', '3': 16, '4': 3, '5': 11, '6': '.lnrpc.Chain', '10': 'chains'},
    const {'1': 'uris', '3': 12, '4': 3, '5': 9, '10': 'uris'},
    const {'1': 'features', '3': 19, '4': 3, '5': 11, '6': '.lnrpc.GetInfoResponse.FeaturesEntry', '10': 'features'},
  ],
  '3': const [GetInfoResponse_FeaturesEntry$json],
  '9': const [
    const {'1': 11, '2': 12},
  ],
};

@$core.Deprecated('Use getInfoResponseDescriptor instead')
const GetInfoResponse_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoResponseDescriptor = $convert.base64Decode('Cg9HZXRJbmZvUmVzcG9uc2USGAoHdmVyc2lvbhgOIAEoCVIHdmVyc2lvbhIfCgtjb21taXRfaGFzaBgUIAEoCVIKY29tbWl0SGFzaBInCg9pZGVudGl0eV9wdWJrZXkYASABKAlSDmlkZW50aXR5UHVia2V5EiMKDXB1YmtleV9iZWNoMzIYFSABKAlSDHB1YmtleUJlY2gzMhIhCgxjb2luX2FkZHJlc3MYFiABKAlSC2NvaW5BZGRyZXNzEhQKBWFsaWFzGAIgASgJUgVhbGlhcxIUCgVjb2xvchgRIAEoCVIFY29sb3ISMAoUbnVtX3BlbmRpbmdfY2hhbm5lbHMYAyABKA1SEm51bVBlbmRpbmdDaGFubmVscxIuChNudW1fYWN0aXZlX2NoYW5uZWxzGAQgASgNUhFudW1BY3RpdmVDaGFubmVscxIyChVudW1faW5hY3RpdmVfY2hhbm5lbHMYDyABKA1SE251bUluYWN0aXZlQ2hhbm5lbHMSGwoJbnVtX3BlZXJzGAUgASgNUghudW1QZWVycxIhCgxibG9ja19oZWlnaHQYBiABKA1SC2Jsb2NrSGVpZ2h0Eh0KCmJsb2NrX2hhc2gYCCABKAlSCWJsb2NrSGFzaBIyChViZXN0X2hlYWRlcl90aW1lc3RhbXAYDSABKANSE2Jlc3RIZWFkZXJUaW1lc3RhbXASJgoPc3luY2VkX3RvX2NoYWluGAkgASgIUg1zeW5jZWRUb0NoYWluEiYKD3N5bmNlZF90b19ncmFwaBgSIAEoCFINc3luY2VkVG9HcmFwaBIcCgd0ZXN0bmV0GAogASgIQgIYAVIHdGVzdG5ldBIkCgZjaGFpbnMYECADKAsyDC5sbnJwYy5DaGFpblIGY2hhaW5zEhIKBHVyaXMYDCADKAlSBHVyaXMSQAoIZmVhdHVyZXMYEyADKAsyJC5sbnJwYy5HZXRJbmZvUmVzcG9uc2UuRmVhdHVyZXNFbnRyeVIIZmVhdHVyZXMaSwoNRmVhdHVyZXNFbnRyeRIQCgNrZXkYASABKA1SA2tleRIkCgV2YWx1ZRgCIAEoCzIOLmxucnBjLkZlYXR1cmVSBXZhbHVlOgI4AUoECAsQDA==');
@$core.Deprecated('Use getRecoveryInfoRequestDescriptor instead')
const GetRecoveryInfoRequest$json = const {
  '1': 'GetRecoveryInfoRequest',
};

/// Descriptor for `GetRecoveryInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecoveryInfoRequestDescriptor = $convert.base64Decode('ChZHZXRSZWNvdmVyeUluZm9SZXF1ZXN0');
@$core.Deprecated('Use getRecoveryInfoResponseDescriptor instead')
const GetRecoveryInfoResponse$json = const {
  '1': 'GetRecoveryInfoResponse',
  '2': const [
    const {'1': 'recovery_mode', '3': 1, '4': 1, '5': 8, '10': 'recoveryMode'},
    const {'1': 'recovery_finished', '3': 2, '4': 1, '5': 8, '10': 'recoveryFinished'},
    const {'1': 'progress', '3': 3, '4': 1, '5': 1, '10': 'progress'},
  ],
};

/// Descriptor for `GetRecoveryInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecoveryInfoResponseDescriptor = $convert.base64Decode('ChdHZXRSZWNvdmVyeUluZm9SZXNwb25zZRIjCg1yZWNvdmVyeV9tb2RlGAEgASgIUgxyZWNvdmVyeU1vZGUSKwoRcmVjb3ZlcnlfZmluaXNoZWQYAiABKAhSEHJlY292ZXJ5RmluaXNoZWQSGgoIcHJvZ3Jlc3MYAyABKAFSCHByb2dyZXNz');
@$core.Deprecated('Use chainDescriptor instead')
const Chain$json = const {
  '1': 'Chain',
  '2': const [
    const {'1': 'chain', '3': 1, '4': 1, '5': 9, '10': 'chain'},
    const {'1': 'network', '3': 2, '4': 1, '5': 9, '10': 'network'},
  ],
};

/// Descriptor for `Chain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chainDescriptor = $convert.base64Decode('CgVDaGFpbhIUCgVjaGFpbhgBIAEoCVIFY2hhaW4SGAoHbmV0d29yaxgCIAEoCVIHbmV0d29yaw==');
@$core.Deprecated('Use confirmationUpdateDescriptor instead')
const ConfirmationUpdate$json = const {
  '1': 'ConfirmationUpdate',
  '2': const [
    const {'1': 'block_sha', '3': 1, '4': 1, '5': 12, '10': 'blockSha'},
    const {'1': 'block_height', '3': 2, '4': 1, '5': 5, '10': 'blockHeight'},
    const {'1': 'num_confs_left', '3': 3, '4': 1, '5': 13, '10': 'numConfsLeft'},
  ],
};

/// Descriptor for `ConfirmationUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmationUpdateDescriptor = $convert.base64Decode('ChJDb25maXJtYXRpb25VcGRhdGUSGwoJYmxvY2tfc2hhGAEgASgMUghibG9ja1NoYRIhCgxibG9ja19oZWlnaHQYAiABKAVSC2Jsb2NrSGVpZ2h0EiQKDm51bV9jb25mc19sZWZ0GAMgASgNUgxudW1Db25mc0xlZnQ=');
@$core.Deprecated('Use channelOpenUpdateDescriptor instead')
const ChannelOpenUpdate$json = const {
  '1': 'ChannelOpenUpdate',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'channelPoint'},
  ],
};

/// Descriptor for `ChannelOpenUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelOpenUpdateDescriptor = $convert.base64Decode('ChFDaGFubmVsT3BlblVwZGF0ZRI4Cg1jaGFubmVsX3BvaW50GAEgASgLMhMubG5ycGMuQ2hhbm5lbFBvaW50UgxjaGFubmVsUG9pbnQ=');
@$core.Deprecated('Use channelCloseUpdateDescriptor instead')
const ChannelCloseUpdate$json = const {
  '1': 'ChannelCloseUpdate',
  '2': const [
    const {'1': 'closing_txid', '3': 1, '4': 1, '5': 12, '10': 'closingTxid'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `ChannelCloseUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCloseUpdateDescriptor = $convert.base64Decode('ChJDaGFubmVsQ2xvc2VVcGRhdGUSIQoMY2xvc2luZ190eGlkGAEgASgMUgtjbG9zaW5nVHhpZBIYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use closeChannelRequestDescriptor instead')
const CloseChannelRequest$json = const {
  '1': 'CloseChannelRequest',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'channelPoint'},
    const {'1': 'force', '3': 2, '4': 1, '5': 8, '10': 'force'},
    const {'1': 'ob_simple_send', '3': 7, '4': 1, '5': 8, '10': 'obSimpleSend'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {
      '1': 'sat_per_byte',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'satPerByte',
    },
    const {'1': 'delivery_address', '3': 5, '4': 1, '5': 9, '10': 'deliveryAddress'},
    const {'1': 'sat_per_vbyte', '3': 6, '4': 1, '5': 4, '10': 'satPerVbyte'},
  ],
};

/// Descriptor for `CloseChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeChannelRequestDescriptor = $convert.base64Decode('ChNDbG9zZUNoYW5uZWxSZXF1ZXN0EjgKDWNoYW5uZWxfcG9pbnQYASABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSDGNoYW5uZWxQb2ludBIUCgVmb3JjZRgCIAEoCFIFZm9yY2USJAoOb2Jfc2ltcGxlX3NlbmQYByABKAhSDG9iU2ltcGxlU2VuZBIfCgt0YXJnZXRfY29uZhgDIAEoBVIKdGFyZ2V0Q29uZhIkCgxzYXRfcGVyX2J5dGUYBCABKANCAhgBUgpzYXRQZXJCeXRlEikKEGRlbGl2ZXJ5X2FkZHJlc3MYBSABKAlSD2RlbGl2ZXJ5QWRkcmVzcxIiCg1zYXRfcGVyX3ZieXRlGAYgASgEUgtzYXRQZXJWYnl0ZQ==');
@$core.Deprecated('Use closeStatusUpdateDescriptor instead')
const CloseStatusUpdate$json = const {
  '1': 'CloseStatusUpdate',
  '2': const [
    const {'1': 'close_pending', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingUpdate', '9': 0, '10': 'closePending'},
    const {'1': 'chan_close', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelCloseUpdate', '9': 0, '10': 'chanClose'},
  ],
  '8': const [
    const {'1': 'update'},
  ],
};

/// Descriptor for `CloseStatusUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeStatusUpdateDescriptor = $convert.base64Decode('ChFDbG9zZVN0YXR1c1VwZGF0ZRI7Cg1jbG9zZV9wZW5kaW5nGAEgASgLMhQubG5ycGMuUGVuZGluZ1VwZGF0ZUgAUgxjbG9zZVBlbmRpbmcSOgoKY2hhbl9jbG9zZRgDIAEoCzIZLmxucnBjLkNoYW5uZWxDbG9zZVVwZGF0ZUgAUgljaGFuQ2xvc2VCCAoGdXBkYXRl');
@$core.Deprecated('Use pendingUpdateDescriptor instead')
const PendingUpdate$json = const {
  '1': 'PendingUpdate',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'output_index', '3': 2, '4': 1, '5': 13, '10': 'outputIndex'},
    const {'1': 'txid_str', '3': 3, '4': 1, '5': 9, '10': 'txidStr'},
  ],
};

/// Descriptor for `PendingUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingUpdateDescriptor = $convert.base64Decode('Cg1QZW5kaW5nVXBkYXRlEhIKBHR4aWQYASABKAxSBHR4aWQSIQoMb3V0cHV0X2luZGV4GAIgASgNUgtvdXRwdXRJbmRleBIZCgh0eGlkX3N0chgDIAEoCVIHdHhpZFN0cg==');
@$core.Deprecated('Use readyForPsbtFundingDescriptor instead')
const ReadyForPsbtFunding$json = const {
  '1': 'ReadyForPsbtFunding',
  '2': const [
    const {'1': 'funding_address', '3': 1, '4': 1, '5': 9, '10': 'fundingAddress'},
    const {'1': 'funding_amount', '3': 2, '4': 1, '5': 3, '10': 'fundingAmount'},
    const {'1': 'psbt', '3': 3, '4': 1, '5': 12, '10': 'psbt'},
  ],
};

/// Descriptor for `ReadyForPsbtFunding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readyForPsbtFundingDescriptor = $convert.base64Decode('ChNSZWFkeUZvclBzYnRGdW5kaW5nEicKD2Z1bmRpbmdfYWRkcmVzcxgBIAEoCVIOZnVuZGluZ0FkZHJlc3MSJQoOZnVuZGluZ19hbW91bnQYAiABKANSDWZ1bmRpbmdBbW91bnQSEgoEcHNidBgDIAEoDFIEcHNidA==');
@$core.Deprecated('Use batchOpenChannelRequestDescriptor instead')
const BatchOpenChannelRequest$json = const {
  '1': 'BatchOpenChannelRequest',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.BatchOpenChannel', '10': 'channels'},
    const {'1': 'target_conf', '3': 2, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_vbyte', '3': 3, '4': 1, '5': 3, '10': 'satPerVbyte'},
    const {'1': 'min_confs', '3': 4, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 5, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
    const {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `BatchOpenChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchOpenChannelRequestDescriptor = $convert.base64Decode('ChdCYXRjaE9wZW5DaGFubmVsUmVxdWVzdBIzCghjaGFubmVscxgBIAMoCzIXLmxucnBjLkJhdGNoT3BlbkNoYW5uZWxSCGNoYW5uZWxzEh8KC3RhcmdldF9jb25mGAIgASgFUgp0YXJnZXRDb25mEiIKDXNhdF9wZXJfdmJ5dGUYAyABKANSC3NhdFBlclZieXRlEhsKCW1pbl9jb25mcxgEIAEoBVIIbWluQ29uZnMSKwoRc3BlbmRfdW5jb25maXJtZWQYBSABKAhSEHNwZW5kVW5jb25maXJtZWQSFAoFbGFiZWwYBiABKAlSBWxhYmVs');
@$core.Deprecated('Use batchOpenChannelDescriptor instead')
const BatchOpenChannel$json = const {
  '1': 'BatchOpenChannel',
  '2': const [
    const {'1': 'node_pubkey', '3': 1, '4': 1, '5': 12, '10': 'nodePubkey'},
    const {'1': 'local_funding_btc_amount', '3': 2, '4': 1, '5': 3, '10': 'localFundingBtcAmount'},
    const {'1': 'local_funding_asset_amount', '3': 10, '4': 1, '5': 3, '10': 'localFundingAssetAmount'},
    const {'1': 'push_btc_sat', '3': 3, '4': 1, '5': 3, '10': 'pushBtcSat'},
    const {'1': 'push_asset_sat', '3': 11, '4': 1, '5': 3, '10': 'pushAssetSat'},
    const {'1': 'asset_id', '3': 12, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'private', '3': 4, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'min_htlc_msat', '3': 5, '4': 1, '5': 3, '10': 'minHtlcMsat'},
    const {'1': 'remote_csv_delay', '3': 6, '4': 1, '5': 13, '10': 'remoteCsvDelay'},
    const {'1': 'close_address', '3': 7, '4': 1, '5': 9, '10': 'closeAddress'},
    const {'1': 'pending_chan_id', '3': 8, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'commitment_type', '3': 9, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
  ],
};

/// Descriptor for `BatchOpenChannel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchOpenChannelDescriptor = $convert.base64Decode('ChBCYXRjaE9wZW5DaGFubmVsEh8KC25vZGVfcHVia2V5GAEgASgMUgpub2RlUHVia2V5EjcKGGxvY2FsX2Z1bmRpbmdfYnRjX2Ftb3VudBgCIAEoA1IVbG9jYWxGdW5kaW5nQnRjQW1vdW50EjsKGmxvY2FsX2Z1bmRpbmdfYXNzZXRfYW1vdW50GAogASgDUhdsb2NhbEZ1bmRpbmdBc3NldEFtb3VudBIgCgxwdXNoX2J0Y19zYXQYAyABKANSCnB1c2hCdGNTYXQSJAoOcHVzaF9hc3NldF9zYXQYCyABKANSDHB1c2hBc3NldFNhdBIZCghhc3NldF9pZBgMIAEoDVIHYXNzZXRJZBIYCgdwcml2YXRlGAQgASgIUgdwcml2YXRlEiIKDW1pbl9odGxjX21zYXQYBSABKANSC21pbkh0bGNNc2F0EigKEHJlbW90ZV9jc3ZfZGVsYXkYBiABKA1SDnJlbW90ZUNzdkRlbGF5EiMKDWNsb3NlX2FkZHJlc3MYByABKAlSDGNsb3NlQWRkcmVzcxImCg9wZW5kaW5nX2NoYW5faWQYCCABKAxSDXBlbmRpbmdDaGFuSWQSPgoPY29tbWl0bWVudF90eXBlGAkgASgOMhUubG5ycGMuQ29tbWl0bWVudFR5cGVSDmNvbW1pdG1lbnRUeXBl');
@$core.Deprecated('Use batchOpenChannelResponseDescriptor instead')
const BatchOpenChannelResponse$json = const {
  '1': 'BatchOpenChannelResponse',
  '2': const [
    const {'1': 'pending_channels', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.PendingUpdate', '10': 'pendingChannels'},
  ],
};

/// Descriptor for `BatchOpenChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchOpenChannelResponseDescriptor = $convert.base64Decode('ChhCYXRjaE9wZW5DaGFubmVsUmVzcG9uc2USPwoQcGVuZGluZ19jaGFubmVscxgBIAMoCzIULmxucnBjLlBlbmRpbmdVcGRhdGVSD3BlbmRpbmdDaGFubmVscw==');
@$core.Deprecated('Use openChannelRequestDescriptor instead')
const OpenChannelRequest$json = const {
  '1': 'OpenChannelRequest',
  '2': const [
    const {'1': 'sat_per_vbyte', '3': 1, '4': 1, '5': 4, '10': 'satPerVbyte'},
    const {'1': 'node_pubkey', '3': 2, '4': 1, '5': 12, '10': 'nodePubkey'},
    const {
      '1': 'node_pubkey_string',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'nodePubkeyString',
    },
    const {'1': 'local_funding_btc_amount', '3': 4, '4': 1, '5': 3, '10': 'localFundingBtcAmount'},
    const {'1': 'push_btc_sat', '3': 5, '4': 1, '5': 3, '10': 'pushBtcSat'},
    const {'1': 'asset_id', '3': 19, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'push_asset_sat', '3': 20, '4': 1, '5': 3, '10': 'pushAssetSat'},
    const {'1': 'local_funding_asset_amount', '3': 21, '4': 1, '5': 3, '10': 'localFundingAssetAmount'},
    const {'1': 'target_conf', '3': 6, '4': 1, '5': 5, '10': 'targetConf'},
    const {
      '1': 'sat_per_byte',
      '3': 7,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'satPerByte',
    },
    const {'1': 'private', '3': 8, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'min_htlc_msat', '3': 9, '4': 1, '5': 3, '10': 'minHtlcMsat'},
    const {'1': 'remote_csv_delay', '3': 10, '4': 1, '5': 13, '10': 'remoteCsvDelay'},
    const {'1': 'min_confs', '3': 11, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 12, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
    const {'1': 'close_address', '3': 13, '4': 1, '5': 9, '10': 'closeAddress'},
    const {'1': 'funding_shim', '3': 14, '4': 1, '5': 11, '6': '.lnrpc.FundingShim', '10': 'fundingShim'},
    const {'1': 'remote_max_value_in_flight_msat', '3': 15, '4': 1, '5': 4, '10': 'remoteMaxValueInFlightMsat'},
    const {'1': 'remote_max_htlcs', '3': 16, '4': 1, '5': 13, '10': 'remoteMaxHtlcs'},
    const {'1': 'max_local_csv', '3': 17, '4': 1, '5': 13, '10': 'maxLocalCsv'},
    const {'1': 'commitment_type', '3': 18, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
  ],
};

/// Descriptor for `OpenChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openChannelRequestDescriptor = $convert.base64Decode('ChJPcGVuQ2hhbm5lbFJlcXVlc3QSIgoNc2F0X3Blcl92Ynl0ZRgBIAEoBFILc2F0UGVyVmJ5dGUSHwoLbm9kZV9wdWJrZXkYAiABKAxSCm5vZGVQdWJrZXkSMAoSbm9kZV9wdWJrZXlfc3RyaW5nGAMgASgJQgIYAVIQbm9kZVB1YmtleVN0cmluZxI3Chhsb2NhbF9mdW5kaW5nX2J0Y19hbW91bnQYBCABKANSFWxvY2FsRnVuZGluZ0J0Y0Ftb3VudBIgCgxwdXNoX2J0Y19zYXQYBSABKANSCnB1c2hCdGNTYXQSGQoIYXNzZXRfaWQYEyABKA1SB2Fzc2V0SWQSJAoOcHVzaF9hc3NldF9zYXQYFCABKANSDHB1c2hBc3NldFNhdBI7Chpsb2NhbF9mdW5kaW5nX2Fzc2V0X2Ftb3VudBgVIAEoA1IXbG9jYWxGdW5kaW5nQXNzZXRBbW91bnQSHwoLdGFyZ2V0X2NvbmYYBiABKAVSCnRhcmdldENvbmYSJAoMc2F0X3Blcl9ieXRlGAcgASgDQgIYAVIKc2F0UGVyQnl0ZRIYCgdwcml2YXRlGAggASgIUgdwcml2YXRlEiIKDW1pbl9odGxjX21zYXQYCSABKANSC21pbkh0bGNNc2F0EigKEHJlbW90ZV9jc3ZfZGVsYXkYCiABKA1SDnJlbW90ZUNzdkRlbGF5EhsKCW1pbl9jb25mcxgLIAEoBVIIbWluQ29uZnMSKwoRc3BlbmRfdW5jb25maXJtZWQYDCABKAhSEHNwZW5kVW5jb25maXJtZWQSIwoNY2xvc2VfYWRkcmVzcxgNIAEoCVIMY2xvc2VBZGRyZXNzEjUKDGZ1bmRpbmdfc2hpbRgOIAEoCzISLmxucnBjLkZ1bmRpbmdTaGltUgtmdW5kaW5nU2hpbRJDCh9yZW1vdGVfbWF4X3ZhbHVlX2luX2ZsaWdodF9tc2F0GA8gASgEUhpyZW1vdGVNYXhWYWx1ZUluRmxpZ2h0TXNhdBIoChByZW1vdGVfbWF4X2h0bGNzGBAgASgNUg5yZW1vdGVNYXhIdGxjcxIiCg1tYXhfbG9jYWxfY3N2GBEgASgNUgttYXhMb2NhbENzdhI+Cg9jb21taXRtZW50X3R5cGUYEiABKA4yFS5sbnJwYy5Db21taXRtZW50VHlwZVIOY29tbWl0bWVudFR5cGU=');
@$core.Deprecated('Use openStatusUpdateDescriptor instead')
const OpenStatusUpdate$json = const {
  '1': 'OpenStatusUpdate',
  '2': const [
    const {'1': 'chan_pending', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingUpdate', '9': 0, '10': 'chanPending'},
    const {'1': 'chan_open', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelOpenUpdate', '9': 0, '10': 'chanOpen'},
    const {'1': 'psbt_fund', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.ReadyForPsbtFunding', '9': 0, '10': 'psbtFund'},
    const {'1': 'pending_chan_id', '3': 4, '4': 1, '5': 12, '10': 'pendingChanId'},
  ],
  '8': const [
    const {'1': 'update'},
  ],
};

/// Descriptor for `OpenStatusUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openStatusUpdateDescriptor = $convert.base64Decode('ChBPcGVuU3RhdHVzVXBkYXRlEjkKDGNoYW5fcGVuZGluZxgBIAEoCzIULmxucnBjLlBlbmRpbmdVcGRhdGVIAFILY2hhblBlbmRpbmcSNwoJY2hhbl9vcGVuGAMgASgLMhgubG5ycGMuQ2hhbm5lbE9wZW5VcGRhdGVIAFIIY2hhbk9wZW4SOQoJcHNidF9mdW5kGAUgASgLMhoubG5ycGMuUmVhZHlGb3JQc2J0RnVuZGluZ0gAUghwc2J0RnVuZBImCg9wZW5kaW5nX2NoYW5faWQYBCABKAxSDXBlbmRpbmdDaGFuSWRCCAoGdXBkYXRl');
@$core.Deprecated('Use keyLocatorDescriptor instead')
const KeyLocator$json = const {
  '1': 'KeyLocator',
  '2': const [
    const {'1': 'key_family', '3': 1, '4': 1, '5': 5, '10': 'keyFamily'},
    const {'1': 'key_index', '3': 2, '4': 1, '5': 5, '10': 'keyIndex'},
  ],
};

/// Descriptor for `KeyLocator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyLocatorDescriptor = $convert.base64Decode('CgpLZXlMb2NhdG9yEh0KCmtleV9mYW1pbHkYASABKAVSCWtleUZhbWlseRIbCglrZXlfaW5kZXgYAiABKAVSCGtleUluZGV4');
@$core.Deprecated('Use keyDescriptorDescriptor instead')
const KeyDescriptor$json = const {
  '1': 'KeyDescriptor',
  '2': const [
    const {'1': 'raw_key_bytes', '3': 1, '4': 1, '5': 12, '10': 'rawKeyBytes'},
    const {'1': 'key_loc', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.KeyLocator', '10': 'keyLoc'},
  ],
};

/// Descriptor for `KeyDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptorDescriptor = $convert.base64Decode('Cg1LZXlEZXNjcmlwdG9yEiIKDXJhd19rZXlfYnl0ZXMYASABKAxSC3Jhd0tleUJ5dGVzEioKB2tleV9sb2MYAiABKAsyES5sbnJwYy5LZXlMb2NhdG9yUgZrZXlMb2M=');
@$core.Deprecated('Use chanPointShimDescriptor instead')
const ChanPointShim$json = const {
  '1': 'ChanPointShim',
  '2': const [
    const {'1': 'amt', '3': 1, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
    const {'1': 'local_key', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.KeyDescriptor', '10': 'localKey'},
    const {'1': 'remote_key', '3': 4, '4': 1, '5': 12, '10': 'remoteKey'},
    const {'1': 'pending_chan_id', '3': 5, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'thaw_height', '3': 6, '4': 1, '5': 13, '10': 'thawHeight'},
  ],
};

/// Descriptor for `ChanPointShim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanPointShimDescriptor = $convert.base64Decode('Cg1DaGFuUG9pbnRTaGltEhAKA2FtdBgBIAEoA1IDYW10EjIKCmNoYW5fcG9pbnQYAiABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCWNoYW5Qb2ludBIxCglsb2NhbF9rZXkYAyABKAsyFC5sbnJwYy5LZXlEZXNjcmlwdG9yUghsb2NhbEtleRIdCgpyZW1vdGVfa2V5GAQgASgMUglyZW1vdGVLZXkSJgoPcGVuZGluZ19jaGFuX2lkGAUgASgMUg1wZW5kaW5nQ2hhbklkEh8KC3RoYXdfaGVpZ2h0GAYgASgNUgp0aGF3SGVpZ2h0');
@$core.Deprecated('Use psbtShimDescriptor instead')
const PsbtShim$json = const {
  '1': 'PsbtShim',
  '2': const [
    const {'1': 'pending_chan_id', '3': 1, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'base_psbt', '3': 2, '4': 1, '5': 12, '10': 'basePsbt'},
    const {'1': 'no_publish', '3': 3, '4': 1, '5': 8, '10': 'noPublish'},
  ],
};

/// Descriptor for `PsbtShim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List psbtShimDescriptor = $convert.base64Decode('CghQc2J0U2hpbRImCg9wZW5kaW5nX2NoYW5faWQYASABKAxSDXBlbmRpbmdDaGFuSWQSGwoJYmFzZV9wc2J0GAIgASgMUghiYXNlUHNidBIdCgpub19wdWJsaXNoGAMgASgIUglub1B1Ymxpc2g=');
@$core.Deprecated('Use fundingShimDescriptor instead')
const FundingShim$json = const {
  '1': 'FundingShim',
  '2': const [
    const {'1': 'chan_point_shim', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChanPointShim', '9': 0, '10': 'chanPointShim'},
    const {'1': 'psbt_shim', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.PsbtShim', '9': 0, '10': 'psbtShim'},
  ],
  '8': const [
    const {'1': 'shim'},
  ],
};

/// Descriptor for `FundingShim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingShimDescriptor = $convert.base64Decode('CgtGdW5kaW5nU2hpbRI+Cg9jaGFuX3BvaW50X3NoaW0YASABKAsyFC5sbnJwYy5DaGFuUG9pbnRTaGltSABSDWNoYW5Qb2ludFNoaW0SLgoJcHNidF9zaGltGAIgASgLMg8ubG5ycGMuUHNidFNoaW1IAFIIcHNidFNoaW1CBgoEc2hpbQ==');
@$core.Deprecated('Use fundingShimCancelDescriptor instead')
const FundingShimCancel$json = const {
  '1': 'FundingShimCancel',
  '2': const [
    const {'1': 'pending_chan_id', '3': 1, '4': 1, '5': 12, '10': 'pendingChanId'},
  ],
};

/// Descriptor for `FundingShimCancel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingShimCancelDescriptor = $convert.base64Decode('ChFGdW5kaW5nU2hpbUNhbmNlbBImCg9wZW5kaW5nX2NoYW5faWQYASABKAxSDXBlbmRpbmdDaGFuSWQ=');
@$core.Deprecated('Use fundingPsbtVerifyDescriptor instead')
const FundingPsbtVerify$json = const {
  '1': 'FundingPsbtVerify',
  '2': const [
    const {'1': 'funded_psbt', '3': 1, '4': 1, '5': 12, '10': 'fundedPsbt'},
    const {'1': 'pending_chan_id', '3': 2, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'skip_finalize', '3': 3, '4': 1, '5': 8, '10': 'skipFinalize'},
  ],
};

/// Descriptor for `FundingPsbtVerify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingPsbtVerifyDescriptor = $convert.base64Decode('ChFGdW5kaW5nUHNidFZlcmlmeRIfCgtmdW5kZWRfcHNidBgBIAEoDFIKZnVuZGVkUHNidBImCg9wZW5kaW5nX2NoYW5faWQYAiABKAxSDXBlbmRpbmdDaGFuSWQSIwoNc2tpcF9maW5hbGl6ZRgDIAEoCFIMc2tpcEZpbmFsaXpl');
@$core.Deprecated('Use fundingPsbtFinalizeDescriptor instead')
const FundingPsbtFinalize$json = const {
  '1': 'FundingPsbtFinalize',
  '2': const [
    const {'1': 'signed_psbt', '3': 1, '4': 1, '5': 12, '10': 'signedPsbt'},
    const {'1': 'pending_chan_id', '3': 2, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'final_raw_tx', '3': 3, '4': 1, '5': 12, '10': 'finalRawTx'},
  ],
};

/// Descriptor for `FundingPsbtFinalize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingPsbtFinalizeDescriptor = $convert.base64Decode('ChNGdW5kaW5nUHNidEZpbmFsaXplEh8KC3NpZ25lZF9wc2J0GAEgASgMUgpzaWduZWRQc2J0EiYKD3BlbmRpbmdfY2hhbl9pZBgCIAEoDFINcGVuZGluZ0NoYW5JZBIgCgxmaW5hbF9yYXdfdHgYAyABKAxSCmZpbmFsUmF3VHg=');
@$core.Deprecated('Use fundingTransitionMsgDescriptor instead')
const FundingTransitionMsg$json = const {
  '1': 'FundingTransitionMsg',
  '2': const [
    const {'1': 'shim_register', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.FundingShim', '9': 0, '10': 'shimRegister'},
    const {'1': 'shim_cancel', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.FundingShimCancel', '9': 0, '10': 'shimCancel'},
    const {'1': 'psbt_verify', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.FundingPsbtVerify', '9': 0, '10': 'psbtVerify'},
    const {'1': 'psbt_finalize', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.FundingPsbtFinalize', '9': 0, '10': 'psbtFinalize'},
  ],
  '8': const [
    const {'1': 'trigger'},
  ],
};

/// Descriptor for `FundingTransitionMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingTransitionMsgDescriptor = $convert.base64Decode('ChRGdW5kaW5nVHJhbnNpdGlvbk1zZxI5Cg1zaGltX3JlZ2lzdGVyGAEgASgLMhIubG5ycGMuRnVuZGluZ1NoaW1IAFIMc2hpbVJlZ2lzdGVyEjsKC3NoaW1fY2FuY2VsGAIgASgLMhgubG5ycGMuRnVuZGluZ1NoaW1DYW5jZWxIAFIKc2hpbUNhbmNlbBI7Cgtwc2J0X3ZlcmlmeRgDIAEoCzIYLmxucnBjLkZ1bmRpbmdQc2J0VmVyaWZ5SABSCnBzYnRWZXJpZnkSQQoNcHNidF9maW5hbGl6ZRgEIAEoCzIaLmxucnBjLkZ1bmRpbmdQc2J0RmluYWxpemVIAFIMcHNidEZpbmFsaXplQgkKB3RyaWdnZXI=');
@$core.Deprecated('Use fundingStateStepRespDescriptor instead')
const FundingStateStepResp$json = const {
  '1': 'FundingStateStepResp',
};

/// Descriptor for `FundingStateStepResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingStateStepRespDescriptor = $convert.base64Decode('ChRGdW5kaW5nU3RhdGVTdGVwUmVzcA==');
@$core.Deprecated('Use pendingHTLCDescriptor instead')
const PendingHTLC$json = const {
  '1': 'PendingHTLC',
  '2': const [
    const {'1': 'incoming', '3': 1, '4': 1, '5': 8, '10': 'incoming'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'outpoint', '3': 3, '4': 1, '5': 9, '10': 'outpoint'},
    const {'1': 'maturity_height', '3': 4, '4': 1, '5': 13, '10': 'maturityHeight'},
    const {'1': 'blocks_til_maturity', '3': 5, '4': 1, '5': 5, '10': 'blocksTilMaturity'},
    const {'1': 'stage', '3': 6, '4': 1, '5': 13, '10': 'stage'},
  ],
};

/// Descriptor for `PendingHTLC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingHTLCDescriptor = $convert.base64Decode('CgtQZW5kaW5nSFRMQxIaCghpbmNvbWluZxgBIAEoCFIIaW5jb21pbmcSFgoGYW1vdW50GAIgASgDUgZhbW91bnQSGgoIb3V0cG9pbnQYAyABKAlSCG91dHBvaW50EicKD21hdHVyaXR5X2hlaWdodBgEIAEoDVIObWF0dXJpdHlIZWlnaHQSLgoTYmxvY2tzX3RpbF9tYXR1cml0eRgFIAEoBVIRYmxvY2tzVGlsTWF0dXJpdHkSFAoFc3RhZ2UYBiABKA1SBXN0YWdl');
@$core.Deprecated('Use pendingChannelsRequestDescriptor instead')
const PendingChannelsRequest$json = const {
  '1': 'PendingChannelsRequest',
};

/// Descriptor for `PendingChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingChannelsRequestDescriptor = $convert.base64Decode('ChZQZW5kaW5nQ2hhbm5lbHNSZXF1ZXN0');
@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse$json = const {
  '1': 'PendingChannelsResponse',
  '2': const [
    const {'1': 'total_limbo_balance', '3': 1, '4': 1, '5': 3, '10': 'totalLimboBalance'},
    const {'1': 'pending_open_channels', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingOpenChannel', '10': 'pendingOpenChannels'},
    const {
      '1': 'pending_closing_channels',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.lnrpc.PendingChannelsResponse.ClosedChannel',
      '8': const {'3': true},
      '10': 'pendingClosingChannels',
    },
    const {'1': 'pending_force_closing_channels', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.PendingChannelsResponse.ForceClosedChannel', '10': 'pendingForceClosingChannels'},
    const {'1': 'waiting_close_channels', '3': 5, '4': 3, '5': 11, '6': '.lnrpc.PendingChannelsResponse.WaitingCloseChannel', '10': 'waitingCloseChannels'},
  ],
  '3': const [PendingChannelsResponse_PendingChannel$json, PendingChannelsResponse_PendingOpenChannel$json, PendingChannelsResponse_WaitingCloseChannel$json, PendingChannelsResponse_Commitments$json, PendingChannelsResponse_ClosedChannel$json, PendingChannelsResponse_ForceClosedChannel$json],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_PendingChannel$json = const {
  '1': 'PendingChannel',
  '2': const [
    const {'1': 'remote_node_pub', '3': 1, '4': 1, '5': 9, '10': 'remoteNodePub'},
    const {'1': 'channel_point', '3': 2, '4': 1, '5': 9, '10': 'channelPoint'},
    const {'1': 'btc_capacity', '3': 3, '4': 1, '5': 3, '10': 'btcCapacity'},
    const {'1': 'asset_capacity', '3': 12, '4': 1, '5': 3, '10': 'assetCapacity'},
    const {'1': 'asset_id', '3': 13, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'create_time', '3': 14, '4': 1, '5': 13, '10': 'createTime'},
    const {'1': 'local_balance', '3': 4, '4': 1, '5': 3, '10': 'localBalance'},
    const {'1': 'remote_balance', '3': 5, '4': 1, '5': 3, '10': 'remoteBalance'},
    const {'1': 'local_chan_reserve_sat', '3': 6, '4': 1, '5': 3, '10': 'localChanReserveSat'},
    const {'1': 'remote_chan_reserve_sat', '3': 7, '4': 1, '5': 3, '10': 'remoteChanReserveSat'},
    const {'1': 'initiator', '3': 8, '4': 1, '5': 14, '6': '.lnrpc.Initiator', '10': 'initiator'},
    const {'1': 'commitment_type', '3': 9, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
    const {'1': 'num_forwarding_packages', '3': 10, '4': 1, '5': 3, '10': 'numForwardingPackages'},
    const {'1': 'chan_status_flags', '3': 11, '4': 1, '5': 9, '10': 'chanStatusFlags'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_PendingOpenChannel$json = const {
  '1': 'PendingOpenChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'confirmation_height', '3': 2, '4': 1, '5': 13, '10': 'confirmationHeight'},
    const {'1': 'commit_fee', '3': 4, '4': 1, '5': 3, '10': 'commitFee'},
    const {'1': 'commit_weight', '3': 5, '4': 1, '5': 3, '10': 'commitWeight'},
    const {'1': 'fee_per_kw', '3': 6, '4': 1, '5': 3, '10': 'feePerKw'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_WaitingCloseChannel$json = const {
  '1': 'WaitingCloseChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'limbo_balance', '3': 2, '4': 1, '5': 3, '10': 'limboBalance'},
    const {'1': 'commitments', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.Commitments', '10': 'commitments'},
    const {'1': 'closing_txid', '3': 4, '4': 1, '5': 9, '10': 'closingTxid'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_Commitments$json = const {
  '1': 'Commitments',
  '2': const [
    const {'1': 'local_txid', '3': 1, '4': 1, '5': 9, '10': 'localTxid'},
    const {'1': 'remote_txid', '3': 2, '4': 1, '5': 9, '10': 'remoteTxid'},
    const {'1': 'remote_pending_txid', '3': 3, '4': 1, '5': 9, '10': 'remotePendingTxid'},
    const {'1': 'local_commit_fee_sat', '3': 4, '4': 1, '5': 4, '10': 'localCommitFeeSat'},
    const {'1': 'remote_commit_fee_sat', '3': 5, '4': 1, '5': 4, '10': 'remoteCommitFeeSat'},
    const {'1': 'remote_pending_commit_fee_sat', '3': 6, '4': 1, '5': 4, '10': 'remotePendingCommitFeeSat'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_ClosedChannel$json = const {
  '1': 'ClosedChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'closing_txid', '3': 2, '4': 1, '5': 9, '10': 'closingTxid'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_ForceClosedChannel$json = const {
  '1': 'ForceClosedChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'closing_txid', '3': 2, '4': 1, '5': 9, '10': 'closingTxid'},
    const {'1': 'limbo_balance', '3': 3, '4': 1, '5': 3, '10': 'limboBalance'},
    const {'1': 'maturity_height', '3': 4, '4': 1, '5': 13, '10': 'maturityHeight'},
    const {'1': 'blocks_til_maturity', '3': 5, '4': 1, '5': 5, '10': 'blocksTilMaturity'},
    const {'1': 'recovered_balance', '3': 6, '4': 1, '5': 3, '10': 'recoveredBalance'},
    const {'1': 'pending_htlcs', '3': 8, '4': 3, '5': 11, '6': '.lnrpc.PendingHTLC', '10': 'pendingHtlcs'},
    const {'1': 'anchor', '3': 9, '4': 1, '5': 14, '6': '.lnrpc.PendingChannelsResponse.ForceClosedChannel.AnchorState', '10': 'anchor'},
  ],
  '4': const [PendingChannelsResponse_ForceClosedChannel_AnchorState$json],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_ForceClosedChannel_AnchorState$json = const {
  '1': 'AnchorState',
  '2': const [
    const {'1': 'LIMBO', '2': 0},
    const {'1': 'RECOVERED', '2': 1},
    const {'1': 'LOST', '2': 2},
  ],
};

/// Descriptor for `PendingChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingChannelsResponseDescriptor = $convert.base64Decode('ChdQZW5kaW5nQ2hhbm5lbHNSZXNwb25zZRIuChN0b3RhbF9saW1ib19iYWxhbmNlGAEgASgDUhF0b3RhbExpbWJvQmFsYW5jZRJlChVwZW5kaW5nX29wZW5fY2hhbm5lbHMYAiADKAsyMS5sbnJwYy5QZW5kaW5nQ2hhbm5lbHNSZXNwb25zZS5QZW5kaW5nT3BlbkNoYW5uZWxSE3BlbmRpbmdPcGVuQ2hhbm5lbHMSagoYcGVuZGluZ19jbG9zaW5nX2NoYW5uZWxzGAMgAygLMiwubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuQ2xvc2VkQ2hhbm5lbEICGAFSFnBlbmRpbmdDbG9zaW5nQ2hhbm5lbHMSdgoecGVuZGluZ19mb3JjZV9jbG9zaW5nX2NoYW5uZWxzGAQgAygLMjEubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuRm9yY2VDbG9zZWRDaGFubmVsUhtwZW5kaW5nRm9yY2VDbG9zaW5nQ2hhbm5lbHMSaAoWd2FpdGluZ19jbG9zZV9jaGFubmVscxgFIAMoCzIyLmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLldhaXRpbmdDbG9zZUNoYW5uZWxSFHdhaXRpbmdDbG9zZUNoYW5uZWxzGu8ECg5QZW5kaW5nQ2hhbm5lbBImCg9yZW1vdGVfbm9kZV9wdWIYASABKAlSDXJlbW90ZU5vZGVQdWISIwoNY2hhbm5lbF9wb2ludBgCIAEoCVIMY2hhbm5lbFBvaW50EiEKDGJ0Y19jYXBhY2l0eRgDIAEoA1ILYnRjQ2FwYWNpdHkSJQoOYXNzZXRfY2FwYWNpdHkYDCABKANSDWFzc2V0Q2FwYWNpdHkSGQoIYXNzZXRfaWQYDSABKA1SB2Fzc2V0SWQSHwoLY3JlYXRlX3RpbWUYDiABKA1SCmNyZWF0ZVRpbWUSIwoNbG9jYWxfYmFsYW5jZRgEIAEoA1IMbG9jYWxCYWxhbmNlEiUKDnJlbW90ZV9iYWxhbmNlGAUgASgDUg1yZW1vdGVCYWxhbmNlEjMKFmxvY2FsX2NoYW5fcmVzZXJ2ZV9zYXQYBiABKANSE2xvY2FsQ2hhblJlc2VydmVTYXQSNQoXcmVtb3RlX2NoYW5fcmVzZXJ2ZV9zYXQYByABKANSFHJlbW90ZUNoYW5SZXNlcnZlU2F0Ei4KCWluaXRpYXRvchgIIAEoDjIQLmxucnBjLkluaXRpYXRvclIJaW5pdGlhdG9yEj4KD2NvbW1pdG1lbnRfdHlwZRgJIAEoDjIVLmxucnBjLkNvbW1pdG1lbnRUeXBlUg5jb21taXRtZW50VHlwZRI2ChdudW1fZm9yd2FyZGluZ19wYWNrYWdlcxgKIAEoA1IVbnVtRm9yd2FyZGluZ1BhY2thZ2VzEioKEWNoYW5fc3RhdHVzX2ZsYWdzGAsgASgJUg9jaGFuU3RhdHVzRmxhZ3Ma8AEKElBlbmRpbmdPcGVuQ2hhbm5lbBJHCgdjaGFubmVsGAEgASgLMi0ubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuUGVuZGluZ0NoYW5uZWxSB2NoYW5uZWwSLwoTY29uZmlybWF0aW9uX2hlaWdodBgCIAEoDVISY29uZmlybWF0aW9uSGVpZ2h0Eh0KCmNvbW1pdF9mZWUYBCABKANSCWNvbW1pdEZlZRIjCg1jb21taXRfd2VpZ2h0GAUgASgDUgxjb21taXRXZWlnaHQSHAoKZmVlX3Blcl9rdxgGIAEoA1IIZmVlUGVyS3ca9AEKE1dhaXRpbmdDbG9zZUNoYW5uZWwSRwoHY2hhbm5lbBgBIAEoCzItLmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLlBlbmRpbmdDaGFubmVsUgdjaGFubmVsEiMKDWxpbWJvX2JhbGFuY2UYAiABKANSDGxpbWJvQmFsYW5jZRJMCgtjb21taXRtZW50cxgDIAEoCzIqLmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLkNvbW1pdG1lbnRzUgtjb21taXRtZW50cxIhCgxjbG9zaW5nX3R4aWQYBCABKAlSC2Nsb3NpbmdUeGlkGqMCCgtDb21taXRtZW50cxIdCgpsb2NhbF90eGlkGAEgASgJUglsb2NhbFR4aWQSHwoLcmVtb3RlX3R4aWQYAiABKAlSCnJlbW90ZVR4aWQSLgoTcmVtb3RlX3BlbmRpbmdfdHhpZBgDIAEoCVIRcmVtb3RlUGVuZGluZ1R4aWQSLwoUbG9jYWxfY29tbWl0X2ZlZV9zYXQYBCABKARSEWxvY2FsQ29tbWl0RmVlU2F0EjEKFXJlbW90ZV9jb21taXRfZmVlX3NhdBgFIAEoBFIScmVtb3RlQ29tbWl0RmVlU2F0EkAKHXJlbW90ZV9wZW5kaW5nX2NvbW1pdF9mZWVfc2F0GAYgASgEUhlyZW1vdGVQZW5kaW5nQ29tbWl0RmVlU2F0GnsKDUNsb3NlZENoYW5uZWwSRwoHY2hhbm5lbBgBIAEoCzItLmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLlBlbmRpbmdDaGFubmVsUgdjaGFubmVsEiEKDGNsb3NpbmdfdHhpZBgCIAEoCVILY2xvc2luZ1R4aWQa7gMKEkZvcmNlQ2xvc2VkQ2hhbm5lbBJHCgdjaGFubmVsGAEgASgLMi0ubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuUGVuZGluZ0NoYW5uZWxSB2NoYW5uZWwSIQoMY2xvc2luZ190eGlkGAIgASgJUgtjbG9zaW5nVHhpZBIjCg1saW1ib19iYWxhbmNlGAMgASgDUgxsaW1ib0JhbGFuY2USJwoPbWF0dXJpdHlfaGVpZ2h0GAQgASgNUg5tYXR1cml0eUhlaWdodBIuChNibG9ja3NfdGlsX21hdHVyaXR5GAUgASgFUhFibG9ja3NUaWxNYXR1cml0eRIrChFyZWNvdmVyZWRfYmFsYW5jZRgGIAEoA1IQcmVjb3ZlcmVkQmFsYW5jZRI3Cg1wZW5kaW5nX2h0bGNzGAggAygLMhIubG5ycGMuUGVuZGluZ0hUTENSDHBlbmRpbmdIdGxjcxJVCgZhbmNob3IYCSABKA4yPS5sbnJwYy5QZW5kaW5nQ2hhbm5lbHNSZXNwb25zZS5Gb3JjZUNsb3NlZENoYW5uZWwuQW5jaG9yU3RhdGVSBmFuY2hvciIxCgtBbmNob3JTdGF0ZRIJCgVMSU1CTxAAEg0KCVJFQ09WRVJFRBABEggKBExPU1QQAg==');
@$core.Deprecated('Use channelEventSubscriptionDescriptor instead')
const ChannelEventSubscription$json = const {
  '1': 'ChannelEventSubscription',
};

/// Descriptor for `ChannelEventSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEventSubscriptionDescriptor = $convert.base64Decode('ChhDaGFubmVsRXZlbnRTdWJzY3JpcHRpb24=');
@$core.Deprecated('Use channelEventUpdateDescriptor instead')
const ChannelEventUpdate$json = const {
  '1': 'ChannelEventUpdate',
  '2': const [
    const {'1': 'open_channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.Channel', '9': 0, '10': 'openChannel'},
    const {'1': 'closed_channel', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelCloseSummary', '9': 0, '10': 'closedChannel'},
    const {'1': 'active_channel', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'activeChannel'},
    const {'1': 'inactive_channel', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'inactiveChannel'},
    const {'1': 'pending_open_channel', '3': 6, '4': 1, '5': 11, '6': '.lnrpc.Channel', '9': 0, '10': 'pendingOpenChannel'},
    const {'1': 'fully_resolved_channel', '3': 7, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'fullyResolvedChannel'},
    const {'1': 'type', '3': 5, '4': 1, '5': 14, '6': '.lnrpc.ChannelEventUpdate.UpdateType', '10': 'type'},
  ],
  '4': const [ChannelEventUpdate_UpdateType$json],
  '8': const [
    const {'1': 'channel'},
  ],
};

@$core.Deprecated('Use channelEventUpdateDescriptor instead')
const ChannelEventUpdate_UpdateType$json = const {
  '1': 'UpdateType',
  '2': const [
    const {'1': 'OPEN_CHANNEL', '2': 0},
    const {'1': 'CLOSED_CHANNEL', '2': 1},
    const {'1': 'ACTIVE_CHANNEL', '2': 2},
    const {'1': 'INACTIVE_CHANNEL', '2': 3},
    const {'1': 'PENDING_OPEN_CHANNEL', '2': 4},
    const {'1': 'FULLY_RESOLVED_CHANNEL', '2': 5},
  ],
};

/// Descriptor for `ChannelEventUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEventUpdateDescriptor = $convert.base64Decode('ChJDaGFubmVsRXZlbnRVcGRhdGUSMwoMb3Blbl9jaGFubmVsGAEgASgLMg4ubG5ycGMuQ2hhbm5lbEgAUgtvcGVuQ2hhbm5lbBJDCg5jbG9zZWRfY2hhbm5lbBgCIAEoCzIaLmxucnBjLkNoYW5uZWxDbG9zZVN1bW1hcnlIAFINY2xvc2VkQ2hhbm5lbBI8Cg5hY3RpdmVfY2hhbm5lbBgDIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludEgAUg1hY3RpdmVDaGFubmVsEkAKEGluYWN0aXZlX2NoYW5uZWwYBCABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRIAFIPaW5hY3RpdmVDaGFubmVsEkIKFHBlbmRpbmdfb3Blbl9jaGFubmVsGAYgASgLMg4ubG5ycGMuQ2hhbm5lbEgAUhJwZW5kaW5nT3BlbkNoYW5uZWwSSwoWZnVsbHlfcmVzb2x2ZWRfY2hhbm5lbBgHIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludEgAUhRmdWxseVJlc29sdmVkQ2hhbm5lbBI4CgR0eXBlGAUgASgOMiQubG5ycGMuQ2hhbm5lbEV2ZW50VXBkYXRlLlVwZGF0ZVR5cGVSBHR5cGUikgEKClVwZGF0ZVR5cGUSEAoMT1BFTl9DSEFOTkVMEAASEgoOQ0xPU0VEX0NIQU5ORUwQARISCg5BQ1RJVkVfQ0hBTk5FTBACEhQKEElOQUNUSVZFX0NIQU5ORUwQAxIYChRQRU5ESU5HX09QRU5fQ0hBTk5FTBAEEhoKFkZVTExZX1JFU09MVkVEX0NIQU5ORUwQBUIJCgdjaGFubmVs');
@$core.Deprecated('Use walletAccountBalanceDescriptor instead')
const WalletAccountBalance$json = const {
  '1': 'WalletAccountBalance',
  '2': const [
    const {'1': 'confirmed_balance', '3': 1, '4': 1, '5': 3, '10': 'confirmedBalance'},
    const {'1': 'unconfirmed_balance', '3': 2, '4': 1, '5': 3, '10': 'unconfirmedBalance'},
  ],
};

/// Descriptor for `WalletAccountBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletAccountBalanceDescriptor = $convert.base64Decode('ChRXYWxsZXRBY2NvdW50QmFsYW5jZRIrChFjb25maXJtZWRfYmFsYW5jZRgBIAEoA1IQY29uZmlybWVkQmFsYW5jZRIvChN1bmNvbmZpcm1lZF9iYWxhbmNlGAIgASgDUhJ1bmNvbmZpcm1lZEJhbGFuY2U=');
@$core.Deprecated('Use walletBalanceRequestDescriptor instead')
const WalletBalanceRequest$json = const {
  '1': 'WalletBalanceRequest',
};

/// Descriptor for `WalletBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletBalanceRequestDescriptor = $convert.base64Decode('ChRXYWxsZXRCYWxhbmNlUmVxdWVzdA==');
@$core.Deprecated('Use walletBalanceResponseDescriptor instead')
const WalletBalanceResponse$json = const {
  '1': 'WalletBalanceResponse',
  '2': const [
    const {'1': 'total_balance', '3': 1, '4': 1, '5': 3, '10': 'totalBalance'},
    const {'1': 'confirmed_balance', '3': 2, '4': 1, '5': 3, '10': 'confirmedBalance'},
    const {'1': 'unconfirmed_balance', '3': 3, '4': 1, '5': 3, '10': 'unconfirmedBalance'},
    const {'1': 'account_balance', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.WalletBalanceResponse.AccountBalanceEntry', '10': 'accountBalance'},
  ],
  '3': const [WalletBalanceResponse_AccountBalanceEntry$json],
};

@$core.Deprecated('Use walletBalanceResponseDescriptor instead')
const WalletBalanceResponse_AccountBalanceEntry$json = const {
  '1': 'AccountBalanceEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.WalletAccountBalance', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `WalletBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletBalanceResponseDescriptor = $convert.base64Decode('ChVXYWxsZXRCYWxhbmNlUmVzcG9uc2USIwoNdG90YWxfYmFsYW5jZRgBIAEoA1IMdG90YWxCYWxhbmNlEisKEWNvbmZpcm1lZF9iYWxhbmNlGAIgASgDUhBjb25maXJtZWRCYWxhbmNlEi8KE3VuY29uZmlybWVkX2JhbGFuY2UYAyABKANSEnVuY29uZmlybWVkQmFsYW5jZRJZCg9hY2NvdW50X2JhbGFuY2UYBCADKAsyMC5sbnJwYy5XYWxsZXRCYWxhbmNlUmVzcG9uc2UuQWNjb3VudEJhbGFuY2VFbnRyeVIOYWNjb3VudEJhbGFuY2UaXgoTQWNjb3VudEJhbGFuY2VFbnRyeRIQCgNrZXkYASABKAlSA2tleRIxCgV2YWx1ZRgCIAEoCzIbLmxucnBjLldhbGxldEFjY291bnRCYWxhbmNlUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use walletBalanceByAddressRequestDescriptor instead')
const WalletBalanceByAddressRequest$json = const {
  '1': 'WalletBalanceByAddressRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `WalletBalanceByAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletBalanceByAddressRequestDescriptor = $convert.base64Decode('Ch1XYWxsZXRCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNz');
@$core.Deprecated('Use assetsBalanceByAddressRequestDescriptor instead')
const AssetsBalanceByAddressRequest$json = const {
  '1': 'AssetsBalanceByAddressRequest',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `AssetsBalanceByAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetsBalanceByAddressRequestDescriptor = $convert.base64Decode('Ch1Bc3NldHNCYWxhbmNlQnlBZGRyZXNzUmVxdWVzdBIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNz');
@$core.Deprecated('Use getAssetInfoRequestDescriptor instead')
const GetAssetInfoRequest$json = const {
  '1': 'GetAssetInfoRequest',
  '2': const [
    const {'1': 'asset_id', '3': 1, '4': 1, '5': 3, '10': 'assetId'},
  ],
};

/// Descriptor for `GetAssetInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssetInfoRequestDescriptor = $convert.base64Decode('ChNHZXRBc3NldEluZm9SZXF1ZXN0EhkKCGFzc2V0X2lkGAEgASgDUgdhc3NldElk');
@$core.Deprecated('Use getAssetInfoResponseDescriptor instead')
const GetAssetInfoResponse$json = const {
  '1': 'GetAssetInfoResponse',
  '2': const [
    const {'1': 'propertyid', '3': 1, '4': 1, '5': 3, '10': 'propertyid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'category', '3': 3, '4': 1, '5': 9, '10': 'category'},
    const {'1': 'subcategory', '3': 4, '4': 1, '5': 9, '10': 'subcategory'},
    const {'1': 'data', '3': 5, '4': 1, '5': 9, '10': 'data'},
    const {'1': 'url', '3': 6, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'divisible', '3': 7, '4': 1, '5': 8, '10': 'divisible'},
    const {'1': 'issuer', '3': 8, '4': 1, '5': 9, '10': 'issuer'},
    const {'1': 'delegate', '3': 9, '4': 1, '5': 9, '10': 'delegate'},
    const {'1': 'creationtxid', '3': 10, '4': 1, '5': 9, '10': 'creationtxid'},
    const {'1': 'fixedissuance', '3': 11, '4': 1, '5': 8, '10': 'fixedissuance'},
    const {'1': 'managedissuance', '3': 12, '4': 1, '5': 8, '10': 'managedissuance'},
    const {'1': 'freezingenabled', '3': 13, '4': 1, '5': 8, '10': 'freezingenabled'},
    const {'1': 'totaltokens', '3': 14, '4': 1, '5': 9, '10': 'totaltokens'},
  ],
};

/// Descriptor for `GetAssetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAssetInfoResponseDescriptor = $convert.base64Decode('ChRHZXRBc3NldEluZm9SZXNwb25zZRIeCgpwcm9wZXJ0eWlkGAEgASgDUgpwcm9wZXJ0eWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGgoIY2F0ZWdvcnkYAyABKAlSCGNhdGVnb3J5EiAKC3N1YmNhdGVnb3J5GAQgASgJUgtzdWJjYXRlZ29yeRISCgRkYXRhGAUgASgJUgRkYXRhEhAKA3VybBgGIAEoCVIDdXJsEhwKCWRpdmlzaWJsZRgHIAEoCFIJZGl2aXNpYmxlEhYKBmlzc3VlchgIIAEoCVIGaXNzdWVyEhoKCGRlbGVnYXRlGAkgASgJUghkZWxlZ2F0ZRIiCgxjcmVhdGlvbnR4aWQYCiABKAlSDGNyZWF0aW9udHhpZBIkCg1maXhlZGlzc3VhbmNlGAsgASgIUg1maXhlZGlzc3VhbmNlEigKD21hbmFnZWRpc3N1YW5jZRgMIAEoCFIPbWFuYWdlZGlzc3VhbmNlEigKD2ZyZWV6aW5nZW5hYmxlZBgNIAEoCFIPZnJlZXppbmdlbmFibGVkEiAKC3RvdGFsdG9rZW5zGA4gASgJUgt0b3RhbHRva2Vucw==');
@$core.Deprecated('Use assetBalanceByAddressResponseDescriptor instead')
const AssetBalanceByAddressResponse$json = const {
  '1': 'AssetBalanceByAddressResponse',
  '2': const [
    const {'1': 'propertyid', '3': 1, '4': 1, '5': 3, '10': 'propertyid'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'balance', '3': 3, '4': 1, '5': 3, '10': 'balance'},
    const {'1': 'reserved', '3': 4, '4': 1, '5': 9, '10': 'reserved'},
    const {'1': 'frozen', '3': 5, '4': 1, '5': 9, '10': 'frozen'},
  ],
};

/// Descriptor for `AssetBalanceByAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetBalanceByAddressResponseDescriptor = $convert.base64Decode('Ch1Bc3NldEJhbGFuY2VCeUFkZHJlc3NSZXNwb25zZRIeCgpwcm9wZXJ0eWlkGAEgASgDUgpwcm9wZXJ0eWlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHYmFsYW5jZRgDIAEoA1IHYmFsYW5jZRIaCghyZXNlcnZlZBgEIAEoCVIIcmVzZXJ2ZWQSFgoGZnJvemVuGAUgASgJUgZmcm96ZW4=');
@$core.Deprecated('Use assetsBalanceByAddressResponseDescriptor instead')
const AssetsBalanceByAddressResponse$json = const {
  '1': 'AssetsBalanceByAddressResponse',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.AssetBalanceByAddressResponse', '10': 'list'},
  ],
};

/// Descriptor for `AssetsBalanceByAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List assetsBalanceByAddressResponseDescriptor = $convert.base64Decode('Ch5Bc3NldHNCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2USOAoEbGlzdBgBIAMoCzIkLmxucnBjLkFzc2V0QmFsYW5jZUJ5QWRkcmVzc1Jlc3BvbnNlUgRsaXN0');
@$core.Deprecated('Use walletBalanceByAddressResponseDescriptor instead')
const WalletBalanceByAddressResponse$json = const {
  '1': 'WalletBalanceByAddressResponse',
  '2': const [
    const {'1': 'total_balance', '3': 1, '4': 1, '5': 3, '10': 'totalBalance'},
    const {'1': 'confirmed_balance', '3': 2, '4': 1, '5': 3, '10': 'confirmedBalance'},
    const {'1': 'unconfirmed_balance', '3': 3, '4': 1, '5': 3, '10': 'unconfirmedBalance'},
    const {'1': 'account_balance', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.WalletBalanceByAddressResponse.AccountBalanceEntry', '10': 'accountBalance'},
    const {'1': 'address', '3': 6, '4': 1, '5': 9, '10': 'address'},
  ],
  '3': const [WalletBalanceByAddressResponse_AccountBalanceEntry$json],
};

@$core.Deprecated('Use walletBalanceByAddressResponseDescriptor instead')
const WalletBalanceByAddressResponse_AccountBalanceEntry$json = const {
  '1': 'AccountBalanceEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.WalletAccountBalance', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `WalletBalanceByAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletBalanceByAddressResponseDescriptor = $convert.base64Decode('Ch5XYWxsZXRCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2USIwoNdG90YWxfYmFsYW5jZRgBIAEoA1IMdG90YWxCYWxhbmNlEisKEWNvbmZpcm1lZF9iYWxhbmNlGAIgASgDUhBjb25maXJtZWRCYWxhbmNlEi8KE3VuY29uZmlybWVkX2JhbGFuY2UYAyABKANSEnVuY29uZmlybWVkQmFsYW5jZRJiCg9hY2NvdW50X2JhbGFuY2UYBCADKAsyOS5sbnJwYy5XYWxsZXRCYWxhbmNlQnlBZGRyZXNzUmVzcG9uc2UuQWNjb3VudEJhbGFuY2VFbnRyeVIOYWNjb3VudEJhbGFuY2USGAoHYWRkcmVzcxgGIAEoCVIHYWRkcmVzcxpeChNBY2NvdW50QmFsYW5jZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjEKBXZhbHVlGAIgASgLMhsubG5ycGMuV2FsbGV0QWNjb3VudEJhbGFuY2VSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use amountDescriptor instead')
const Amount$json = const {
  '1': 'Amount',
  '2': const [
    const {'1': 'msat', '3': 2, '4': 1, '5': 4, '10': 'msat'},
  ],
};

/// Descriptor for `Amount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List amountDescriptor = $convert.base64Decode('CgZBbW91bnQSEgoEbXNhdBgCIAEoBFIEbXNhdA==');
@$core.Deprecated('Use channelBalanceRequestDescriptor instead')
const ChannelBalanceRequest$json = const {
  '1': 'ChannelBalanceRequest',
  '2': const [
    const {'1': 'asset_id', '3': 1, '4': 1, '5': 13, '10': 'assetId'},
  ],
};

/// Descriptor for `ChannelBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBalanceRequestDescriptor = $convert.base64Decode('ChVDaGFubmVsQmFsYW5jZVJlcXVlc3QSGQoIYXNzZXRfaWQYASABKA1SB2Fzc2V0SWQ=');
@$core.Deprecated('Use channelBalanceResponseDescriptor instead')
const ChannelBalanceResponse$json = const {
  '1': 'ChannelBalanceResponse',
  '2': const [
    const {
      '1': 'balance',
      '3': 1,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'balance',
    },
    const {
      '1': 'pending_open_balance',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'pendingOpenBalance',
    },
    const {'1': 'local_balance', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'localBalance'},
    const {'1': 'remote_balance', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'remoteBalance'},
    const {'1': 'unsettled_local_balance', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'unsettledLocalBalance'},
    const {'1': 'unsettled_remote_balance', '3': 6, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'unsettledRemoteBalance'},
    const {'1': 'pending_open_local_balance', '3': 7, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'pendingOpenLocalBalance'},
    const {'1': 'pending_open_remote_balance', '3': 8, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'pendingOpenRemoteBalance'},
  ],
};

/// Descriptor for `ChannelBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBalanceResponseDescriptor = $convert.base64Decode('ChZDaGFubmVsQmFsYW5jZVJlc3BvbnNlEhwKB2JhbGFuY2UYASABKANCAhgBUgdiYWxhbmNlEjQKFHBlbmRpbmdfb3Blbl9iYWxhbmNlGAIgASgDQgIYAVIScGVuZGluZ09wZW5CYWxhbmNlEjIKDWxvY2FsX2JhbGFuY2UYAyABKAsyDS5sbnJwYy5BbW91bnRSDGxvY2FsQmFsYW5jZRI0Cg5yZW1vdGVfYmFsYW5jZRgEIAEoCzINLmxucnBjLkFtb3VudFINcmVtb3RlQmFsYW5jZRJFChd1bnNldHRsZWRfbG9jYWxfYmFsYW5jZRgFIAEoCzINLmxucnBjLkFtb3VudFIVdW5zZXR0bGVkTG9jYWxCYWxhbmNlEkcKGHVuc2V0dGxlZF9yZW1vdGVfYmFsYW5jZRgGIAEoCzINLmxucnBjLkFtb3VudFIWdW5zZXR0bGVkUmVtb3RlQmFsYW5jZRJKChpwZW5kaW5nX29wZW5fbG9jYWxfYmFsYW5jZRgHIAEoCzINLmxucnBjLkFtb3VudFIXcGVuZGluZ09wZW5Mb2NhbEJhbGFuY2USTAobcGVuZGluZ19vcGVuX3JlbW90ZV9iYWxhbmNlGAggASgLMg0ubG5ycGMuQW1vdW50UhhwZW5kaW5nT3BlblJlbW90ZUJhbGFuY2U=');
@$core.Deprecated('Use queryRoutesRequestDescriptor instead')
const QueryRoutesRequest$json = const {
  '1': 'QueryRoutesRequest',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'asset_id', '3': 18, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'final_cltv_delta', '3': 4, '4': 1, '5': 5, '10': 'finalCltvDelta'},
    const {'1': 'fee_limit', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.FeeLimit', '10': 'feeLimit'},
    const {'1': 'ignored_nodes', '3': 6, '4': 3, '5': 12, '10': 'ignoredNodes'},
    const {
      '1': 'ignored_edges',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.lnrpc.EdgeLocator',
      '8': const {'3': true},
      '10': 'ignoredEdges',
    },
    const {'1': 'source_pub_key', '3': 8, '4': 1, '5': 9, '10': 'sourcePubKey'},
    const {'1': 'use_mission_control', '3': 9, '4': 1, '5': 8, '10': 'useMissionControl'},
    const {'1': 'ignored_pairs', '3': 10, '4': 3, '5': 11, '6': '.lnrpc.NodePair', '10': 'ignoredPairs'},
    const {'1': 'cltv_limit', '3': 11, '4': 1, '5': 13, '10': 'cltvLimit'},
    const {'1': 'dest_custom_records', '3': 13, '4': 3, '5': 11, '6': '.lnrpc.QueryRoutesRequest.DestCustomRecordsEntry', '10': 'destCustomRecords'},
    const {
      '1': 'outgoing_chan_id',
      '3': 14,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'last_hop_pubkey', '3': 15, '4': 1, '5': 12, '10': 'lastHopPubkey'},
    const {'1': 'route_hints', '3': 16, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'dest_features', '3': 17, '4': 3, '5': 14, '6': '.lnrpc.FeatureBit', '10': 'destFeatures'},
  ],
  '3': const [QueryRoutesRequest_DestCustomRecordsEntry$json],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

@$core.Deprecated('Use queryRoutesRequestDescriptor instead')
const QueryRoutesRequest_DestCustomRecordsEntry$json = const {
  '1': 'DestCustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `QueryRoutesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRoutesRequestDescriptor = $convert.base64Decode('ChJRdWVyeVJvdXRlc1JlcXVlc3QSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5EhkKCGFtdF9tc2F0GAwgASgDUgdhbXRNc2F0EhkKCGFzc2V0X2lkGBIgASgNUgdhc3NldElkEigKEGZpbmFsX2NsdHZfZGVsdGEYBCABKAVSDmZpbmFsQ2x0dkRlbHRhEiwKCWZlZV9saW1pdBgFIAEoCzIPLmxucnBjLkZlZUxpbWl0UghmZWVMaW1pdBIjCg1pZ25vcmVkX25vZGVzGAYgAygMUgxpZ25vcmVkTm9kZXMSOwoNaWdub3JlZF9lZGdlcxgHIAMoCzISLmxucnBjLkVkZ2VMb2NhdG9yQgIYAVIMaWdub3JlZEVkZ2VzEiQKDnNvdXJjZV9wdWJfa2V5GAggASgJUgxzb3VyY2VQdWJLZXkSLgoTdXNlX21pc3Npb25fY29udHJvbBgJIAEoCFIRdXNlTWlzc2lvbkNvbnRyb2wSNAoNaWdub3JlZF9wYWlycxgKIAMoCzIPLmxucnBjLk5vZGVQYWlyUgxpZ25vcmVkUGFpcnMSHQoKY2x0dl9saW1pdBgLIAEoDVIJY2x0dkxpbWl0EmAKE2Rlc3RfY3VzdG9tX3JlY29yZHMYDSADKAsyMC5sbnJwYy5RdWVyeVJvdXRlc1JlcXVlc3QuRGVzdEN1c3RvbVJlY29yZHNFbnRyeVIRZGVzdEN1c3RvbVJlY29yZHMSLAoQb3V0Z29pbmdfY2hhbl9pZBgOIAEoBEICMAFSDm91dGdvaW5nQ2hhbklkEiYKD2xhc3RfaG9wX3B1YmtleRgPIAEoDFINbGFzdEhvcFB1YmtleRIxCgtyb3V0ZV9oaW50cxgQIAMoCzIQLmxucnBjLlJvdXRlSGludFIKcm91dGVIaW50cxI2Cg1kZXN0X2ZlYXR1cmVzGBEgAygOMhEubG5ycGMuRmVhdHVyZUJpdFIMZGVzdEZlYXR1cmVzGkQKFkRlc3RDdXN0b21SZWNvcmRzRW50cnkSEAoDa2V5GAEgASgEUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AUoECAMQBA==');
@$core.Deprecated('Use nodePairDescriptor instead')
const NodePair$json = const {
  '1': 'NodePair',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 12, '10': 'to'},
  ],
};

/// Descriptor for `NodePair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodePairDescriptor = $convert.base64Decode('CghOb2RlUGFpchISCgRmcm9tGAEgASgMUgRmcm9tEg4KAnRvGAIgASgMUgJ0bw==');
@$core.Deprecated('Use edgeLocatorDescriptor instead')
const EdgeLocator$json = const {
  '1': 'EdgeLocator',
  '2': const [
    const {
      '1': 'channel_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'channelId',
    },
    const {'1': 'direction_reverse', '3': 2, '4': 1, '5': 8, '10': 'directionReverse'},
  ],
};

/// Descriptor for `EdgeLocator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgeLocatorDescriptor = $convert.base64Decode('CgtFZGdlTG9jYXRvchIhCgpjaGFubmVsX2lkGAEgASgEQgIwAVIJY2hhbm5lbElkEisKEWRpcmVjdGlvbl9yZXZlcnNlGAIgASgIUhBkaXJlY3Rpb25SZXZlcnNl');
@$core.Deprecated('Use queryRoutesResponseDescriptor instead')
const QueryRoutesResponse$json = const {
  '1': 'QueryRoutesResponse',
  '2': const [
    const {'1': 'routes', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Route', '10': 'routes'},
    const {'1': 'success_prob', '3': 2, '4': 1, '5': 1, '10': 'successProb'},
  ],
};

/// Descriptor for `QueryRoutesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRoutesResponseDescriptor = $convert.base64Decode('ChNRdWVyeVJvdXRlc1Jlc3BvbnNlEiQKBnJvdXRlcxgBIAMoCzIMLmxucnBjLlJvdXRlUgZyb3V0ZXMSIQoMc3VjY2Vzc19wcm9iGAIgASgBUgtzdWNjZXNzUHJvYg==');
@$core.Deprecated('Use hopDescriptor instead')
const Hop$json = const {
  '1': 'Hop',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {
      '1': 'chan_capacity',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'chanCapacity',
    },
    const {
      '1': 'amt_to_forward',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'amtToForward',
    },
    const {
      '1': 'fee',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'fee',
    },
    const {'1': 'expiry', '3': 5, '4': 1, '5': 13, '10': 'expiry'},
    const {'1': 'amt_to_forward_msat', '3': 6, '4': 1, '5': 3, '10': 'amtToForwardMsat'},
    const {'1': 'fee_msat', '3': 7, '4': 1, '5': 3, '10': 'feeMsat'},
    const {'1': 'pub_key', '3': 8, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'tlv_payload', '3': 9, '4': 1, '5': 8, '10': 'tlvPayload'},
    const {'1': 'mpp_record', '3': 10, '4': 1, '5': 11, '6': '.lnrpc.MPPRecord', '10': 'mppRecord'},
    const {'1': 'amp_record', '3': 12, '4': 1, '5': 11, '6': '.lnrpc.AMPRecord', '10': 'ampRecord'},
    const {'1': 'custom_records', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.Hop.CustomRecordsEntry', '10': 'customRecords'},
  ],
  '3': const [Hop_CustomRecordsEntry$json],
};

@$core.Deprecated('Use hopDescriptor instead')
const Hop_CustomRecordsEntry$json = const {
  '1': 'CustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Hop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hopDescriptor = $convert.base64Decode('CgNIb3ASGwoHY2hhbl9pZBgBIAEoBEICMAFSBmNoYW5JZBInCg1jaGFuX2NhcGFjaXR5GAIgASgDQgIYAVIMY2hhbkNhcGFjaXR5EigKDmFtdF90b19mb3J3YXJkGAMgASgDQgIYAVIMYW10VG9Gb3J3YXJkEhQKA2ZlZRgEIAEoA0ICGAFSA2ZlZRIWCgZleHBpcnkYBSABKA1SBmV4cGlyeRItChNhbXRfdG9fZm9yd2FyZF9tc2F0GAYgASgDUhBhbXRUb0ZvcndhcmRNc2F0EhkKCGZlZV9tc2F0GAcgASgDUgdmZWVNc2F0EhcKB3B1Yl9rZXkYCCABKAlSBnB1YktleRIfCgt0bHZfcGF5bG9hZBgJIAEoCFIKdGx2UGF5bG9hZBIvCgptcHBfcmVjb3JkGAogASgLMhAubG5ycGMuTVBQUmVjb3JkUgltcHBSZWNvcmQSLwoKYW1wX3JlY29yZBgMIAEoCzIQLmxucnBjLkFNUFJlY29yZFIJYW1wUmVjb3JkEkQKDmN1c3RvbV9yZWNvcmRzGAsgAygLMh0ubG5ycGMuSG9wLkN1c3RvbVJlY29yZHNFbnRyeVINY3VzdG9tUmVjb3JkcxpAChJDdXN0b21SZWNvcmRzRW50cnkSEAoDa2V5GAEgASgEUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use mPPRecordDescriptor instead')
const MPPRecord$json = const {
  '1': 'MPPRecord',
  '2': const [
    const {'1': 'payment_addr', '3': 11, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'total_amt_msat', '3': 10, '4': 1, '5': 3, '10': 'totalAmtMsat'},
    const {'1': 'asset_id', '3': 12, '4': 1, '5': 13, '10': 'assetId'},
  ],
};

/// Descriptor for `MPPRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mPPRecordDescriptor = $convert.base64Decode('CglNUFBSZWNvcmQSIQoMcGF5bWVudF9hZGRyGAsgASgMUgtwYXltZW50QWRkchIkCg50b3RhbF9hbXRfbXNhdBgKIAEoA1IMdG90YWxBbXRNc2F0EhkKCGFzc2V0X2lkGAwgASgNUgdhc3NldElk');
@$core.Deprecated('Use aMPRecordDescriptor instead')
const AMPRecord$json = const {
  '1': 'AMPRecord',
  '2': const [
    const {'1': 'root_share', '3': 1, '4': 1, '5': 12, '10': 'rootShare'},
    const {'1': 'set_id', '3': 2, '4': 1, '5': 12, '10': 'setId'},
    const {'1': 'child_index', '3': 3, '4': 1, '5': 13, '10': 'childIndex'},
  ],
};

/// Descriptor for `AMPRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aMPRecordDescriptor = $convert.base64Decode('CglBTVBSZWNvcmQSHQoKcm9vdF9zaGFyZRgBIAEoDFIJcm9vdFNoYXJlEhUKBnNldF9pZBgCIAEoDFIFc2V0SWQSHwoLY2hpbGRfaW5kZXgYAyABKA1SCmNoaWxkSW5kZXg=');
@$core.Deprecated('Use routeDescriptor instead')
const Route$json = const {
  '1': 'Route',
  '2': const [
    const {'1': 'total_time_lock', '3': 1, '4': 1, '5': 13, '10': 'totalTimeLock'},
    const {'1': 'hops', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.Hop', '10': 'hops'},
    const {'1': 'total_fees_msat', '3': 5, '4': 1, '5': 3, '10': 'totalFeesMsat'},
    const {'1': 'total_amt_msat', '3': 6, '4': 1, '5': 3, '10': 'totalAmtMsat'},
    const {'1': 'asset_id', '3': 7, '4': 1, '5': 13, '10': 'assetId'},
  ],
};

/// Descriptor for `Route`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeDescriptor = $convert.base64Decode('CgVSb3V0ZRImCg90b3RhbF90aW1lX2xvY2sYASABKA1SDXRvdGFsVGltZUxvY2sSHgoEaG9wcxgEIAMoCzIKLmxucnBjLkhvcFIEaG9wcxImCg90b3RhbF9mZWVzX21zYXQYBSABKANSDXRvdGFsRmVlc01zYXQSJAoOdG90YWxfYW10X21zYXQYBiABKANSDHRvdGFsQW10TXNhdBIZCghhc3NldF9pZBgHIAEoDVIHYXNzZXRJZA==');
@$core.Deprecated('Use nodeInfoRequestDescriptor instead')
const NodeInfoRequest$json = const {
  '1': 'NodeInfoRequest',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'include_channels', '3': 2, '4': 1, '5': 8, '10': 'includeChannels'},
  ],
};

/// Descriptor for `NodeInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeInfoRequestDescriptor = $convert.base64Decode('Cg9Ob2RlSW5mb1JlcXVlc3QSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5EikKEGluY2x1ZGVfY2hhbm5lbHMYAiABKAhSD2luY2x1ZGVDaGFubmVscw==');
@$core.Deprecated('Use nodeInfoDescriptor instead')
const NodeInfo$json = const {
  '1': 'NodeInfo',
  '2': const [
    const {'1': 'node', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.LightningNode', '10': 'node'},
    const {'1': 'num_channels', '3': 2, '4': 1, '5': 13, '10': 'numChannels'},
    const {'1': 'total_capacity', '3': 3, '4': 1, '5': 3, '10': 'totalCapacity'},
    const {'1': 'channels', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.ChannelEdge', '10': 'channels'},
  ],
};

/// Descriptor for `NodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeInfoDescriptor = $convert.base64Decode('CghOb2RlSW5mbxIoCgRub2RlGAEgASgLMhQubG5ycGMuTGlnaHRuaW5nTm9kZVIEbm9kZRIhCgxudW1fY2hhbm5lbHMYAiABKA1SC251bUNoYW5uZWxzEiUKDnRvdGFsX2NhcGFjaXR5GAMgASgDUg10b3RhbENhcGFjaXR5Ei4KCGNoYW5uZWxzGAQgAygLMhIubG5ycGMuQ2hhbm5lbEVkZ2VSCGNoYW5uZWxz');
@$core.Deprecated('Use lightningNodeDescriptor instead')
const LightningNode$json = const {
  '1': 'LightningNode',
  '2': const [
    const {'1': 'last_update', '3': 1, '4': 1, '5': 13, '10': 'lastUpdate'},
    const {'1': 'pub_key', '3': 2, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'alias', '3': 3, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'addresses', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.NodeAddress', '10': 'addresses'},
    const {'1': 'color', '3': 5, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'features', '3': 6, '4': 3, '5': 11, '6': '.lnrpc.LightningNode.FeaturesEntry', '10': 'features'},
  ],
  '3': const [LightningNode_FeaturesEntry$json],
};

@$core.Deprecated('Use lightningNodeDescriptor instead')
const LightningNode_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `LightningNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lightningNodeDescriptor = $convert.base64Decode('Cg1MaWdodG5pbmdOb2RlEh8KC2xhc3RfdXBkYXRlGAEgASgNUgpsYXN0VXBkYXRlEhcKB3B1Yl9rZXkYAiABKAlSBnB1YktleRIUCgVhbGlhcxgDIAEoCVIFYWxpYXMSMAoJYWRkcmVzc2VzGAQgAygLMhIubG5ycGMuTm9kZUFkZHJlc3NSCWFkZHJlc3NlcxIUCgVjb2xvchgFIAEoCVIFY29sb3ISPgoIZmVhdHVyZXMYBiADKAsyIi5sbnJwYy5MaWdodG5pbmdOb2RlLkZlYXR1cmVzRW50cnlSCGZlYXR1cmVzGksKDUZlYXR1cmVzRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSJAoFdmFsdWUYAiABKAsyDi5sbnJwYy5GZWF0dXJlUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use nodeAddressDescriptor instead')
const NodeAddress$json = const {
  '1': 'NodeAddress',
  '2': const [
    const {'1': 'network', '3': 1, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'addr', '3': 2, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `NodeAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeAddressDescriptor = $convert.base64Decode('CgtOb2RlQWRkcmVzcxIYCgduZXR3b3JrGAEgASgJUgduZXR3b3JrEhIKBGFkZHIYAiABKAlSBGFkZHI=');
@$core.Deprecated('Use routingPolicyDescriptor instead')
const RoutingPolicy$json = const {
  '1': 'RoutingPolicy',
  '2': const [
    const {'1': 'time_lock_delta', '3': 1, '4': 1, '5': 13, '10': 'timeLockDelta'},
    const {'1': 'min_htlc', '3': 2, '4': 1, '5': 3, '10': 'minHtlc'},
    const {'1': 'fee_base_msat', '3': 3, '4': 1, '5': 3, '10': 'feeBaseMsat'},
    const {'1': 'fee_rate_milli_msat', '3': 4, '4': 1, '5': 3, '10': 'feeRateMilliMsat'},
    const {'1': 'disabled', '3': 5, '4': 1, '5': 8, '10': 'disabled'},
    const {'1': 'max_htlc_msat', '3': 6, '4': 1, '5': 4, '10': 'maxHtlcMsat'},
    const {'1': 'last_update', '3': 7, '4': 1, '5': 13, '10': 'lastUpdate'},
    const {'1': 'asset_id', '3': 8, '4': 1, '5': 13, '10': 'assetId'},
  ],
};

/// Descriptor for `RoutingPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routingPolicyDescriptor = $convert.base64Decode('Cg1Sb3V0aW5nUG9saWN5EiYKD3RpbWVfbG9ja19kZWx0YRgBIAEoDVINdGltZUxvY2tEZWx0YRIZCghtaW5faHRsYxgCIAEoA1IHbWluSHRsYxIiCg1mZWVfYmFzZV9tc2F0GAMgASgDUgtmZWVCYXNlTXNhdBItChNmZWVfcmF0ZV9taWxsaV9tc2F0GAQgASgDUhBmZWVSYXRlTWlsbGlNc2F0EhoKCGRpc2FibGVkGAUgASgIUghkaXNhYmxlZBIiCg1tYXhfaHRsY19tc2F0GAYgASgEUgttYXhIdGxjTXNhdBIfCgtsYXN0X3VwZGF0ZRgHIAEoDVIKbGFzdFVwZGF0ZRIZCghhc3NldF9pZBgIIAEoDVIHYXNzZXRJZA==');
@$core.Deprecated('Use channelEdgeDescriptor instead')
const ChannelEdge$json = const {
  '1': 'ChannelEdge',
  '2': const [
    const {
      '1': 'channel_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'channelId',
    },
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 9, '10': 'chanPoint'},
    const {
      '1': 'last_update',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'lastUpdate',
    },
    const {'1': 'node1_pub', '3': 4, '4': 1, '5': 9, '10': 'node1Pub'},
    const {'1': 'node2_pub', '3': 5, '4': 1, '5': 9, '10': 'node2Pub'},
    const {'1': 'capacity', '3': 6, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'asset_id', '3': 9, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'node1_policy', '3': 7, '4': 1, '5': 11, '6': '.lnrpc.RoutingPolicy', '10': 'node1Policy'},
    const {'1': 'node2_policy', '3': 8, '4': 1, '5': 11, '6': '.lnrpc.RoutingPolicy', '10': 'node2Policy'},
  ],
};

/// Descriptor for `ChannelEdge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEdgeDescriptor = $convert.base64Decode('CgtDaGFubmVsRWRnZRIhCgpjaGFubmVsX2lkGAEgASgEQgIwAVIJY2hhbm5lbElkEh0KCmNoYW5fcG9pbnQYAiABKAlSCWNoYW5Qb2ludBIjCgtsYXN0X3VwZGF0ZRgDIAEoDUICGAFSCmxhc3RVcGRhdGUSGwoJbm9kZTFfcHViGAQgASgJUghub2RlMVB1YhIbCglub2RlMl9wdWIYBSABKAlSCG5vZGUyUHViEhoKCGNhcGFjaXR5GAYgASgDUghjYXBhY2l0eRIZCghhc3NldF9pZBgJIAEoDVIHYXNzZXRJZBI3Cgxub2RlMV9wb2xpY3kYByABKAsyFC5sbnJwYy5Sb3V0aW5nUG9saWN5Ugtub2RlMVBvbGljeRI3Cgxub2RlMl9wb2xpY3kYCCABKAsyFC5sbnJwYy5Sb3V0aW5nUG9saWN5Ugtub2RlMlBvbGljeQ==');
@$core.Deprecated('Use channelGraphRequestDescriptor instead')
const ChannelGraphRequest$json = const {
  '1': 'ChannelGraphRequest',
  '2': const [
    const {'1': 'include_unannounced', '3': 1, '4': 1, '5': 8, '10': 'includeUnannounced'},
  ],
};

/// Descriptor for `ChannelGraphRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelGraphRequestDescriptor = $convert.base64Decode('ChNDaGFubmVsR3JhcGhSZXF1ZXN0Ei8KE2luY2x1ZGVfdW5hbm5vdW5jZWQYASABKAhSEmluY2x1ZGVVbmFubm91bmNlZA==');
@$core.Deprecated('Use channelGraphDescriptor instead')
const ChannelGraph$json = const {
  '1': 'ChannelGraph',
  '2': const [
    const {'1': 'nodes', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.LightningNode', '10': 'nodes'},
    const {'1': 'edges', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.ChannelEdge', '10': 'edges'},
  ],
};

/// Descriptor for `ChannelGraph`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelGraphDescriptor = $convert.base64Decode('CgxDaGFubmVsR3JhcGgSKgoFbm9kZXMYASADKAsyFC5sbnJwYy5MaWdodG5pbmdOb2RlUgVub2RlcxIoCgVlZGdlcxgCIAMoCzISLmxucnBjLkNoYW5uZWxFZGdlUgVlZGdlcw==');
@$core.Deprecated('Use nodeMetricsRequestDescriptor instead')
const NodeMetricsRequest$json = const {
  '1': 'NodeMetricsRequest',
  '2': const [
    const {'1': 'types', '3': 1, '4': 3, '5': 14, '6': '.lnrpc.NodeMetricType', '10': 'types'},
  ],
};

/// Descriptor for `NodeMetricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsRequestDescriptor = $convert.base64Decode('ChJOb2RlTWV0cmljc1JlcXVlc3QSKwoFdHlwZXMYASADKA4yFS5sbnJwYy5Ob2RlTWV0cmljVHlwZVIFdHlwZXM=');
@$core.Deprecated('Use nodeMetricsResponseDescriptor instead')
const NodeMetricsResponse$json = const {
  '1': 'NodeMetricsResponse',
  '2': const [
    const {'1': 'betweenness_centrality', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.NodeMetricsResponse.BetweennessCentralityEntry', '10': 'betweennessCentrality'},
  ],
  '3': const [NodeMetricsResponse_BetweennessCentralityEntry$json],
};

@$core.Deprecated('Use nodeMetricsResponseDescriptor instead')
const NodeMetricsResponse_BetweennessCentralityEntry$json = const {
  '1': 'BetweennessCentralityEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.FloatMetric', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `NodeMetricsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsResponseDescriptor = $convert.base64Decode('ChNOb2RlTWV0cmljc1Jlc3BvbnNlEmwKFmJldHdlZW5uZXNzX2NlbnRyYWxpdHkYASADKAsyNS5sbnJwYy5Ob2RlTWV0cmljc1Jlc3BvbnNlLkJldHdlZW5uZXNzQ2VudHJhbGl0eUVudHJ5UhViZXR3ZWVubmVzc0NlbnRyYWxpdHkaXAoaQmV0d2Vlbm5lc3NDZW50cmFsaXR5RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSKAoFdmFsdWUYAiABKAsyEi5sbnJwYy5GbG9hdE1ldHJpY1IFdmFsdWU6AjgB');
@$core.Deprecated('Use floatMetricDescriptor instead')
const FloatMetric$json = const {
  '1': 'FloatMetric',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
    const {'1': 'normalized_value', '3': 2, '4': 1, '5': 1, '10': 'normalizedValue'},
  ],
};

/// Descriptor for `FloatMetric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatMetricDescriptor = $convert.base64Decode('CgtGbG9hdE1ldHJpYxIUCgV2YWx1ZRgBIAEoAVIFdmFsdWUSKQoQbm9ybWFsaXplZF92YWx1ZRgCIAEoAVIPbm9ybWFsaXplZFZhbHVl');
@$core.Deprecated('Use chanInfoRequestDescriptor instead')
const ChanInfoRequest$json = const {
  '1': 'ChanInfoRequest',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
  ],
};

/// Descriptor for `ChanInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanInfoRequestDescriptor = $convert.base64Decode('Cg9DaGFuSW5mb1JlcXVlc3QSGwoHY2hhbl9pZBgBIAEoBEICMAFSBmNoYW5JZA==');
@$core.Deprecated('Use networkInfoRequestDescriptor instead')
const NetworkInfoRequest$json = const {
  '1': 'NetworkInfoRequest',
  '2': const [
    const {'1': 'asset_id', '3': 1, '4': 1, '5': 13, '10': 'assetId'},
  ],
};

/// Descriptor for `NetworkInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkInfoRequestDescriptor = $convert.base64Decode('ChJOZXR3b3JrSW5mb1JlcXVlc3QSGQoIYXNzZXRfaWQYASABKA1SB2Fzc2V0SWQ=');
@$core.Deprecated('Use networkInfoDescriptor instead')
const NetworkInfo$json = const {
  '1': 'NetworkInfo',
  '2': const [
    const {'1': 'asset_id', '3': 12, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'graph_diameter', '3': 1, '4': 1, '5': 13, '10': 'graphDiameter'},
    const {'1': 'avg_out_degree', '3': 2, '4': 1, '5': 1, '10': 'avgOutDegree'},
    const {'1': 'max_out_degree', '3': 3, '4': 1, '5': 13, '10': 'maxOutDegree'},
    const {'1': 'num_nodes', '3': 4, '4': 1, '5': 13, '10': 'numNodes'},
    const {'1': 'num_channels', '3': 5, '4': 1, '5': 13, '10': 'numChannels'},
    const {'1': 'total_network_capacity', '3': 6, '4': 1, '5': 3, '10': 'totalNetworkCapacity'},
    const {'1': 'avg_channel_size', '3': 7, '4': 1, '5': 1, '10': 'avgChannelSize'},
    const {'1': 'min_channel_size', '3': 8, '4': 1, '5': 3, '10': 'minChannelSize'},
    const {'1': 'max_channel_size', '3': 9, '4': 1, '5': 3, '10': 'maxChannelSize'},
    const {'1': 'median_channel_size_sat', '3': 10, '4': 1, '5': 3, '10': 'medianChannelSizeSat'},
    const {'1': 'num_zombie_chans', '3': 11, '4': 1, '5': 4, '10': 'numZombieChans'},
  ],
};

/// Descriptor for `NetworkInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkInfoDescriptor = $convert.base64Decode('CgtOZXR3b3JrSW5mbxIZCghhc3NldF9pZBgMIAEoDVIHYXNzZXRJZBIlCg5ncmFwaF9kaWFtZXRlchgBIAEoDVINZ3JhcGhEaWFtZXRlchIkCg5hdmdfb3V0X2RlZ3JlZRgCIAEoAVIMYXZnT3V0RGVncmVlEiQKDm1heF9vdXRfZGVncmVlGAMgASgNUgxtYXhPdXREZWdyZWUSGwoJbnVtX25vZGVzGAQgASgNUghudW1Ob2RlcxIhCgxudW1fY2hhbm5lbHMYBSABKA1SC251bUNoYW5uZWxzEjQKFnRvdGFsX25ldHdvcmtfY2FwYWNpdHkYBiABKANSFHRvdGFsTmV0d29ya0NhcGFjaXR5EigKEGF2Z19jaGFubmVsX3NpemUYByABKAFSDmF2Z0NoYW5uZWxTaXplEigKEG1pbl9jaGFubmVsX3NpemUYCCABKANSDm1pbkNoYW5uZWxTaXplEigKEG1heF9jaGFubmVsX3NpemUYCSABKANSDm1heENoYW5uZWxTaXplEjUKF21lZGlhbl9jaGFubmVsX3NpemVfc2F0GAogASgDUhRtZWRpYW5DaGFubmVsU2l6ZVNhdBIoChBudW1fem9tYmllX2NoYW5zGAsgASgEUg5udW1ab21iaWVDaGFucw==');
@$core.Deprecated('Use stopRequestDescriptor instead')
const StopRequest$json = const {
  '1': 'StopRequest',
};

/// Descriptor for `StopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopRequestDescriptor = $convert.base64Decode('CgtTdG9wUmVxdWVzdA==');
@$core.Deprecated('Use stopResponseDescriptor instead')
const StopResponse$json = const {
  '1': 'StopResponse',
};

/// Descriptor for `StopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopResponseDescriptor = $convert.base64Decode('CgxTdG9wUmVzcG9uc2U=');
@$core.Deprecated('Use graphTopologySubscriptionDescriptor instead')
const GraphTopologySubscription$json = const {
  '1': 'GraphTopologySubscription',
};

/// Descriptor for `GraphTopologySubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List graphTopologySubscriptionDescriptor = $convert.base64Decode('ChlHcmFwaFRvcG9sb2d5U3Vic2NyaXB0aW9u');
@$core.Deprecated('Use graphTopologyUpdateDescriptor instead')
const GraphTopologyUpdate$json = const {
  '1': 'GraphTopologyUpdate',
  '2': const [
    const {'1': 'node_updates', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.NodeUpdate', '10': 'nodeUpdates'},
    const {'1': 'channel_updates', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.ChannelEdgeUpdate', '10': 'channelUpdates'},
    const {'1': 'closed_chans', '3': 3, '4': 3, '5': 11, '6': '.lnrpc.ClosedChannelUpdate', '10': 'closedChans'},
  ],
};

/// Descriptor for `GraphTopologyUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List graphTopologyUpdateDescriptor = $convert.base64Decode('ChNHcmFwaFRvcG9sb2d5VXBkYXRlEjQKDG5vZGVfdXBkYXRlcxgBIAMoCzIRLmxucnBjLk5vZGVVcGRhdGVSC25vZGVVcGRhdGVzEkEKD2NoYW5uZWxfdXBkYXRlcxgCIAMoCzIYLmxucnBjLkNoYW5uZWxFZGdlVXBkYXRlUg5jaGFubmVsVXBkYXRlcxI9CgxjbG9zZWRfY2hhbnMYAyADKAsyGi5sbnJwYy5DbG9zZWRDaGFubmVsVXBkYXRlUgtjbG9zZWRDaGFucw==');
@$core.Deprecated('Use nodeUpdateDescriptor instead')
const NodeUpdate$json = const {
  '1': 'NodeUpdate',
  '2': const [
    const {
      '1': 'addresses',
      '3': 1,
      '4': 3,
      '5': 9,
      '8': const {'3': true},
      '10': 'addresses',
    },
    const {'1': 'identity_key', '3': 2, '4': 1, '5': 9, '10': 'identityKey'},
    const {
      '1': 'global_features',
      '3': 3,
      '4': 1,
      '5': 12,
      '8': const {'3': true},
      '10': 'globalFeatures',
    },
    const {'1': 'alias', '3': 4, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'color', '3': 5, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'node_addresses', '3': 7, '4': 3, '5': 11, '6': '.lnrpc.NodeAddress', '10': 'nodeAddresses'},
    const {'1': 'features', '3': 6, '4': 3, '5': 11, '6': '.lnrpc.NodeUpdate.FeaturesEntry', '10': 'features'},
  ],
  '3': const [NodeUpdate_FeaturesEntry$json],
};

@$core.Deprecated('Use nodeUpdateDescriptor instead')
const NodeUpdate_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `NodeUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUpdateDescriptor = $convert.base64Decode('CgpOb2RlVXBkYXRlEiAKCWFkZHJlc3NlcxgBIAMoCUICGAFSCWFkZHJlc3NlcxIhCgxpZGVudGl0eV9rZXkYAiABKAlSC2lkZW50aXR5S2V5EisKD2dsb2JhbF9mZWF0dXJlcxgDIAEoDEICGAFSDmdsb2JhbEZlYXR1cmVzEhQKBWFsaWFzGAQgASgJUgVhbGlhcxIUCgVjb2xvchgFIAEoCVIFY29sb3ISOQoObm9kZV9hZGRyZXNzZXMYByADKAsyEi5sbnJwYy5Ob2RlQWRkcmVzc1INbm9kZUFkZHJlc3NlcxI7CghmZWF0dXJlcxgGIAMoCzIfLmxucnBjLk5vZGVVcGRhdGUuRmVhdHVyZXNFbnRyeVIIZmVhdHVyZXMaSwoNRmVhdHVyZXNFbnRyeRIQCgNrZXkYASABKA1SA2tleRIkCgV2YWx1ZRgCIAEoCzIOLmxucnBjLkZlYXR1cmVSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use channelEdgeUpdateDescriptor instead')
const ChannelEdgeUpdate$json = const {
  '1': 'ChannelEdgeUpdate',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
    const {'1': 'capacity', '3': 3, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'routing_policy', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.RoutingPolicy', '10': 'routingPolicy'},
    const {'1': 'advertising_node', '3': 5, '4': 1, '5': 9, '10': 'advertisingNode'},
    const {'1': 'connecting_node', '3': 6, '4': 1, '5': 9, '10': 'connectingNode'},
  ],
};

/// Descriptor for `ChannelEdgeUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEdgeUpdateDescriptor = $convert.base64Decode('ChFDaGFubmVsRWRnZVVwZGF0ZRIbCgdjaGFuX2lkGAEgASgEQgIwAVIGY2hhbklkEjIKCmNoYW5fcG9pbnQYAiABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCWNoYW5Qb2ludBIaCghjYXBhY2l0eRgDIAEoA1IIY2FwYWNpdHkSOwoOcm91dGluZ19wb2xpY3kYBCABKAsyFC5sbnJwYy5Sb3V0aW5nUG9saWN5Ug1yb3V0aW5nUG9saWN5EikKEGFkdmVydGlzaW5nX25vZGUYBSABKAlSD2FkdmVydGlzaW5nTm9kZRInCg9jb25uZWN0aW5nX25vZGUYBiABKAlSDmNvbm5lY3RpbmdOb2Rl');
@$core.Deprecated('Use closedChannelUpdateDescriptor instead')
const ClosedChannelUpdate$json = const {
  '1': 'ClosedChannelUpdate',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'capacity', '3': 2, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'closed_height', '3': 3, '4': 1, '5': 13, '10': 'closedHeight'},
    const {'1': 'chan_point', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
  ],
};

/// Descriptor for `ClosedChannelUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closedChannelUpdateDescriptor = $convert.base64Decode('ChNDbG9zZWRDaGFubmVsVXBkYXRlEhsKB2NoYW5faWQYASABKARCAjABUgZjaGFuSWQSGgoIY2FwYWNpdHkYAiABKANSCGNhcGFjaXR5EiMKDWNsb3NlZF9oZWlnaHQYAyABKA1SDGNsb3NlZEhlaWdodBIyCgpjaGFuX3BvaW50GAQgASgLMhMubG5ycGMuQ2hhbm5lbFBvaW50UgljaGFuUG9pbnQ=');
@$core.Deprecated('Use hopHintDescriptor instead')
const HopHint$json = const {
  '1': 'HopHint',
  '2': const [
    const {'1': 'node_id', '3': 1, '4': 1, '5': 9, '10': 'nodeId'},
    const {
      '1': 'chan_id',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'fee_base_msat', '3': 3, '4': 1, '5': 13, '10': 'feeBaseMsat'},
    const {'1': 'fee_proportional_millionths', '3': 4, '4': 1, '5': 13, '10': 'feeProportionalMillionths'},
    const {'1': 'cltv_expiry_delta', '3': 5, '4': 1, '5': 13, '10': 'cltvExpiryDelta'},
  ],
};

/// Descriptor for `HopHint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hopHintDescriptor = $convert.base64Decode('CgdIb3BIaW50EhcKB25vZGVfaWQYASABKAlSBm5vZGVJZBIbCgdjaGFuX2lkGAIgASgEQgIwAVIGY2hhbklkEiIKDWZlZV9iYXNlX21zYXQYAyABKA1SC2ZlZUJhc2VNc2F0Ej4KG2ZlZV9wcm9wb3J0aW9uYWxfbWlsbGlvbnRocxgEIAEoDVIZZmVlUHJvcG9ydGlvbmFsTWlsbGlvbnRocxIqChFjbHR2X2V4cGlyeV9kZWx0YRgFIAEoDVIPY2x0dkV4cGlyeURlbHRh');
@$core.Deprecated('Use setIDDescriptor instead')
const SetID$json = const {
  '1': 'SetID',
  '2': const [
    const {'1': 'set_id', '3': 1, '4': 1, '5': 12, '10': 'setId'},
  ],
};

/// Descriptor for `SetID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setIDDescriptor = $convert.base64Decode('CgVTZXRJRBIVCgZzZXRfaWQYASABKAxSBXNldElk');
@$core.Deprecated('Use routeHintDescriptor instead')
const RouteHint$json = const {
  '1': 'RouteHint',
  '2': const [
    const {'1': 'hop_hints', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.HopHint', '10': 'hopHints'},
  ],
};

/// Descriptor for `RouteHint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeHintDescriptor = $convert.base64Decode('CglSb3V0ZUhpbnQSKwoJaG9wX2hpbnRzGAEgAygLMg4ubG5ycGMuSG9wSGludFIIaG9wSGludHM=');
@$core.Deprecated('Use aMPInvoiceStateDescriptor instead')
const AMPInvoiceState$json = const {
  '1': 'AMPInvoiceState',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.InvoiceHTLCState', '10': 'state'},
    const {'1': 'settle_index', '3': 2, '4': 1, '5': 4, '10': 'settleIndex'},
    const {'1': 'settle_time', '3': 3, '4': 1, '5': 3, '10': 'settleTime'},
    const {'1': 'amt_paid_msat', '3': 5, '4': 1, '5': 3, '10': 'amtPaidMsat'},
  ],
};

/// Descriptor for `AMPInvoiceState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aMPInvoiceStateDescriptor = $convert.base64Decode('Cg9BTVBJbnZvaWNlU3RhdGUSLQoFc3RhdGUYASABKA4yFy5sbnJwYy5JbnZvaWNlSFRMQ1N0YXRlUgVzdGF0ZRIhCgxzZXR0bGVfaW5kZXgYAiABKARSC3NldHRsZUluZGV4Eh8KC3NldHRsZV90aW1lGAMgASgDUgpzZXR0bGVUaW1lEiIKDWFtdF9wYWlkX21zYXQYBSABKANSC2FtdFBhaWRNc2F0');
@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice$json = const {
  '1': 'Invoice',
  '2': const [
    const {'1': 'memo', '3': 1, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'r_preimage', '3': 3, '4': 1, '5': 12, '10': 'rPreimage'},
    const {'1': 'r_hash', '3': 4, '4': 1, '5': 12, '10': 'rHash'},
    const {'1': 'asset_id', '3': 6, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'value_msat', '3': 23, '4': 1, '5': 3, '10': 'valueMsat'},
    const {'1': 'amount', '3': 5, '4': 1, '5': 3, '10': 'amount'},
    const {
      '1': 'settled',
      '3': 19,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'settled',
    },
    const {'1': 'creation_date', '3': 7, '4': 1, '5': 3, '10': 'creationDate'},
    const {'1': 'settle_date', '3': 8, '4': 1, '5': 3, '10': 'settleDate'},
    const {'1': 'payment_request', '3': 9, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'description_hash', '3': 10, '4': 1, '5': 12, '10': 'descriptionHash'},
    const {'1': 'expiry', '3': 11, '4': 1, '5': 3, '10': 'expiry'},
    const {'1': 'fallback_addr', '3': 12, '4': 1, '5': 9, '10': 'fallbackAddr'},
    const {'1': 'cltv_expiry', '3': 13, '4': 1, '5': 4, '10': 'cltvExpiry'},
    const {'1': 'route_hints', '3': 14, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'private', '3': 15, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'add_index', '3': 16, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'settle_index', '3': 17, '4': 1, '5': 4, '10': 'settleIndex'},
    const {'1': 'amt_paid_msat', '3': 20, '4': 1, '5': 3, '10': 'amtPaidMsat'},
    const {'1': 'state', '3': 21, '4': 1, '5': 14, '6': '.lnrpc.Invoice.InvoiceState', '10': 'state'},
    const {'1': 'htlcs', '3': 22, '4': 3, '5': 11, '6': '.lnrpc.InvoiceHTLC', '10': 'htlcs'},
    const {'1': 'features', '3': 24, '4': 3, '5': 11, '6': '.lnrpc.Invoice.FeaturesEntry', '10': 'features'},
    const {'1': 'is_keysend', '3': 25, '4': 1, '5': 8, '10': 'isKeysend'},
    const {'1': 'payment_addr', '3': 26, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'payer_addr', '3': 30, '4': 1, '5': 12, '10': 'payerAddr'},
    const {'1': 'is_amp', '3': 27, '4': 1, '5': 8, '10': 'isAmp'},
    const {'1': 'amp_invoice_state', '3': 28, '4': 3, '5': 11, '6': '.lnrpc.Invoice.AmpInvoiceStateEntry', '10': 'ampInvoiceState'},
    const {'1': 'refundable', '3': 29, '4': 1, '5': 8, '10': 'refundable'},
  ],
  '3': const [Invoice_FeaturesEntry$json, Invoice_AmpInvoiceStateEntry$json],
  '4': const [Invoice_InvoiceState$json],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice_AmpInvoiceStateEntry$json = const {
  '1': 'AmpInvoiceStateEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.AMPInvoiceState', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice_InvoiceState$json = const {
  '1': 'InvoiceState',
  '2': const [
    const {'1': 'OPEN', '2': 0},
    const {'1': 'SETTLED', '2': 1},
    const {'1': 'CANCELED', '2': 2},
    const {'1': 'ACCEPTED', '2': 3},
  ],
};

/// Descriptor for `Invoice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceDescriptor = $convert.base64Decode('CgdJbnZvaWNlEhIKBG1lbW8YASABKAlSBG1lbW8SHQoKcl9wcmVpbWFnZRgDIAEoDFIJclByZWltYWdlEhUKBnJfaGFzaBgEIAEoDFIFckhhc2gSGQoIYXNzZXRfaWQYBiABKA1SB2Fzc2V0SWQSHQoKdmFsdWVfbXNhdBgXIAEoA1IJdmFsdWVNc2F0EhYKBmFtb3VudBgFIAEoA1IGYW1vdW50EhwKB3NldHRsZWQYEyABKAhCAhgBUgdzZXR0bGVkEiMKDWNyZWF0aW9uX2RhdGUYByABKANSDGNyZWF0aW9uRGF0ZRIfCgtzZXR0bGVfZGF0ZRgIIAEoA1IKc2V0dGxlRGF0ZRInCg9wYXltZW50X3JlcXVlc3QYCSABKAlSDnBheW1lbnRSZXF1ZXN0EikKEGRlc2NyaXB0aW9uX2hhc2gYCiABKAxSD2Rlc2NyaXB0aW9uSGFzaBIWCgZleHBpcnkYCyABKANSBmV4cGlyeRIjCg1mYWxsYmFja19hZGRyGAwgASgJUgxmYWxsYmFja0FkZHISHwoLY2x0dl9leHBpcnkYDSABKARSCmNsdHZFeHBpcnkSMQoLcm91dGVfaGludHMYDiADKAsyEC5sbnJwYy5Sb3V0ZUhpbnRSCnJvdXRlSGludHMSGAoHcHJpdmF0ZRgPIAEoCFIHcHJpdmF0ZRIbCglhZGRfaW5kZXgYECABKARSCGFkZEluZGV4EiEKDHNldHRsZV9pbmRleBgRIAEoBFILc2V0dGxlSW5kZXgSIgoNYW10X3BhaWRfbXNhdBgUIAEoA1ILYW10UGFpZE1zYXQSMQoFc3RhdGUYFSABKA4yGy5sbnJwYy5JbnZvaWNlLkludm9pY2VTdGF0ZVIFc3RhdGUSKAoFaHRsY3MYFiADKAsyEi5sbnJwYy5JbnZvaWNlSFRMQ1IFaHRsY3MSOAoIZmVhdHVyZXMYGCADKAsyHC5sbnJwYy5JbnZvaWNlLkZlYXR1cmVzRW50cnlSCGZlYXR1cmVzEh0KCmlzX2tleXNlbmQYGSABKAhSCWlzS2V5c2VuZBIhCgxwYXltZW50X2FkZHIYGiABKAxSC3BheW1lbnRBZGRyEh0KCnBheWVyX2FkZHIYHiABKAxSCXBheWVyQWRkchIVCgZpc19hbXAYGyABKAhSBWlzQW1wEk8KEWFtcF9pbnZvaWNlX3N0YXRlGBwgAygLMiMubG5ycGMuSW52b2ljZS5BbXBJbnZvaWNlU3RhdGVFbnRyeVIPYW1wSW52b2ljZVN0YXRlEh4KCnJlZnVuZGFibGUYHSABKAhSCnJlZnVuZGFibGUaSwoNRmVhdHVyZXNFbnRyeRIQCgNrZXkYASABKA1SA2tleRIkCgV2YWx1ZRgCIAEoCzIOLmxucnBjLkZlYXR1cmVSBXZhbHVlOgI4ARpaChRBbXBJbnZvaWNlU3RhdGVFbnRyeRIQCgNrZXkYASABKAlSA2tleRIsCgV2YWx1ZRgCIAEoCzIWLmxucnBjLkFNUEludm9pY2VTdGF0ZVIFdmFsdWU6AjgBIkEKDEludm9pY2VTdGF0ZRIICgRPUEVOEAASCwoHU0VUVExFRBABEgwKCENBTkNFTEVEEAISDAoIQUNDRVBURUQQA0oECAIQAw==');
@$core.Deprecated('Use invoiceHTLCDescriptor instead')
const InvoiceHTLC$json = const {
  '1': 'InvoiceHTLC',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'htlc_index', '3': 2, '4': 1, '5': 4, '10': 'htlcIndex'},
    const {'1': 'amt_msat', '3': 3, '4': 1, '5': 4, '10': 'amtMsat'},
    const {'1': 'accept_height', '3': 4, '4': 1, '5': 5, '10': 'acceptHeight'},
    const {'1': 'accept_time', '3': 5, '4': 1, '5': 3, '10': 'acceptTime'},
    const {'1': 'resolve_time', '3': 6, '4': 1, '5': 3, '10': 'resolveTime'},
    const {'1': 'expiry_height', '3': 7, '4': 1, '5': 5, '10': 'expiryHeight'},
    const {'1': 'state', '3': 8, '4': 1, '5': 14, '6': '.lnrpc.InvoiceHTLCState', '10': 'state'},
    const {'1': 'custom_records', '3': 9, '4': 3, '5': 11, '6': '.lnrpc.InvoiceHTLC.CustomRecordsEntry', '10': 'customRecords'},
    const {'1': 'mpp_total_amt_msat', '3': 10, '4': 1, '5': 4, '10': 'mppTotalAmtMsat'},
    const {'1': 'amp', '3': 11, '4': 1, '5': 11, '6': '.lnrpc.AMP', '10': 'amp'},
  ],
  '3': const [InvoiceHTLC_CustomRecordsEntry$json],
};

@$core.Deprecated('Use invoiceHTLCDescriptor instead')
const InvoiceHTLC_CustomRecordsEntry$json = const {
  '1': 'CustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `InvoiceHTLC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceHTLCDescriptor = $convert.base64Decode('CgtJbnZvaWNlSFRMQxIbCgdjaGFuX2lkGAEgASgEQgIwAVIGY2hhbklkEh0KCmh0bGNfaW5kZXgYAiABKARSCWh0bGNJbmRleBIZCghhbXRfbXNhdBgDIAEoBFIHYW10TXNhdBIjCg1hY2NlcHRfaGVpZ2h0GAQgASgFUgxhY2NlcHRIZWlnaHQSHwoLYWNjZXB0X3RpbWUYBSABKANSCmFjY2VwdFRpbWUSIQoMcmVzb2x2ZV90aW1lGAYgASgDUgtyZXNvbHZlVGltZRIjCg1leHBpcnlfaGVpZ2h0GAcgASgFUgxleHBpcnlIZWlnaHQSLQoFc3RhdGUYCCABKA4yFy5sbnJwYy5JbnZvaWNlSFRMQ1N0YXRlUgVzdGF0ZRJMCg5jdXN0b21fcmVjb3JkcxgJIAMoCzIlLmxucnBjLkludm9pY2VIVExDLkN1c3RvbVJlY29yZHNFbnRyeVINY3VzdG9tUmVjb3JkcxIrChJtcHBfdG90YWxfYW10X21zYXQYCiABKARSD21wcFRvdGFsQW10TXNhdBIcCgNhbXAYCyABKAsyCi5sbnJwYy5BTVBSA2FtcBpAChJDdXN0b21SZWNvcmRzRW50cnkSEAoDa2V5GAEgASgEUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use aMPDescriptor instead')
const AMP$json = const {
  '1': 'AMP',
  '2': const [
    const {'1': 'root_share', '3': 1, '4': 1, '5': 12, '10': 'rootShare'},
    const {'1': 'set_id', '3': 2, '4': 1, '5': 12, '10': 'setId'},
    const {'1': 'child_index', '3': 3, '4': 1, '5': 13, '10': 'childIndex'},
    const {'1': 'hash', '3': 4, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'preimage', '3': 5, '4': 1, '5': 12, '10': 'preimage'},
  ],
};

/// Descriptor for `AMP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aMPDescriptor = $convert.base64Decode('CgNBTVASHQoKcm9vdF9zaGFyZRgBIAEoDFIJcm9vdFNoYXJlEhUKBnNldF9pZBgCIAEoDFIFc2V0SWQSHwoLY2hpbGRfaW5kZXgYAyABKA1SCmNoaWxkSW5kZXgSEgoEaGFzaBgEIAEoDFIEaGFzaBIaCghwcmVpbWFnZRgFIAEoDFIIcHJlaW1hZ2U=');
@$core.Deprecated('Use addInvoiceResponseDescriptor instead')
const AddInvoiceResponse$json = const {
  '1': 'AddInvoiceResponse',
  '2': const [
    const {'1': 'r_hash', '3': 1, '4': 1, '5': 12, '10': 'rHash'},
    const {'1': 'payment_request', '3': 2, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'add_index', '3': 16, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'payment_addr', '3': 17, '4': 1, '5': 12, '10': 'paymentAddr'},
  ],
};

/// Descriptor for `AddInvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addInvoiceResponseDescriptor = $convert.base64Decode('ChJBZGRJbnZvaWNlUmVzcG9uc2USFQoGcl9oYXNoGAEgASgMUgVySGFzaBInCg9wYXltZW50X3JlcXVlc3QYAiABKAlSDnBheW1lbnRSZXF1ZXN0EhsKCWFkZF9pbmRleBgQIAEoBFIIYWRkSW5kZXgSIQoMcGF5bWVudF9hZGRyGBEgASgMUgtwYXltZW50QWRkcg==');
@$core.Deprecated('Use paymentHashDescriptor instead')
const PaymentHash$json = const {
  '1': 'PaymentHash',
  '2': const [
    const {
      '1': 'r_hash_str',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'rHashStr',
    },
    const {'1': 'r_hash', '3': 2, '4': 1, '5': 12, '10': 'rHash'},
  ],
};

/// Descriptor for `PaymentHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentHashDescriptor = $convert.base64Decode('CgtQYXltZW50SGFzaBIgCgpyX2hhc2hfc3RyGAEgASgJQgIYAVIIckhhc2hTdHISFQoGcl9oYXNoGAIgASgMUgVySGFzaA==');
@$core.Deprecated('Use listInvoiceRequestDescriptor instead')
const ListInvoiceRequest$json = const {
  '1': 'ListInvoiceRequest',
  '2': const [
    const {'1': 'pending_only', '3': 1, '4': 1, '5': 8, '10': 'pendingOnly'},
    const {'1': 'index_offset', '3': 4, '4': 1, '5': 4, '10': 'indexOffset'},
    const {'1': 'num_max_invoices', '3': 5, '4': 1, '5': 4, '10': 'numMaxInvoices'},
    const {'1': 'reversed', '3': 6, '4': 1, '5': 8, '10': 'reversed'},
    const {'1': 'is_query_asset', '3': 8, '4': 1, '5': 8, '10': 'isQueryAsset'},
    const {'1': 'asset_id', '3': 7, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'start_time', '3': 9, '4': 1, '5': 4, '10': 'startTime'},
    const {'1': 'end_time', '3': 10, '4': 1, '5': 4, '10': 'endTime'},
  ],
};

/// Descriptor for `ListInvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInvoiceRequestDescriptor = $convert.base64Decode('ChJMaXN0SW52b2ljZVJlcXVlc3QSIQoMcGVuZGluZ19vbmx5GAEgASgIUgtwZW5kaW5nT25seRIhCgxpbmRleF9vZmZzZXQYBCABKARSC2luZGV4T2Zmc2V0EigKEG51bV9tYXhfaW52b2ljZXMYBSABKARSDm51bU1heEludm9pY2VzEhoKCHJldmVyc2VkGAYgASgIUghyZXZlcnNlZBIkCg5pc19xdWVyeV9hc3NldBgIIAEoCFIMaXNRdWVyeUFzc2V0EhkKCGFzc2V0X2lkGAcgASgNUgdhc3NldElkEh0KCnN0YXJ0X3RpbWUYCSABKARSCXN0YXJ0VGltZRIZCghlbmRfdGltZRgKIAEoBFIHZW5kVGltZQ==');
@$core.Deprecated('Use listInvoiceResponseDescriptor instead')
const ListInvoiceResponse$json = const {
  '1': 'ListInvoiceResponse',
  '2': const [
    const {'1': 'invoices', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Invoice', '10': 'invoices'},
    const {'1': 'last_index_offset', '3': 2, '4': 1, '5': 4, '10': 'lastIndexOffset'},
    const {'1': 'first_index_offset', '3': 3, '4': 1, '5': 4, '10': 'firstIndexOffset'},
  ],
};

/// Descriptor for `ListInvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInvoiceResponseDescriptor = $convert.base64Decode('ChNMaXN0SW52b2ljZVJlc3BvbnNlEioKCGludm9pY2VzGAEgAygLMg4ubG5ycGMuSW52b2ljZVIIaW52b2ljZXMSKgoRbGFzdF9pbmRleF9vZmZzZXQYAiABKARSD2xhc3RJbmRleE9mZnNldBIsChJmaXJzdF9pbmRleF9vZmZzZXQYAyABKARSEGZpcnN0SW5kZXhPZmZzZXQ=');
@$core.Deprecated('Use invoiceSubscriptionDescriptor instead')
const InvoiceSubscription$json = const {
  '1': 'InvoiceSubscription',
  '2': const [
    const {'1': 'add_index', '3': 1, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'settle_index', '3': 2, '4': 1, '5': 4, '10': 'settleIndex'},
  ],
};

/// Descriptor for `InvoiceSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceSubscriptionDescriptor = $convert.base64Decode('ChNJbnZvaWNlU3Vic2NyaXB0aW9uEhsKCWFkZF9pbmRleBgBIAEoBFIIYWRkSW5kZXgSIQoMc2V0dGxlX2luZGV4GAIgASgEUgtzZXR0bGVJbmRleA==');
@$core.Deprecated('Use paymentDescriptor instead')
const Payment$json = const {
  '1': 'Payment',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 9, '10': 'paymentHash'},
    const {
      '1': 'creation_date',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'creationDate',
    },
    const {'1': 'payment_preimage', '3': 6, '4': 1, '5': 9, '10': 'paymentPreimage'},
    const {'1': 'asset_id', '3': 17, '4': 1, '5': 3, '10': 'assetId'},
    const {'1': 'value_msat', '3': 8, '4': 1, '5': 3, '10': 'valueMsat'},
    const {'1': 'payment_request', '3': 9, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'status', '3': 10, '4': 1, '5': 14, '6': '.lnrpc.Payment.PaymentStatus', '10': 'status'},
    const {'1': 'fee_msat', '3': 12, '4': 1, '5': 3, '10': 'feeMsat'},
    const {'1': 'creation_time_ns', '3': 13, '4': 1, '5': 3, '10': 'creationTimeNs'},
    const {'1': 'htlcs', '3': 14, '4': 3, '5': 11, '6': '.lnrpc.HTLCAttempt', '10': 'htlcs'},
    const {'1': 'payment_index', '3': 15, '4': 1, '5': 4, '10': 'paymentIndex'},
    const {'1': 'failure_reason', '3': 16, '4': 1, '5': 14, '6': '.lnrpc.PaymentFailureReason', '10': 'failureReason'},
  ],
  '4': const [Payment_PaymentStatus$json],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use paymentDescriptor instead')
const Payment_PaymentStatus$json = const {
  '1': 'PaymentStatus',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'IN_FLIGHT', '2': 1},
    const {'1': 'SUCCEEDED', '2': 2},
    const {'1': 'FAILED', '2': 3},
  ],
};

/// Descriptor for `Payment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentDescriptor = $convert.base64Decode('CgdQYXltZW50EiEKDHBheW1lbnRfaGFzaBgBIAEoCVILcGF5bWVudEhhc2gSJwoNY3JlYXRpb25fZGF0ZRgDIAEoA0ICGAFSDGNyZWF0aW9uRGF0ZRIpChBwYXltZW50X3ByZWltYWdlGAYgASgJUg9wYXltZW50UHJlaW1hZ2USGQoIYXNzZXRfaWQYESABKANSB2Fzc2V0SWQSHQoKdmFsdWVfbXNhdBgIIAEoA1IJdmFsdWVNc2F0EicKD3BheW1lbnRfcmVxdWVzdBgJIAEoCVIOcGF5bWVudFJlcXVlc3QSNAoGc3RhdHVzGAogASgOMhwubG5ycGMuUGF5bWVudC5QYXltZW50U3RhdHVzUgZzdGF0dXMSGQoIZmVlX21zYXQYDCABKANSB2ZlZU1zYXQSKAoQY3JlYXRpb25fdGltZV9ucxgNIAEoA1IOY3JlYXRpb25UaW1lTnMSKAoFaHRsY3MYDiADKAsyEi5sbnJwYy5IVExDQXR0ZW1wdFIFaHRsY3MSIwoNcGF5bWVudF9pbmRleBgPIAEoBFIMcGF5bWVudEluZGV4EkIKDmZhaWx1cmVfcmVhc29uGBAgASgOMhsubG5ycGMuUGF5bWVudEZhaWx1cmVSZWFzb25SDWZhaWx1cmVSZWFzb24iRgoNUGF5bWVudFN0YXR1cxILCgdVTktOT1dOEAASDQoJSU5fRkxJR0hUEAESDQoJU1VDQ0VFREVEEAISCgoGRkFJTEVEEANKBAgEEAU=');
@$core.Deprecated('Use hTLCAttemptDescriptor instead')
const HTLCAttempt$json = const {
  '1': 'HTLCAttempt',
  '2': const [
    const {'1': 'attempt_id', '3': 7, '4': 1, '5': 4, '10': 'attemptId'},
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.HTLCAttempt.HTLCStatus', '10': 'status'},
    const {'1': 'route', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'route'},
    const {'1': 'attempt_time_ns', '3': 3, '4': 1, '5': 3, '10': 'attemptTimeNs'},
    const {'1': 'resolve_time_ns', '3': 4, '4': 1, '5': 3, '10': 'resolveTimeNs'},
    const {'1': 'failure', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.Failure', '10': 'failure'},
    const {'1': 'preimage', '3': 6, '4': 1, '5': 12, '10': 'preimage'},
  ],
  '4': const [HTLCAttempt_HTLCStatus$json],
};

@$core.Deprecated('Use hTLCAttemptDescriptor instead')
const HTLCAttempt_HTLCStatus$json = const {
  '1': 'HTLCStatus',
  '2': const [
    const {'1': 'IN_FLIGHT', '2': 0},
    const {'1': 'SUCCEEDED', '2': 1},
    const {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `HTLCAttempt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTLCAttemptDescriptor = $convert.base64Decode('CgtIVExDQXR0ZW1wdBIdCgphdHRlbXB0X2lkGAcgASgEUglhdHRlbXB0SWQSNQoGc3RhdHVzGAEgASgOMh0ubG5ycGMuSFRMQ0F0dGVtcHQuSFRMQ1N0YXR1c1IGc3RhdHVzEiIKBXJvdXRlGAIgASgLMgwubG5ycGMuUm91dGVSBXJvdXRlEiYKD2F0dGVtcHRfdGltZV9ucxgDIAEoA1INYXR0ZW1wdFRpbWVOcxImCg9yZXNvbHZlX3RpbWVfbnMYBCABKANSDXJlc29sdmVUaW1lTnMSKAoHZmFpbHVyZRgFIAEoCzIOLmxucnBjLkZhaWx1cmVSB2ZhaWx1cmUSGgoIcHJlaW1hZ2UYBiABKAxSCHByZWltYWdlIjYKCkhUTENTdGF0dXMSDQoJSU5fRkxJR0hUEAASDQoJU1VDQ0VFREVEEAESCgoGRkFJTEVEEAI=');
@$core.Deprecated('Use listPaymentsRequestDescriptor instead')
const ListPaymentsRequest$json = const {
  '1': 'ListPaymentsRequest',
  '2': const [
    const {'1': 'include_incomplete', '3': 1, '4': 1, '5': 8, '10': 'includeIncomplete'},
    const {'1': 'index_offset', '3': 2, '4': 1, '5': 4, '10': 'indexOffset'},
    const {'1': 'max_payments', '3': 3, '4': 1, '5': 4, '10': 'maxPayments'},
    const {'1': 'reversed', '3': 4, '4': 1, '5': 8, '10': 'reversed'},
    const {'1': 'is_query_asset', '3': 5, '4': 1, '5': 8, '10': 'isQueryAsset'},
    const {'1': 'asset_id', '3': 6, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'start_time', '3': 7, '4': 1, '5': 4, '10': 'startTime'},
    const {'1': 'end_time', '3': 8, '4': 1, '5': 4, '10': 'endTime'},
  ],
};

/// Descriptor for `ListPaymentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPaymentsRequestDescriptor = $convert.base64Decode('ChNMaXN0UGF5bWVudHNSZXF1ZXN0Ei0KEmluY2x1ZGVfaW5jb21wbGV0ZRgBIAEoCFIRaW5jbHVkZUluY29tcGxldGUSIQoMaW5kZXhfb2Zmc2V0GAIgASgEUgtpbmRleE9mZnNldBIhCgxtYXhfcGF5bWVudHMYAyABKARSC21heFBheW1lbnRzEhoKCHJldmVyc2VkGAQgASgIUghyZXZlcnNlZBIkCg5pc19xdWVyeV9hc3NldBgFIAEoCFIMaXNRdWVyeUFzc2V0EhkKCGFzc2V0X2lkGAYgASgNUgdhc3NldElkEh0KCnN0YXJ0X3RpbWUYByABKARSCXN0YXJ0VGltZRIZCghlbmRfdGltZRgIIAEoBFIHZW5kVGltZQ==');
@$core.Deprecated('Use listPaymentsResponseDescriptor instead')
const ListPaymentsResponse$json = const {
  '1': 'ListPaymentsResponse',
  '2': const [
    const {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Payment', '10': 'payments'},
    const {'1': 'first_index_offset', '3': 2, '4': 1, '5': 4, '10': 'firstIndexOffset'},
    const {'1': 'last_index_offset', '3': 3, '4': 1, '5': 4, '10': 'lastIndexOffset'},
  ],
};

/// Descriptor for `ListPaymentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPaymentsResponseDescriptor = $convert.base64Decode('ChRMaXN0UGF5bWVudHNSZXNwb25zZRIqCghwYXltZW50cxgBIAMoCzIOLmxucnBjLlBheW1lbnRSCHBheW1lbnRzEiwKEmZpcnN0X2luZGV4X29mZnNldBgCIAEoBFIQZmlyc3RJbmRleE9mZnNldBIqChFsYXN0X2luZGV4X29mZnNldBgDIAEoBFIPbGFzdEluZGV4T2Zmc2V0');
@$core.Deprecated('Use deletePaymentRequestDescriptor instead')
const DeletePaymentRequest$json = const {
  '1': 'DeletePaymentRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    const {'1': 'failed_htlcs_only', '3': 2, '4': 1, '5': 8, '10': 'failedHtlcsOnly'},
  ],
};

/// Descriptor for `DeletePaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePaymentRequestDescriptor = $convert.base64Decode('ChREZWxldGVQYXltZW50UmVxdWVzdBIhCgxwYXltZW50X2hhc2gYASABKAxSC3BheW1lbnRIYXNoEioKEWZhaWxlZF9odGxjc19vbmx5GAIgASgIUg9mYWlsZWRIdGxjc09ubHk=');
@$core.Deprecated('Use deleteAllPaymentsRequestDescriptor instead')
const DeleteAllPaymentsRequest$json = const {
  '1': 'DeleteAllPaymentsRequest',
  '2': const [
    const {'1': 'failed_payments_only', '3': 1, '4': 1, '5': 8, '10': 'failedPaymentsOnly'},
    const {'1': 'failed_htlcs_only', '3': 2, '4': 1, '5': 8, '10': 'failedHtlcsOnly'},
  ],
};

/// Descriptor for `DeleteAllPaymentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAllPaymentsRequestDescriptor = $convert.base64Decode('ChhEZWxldGVBbGxQYXltZW50c1JlcXVlc3QSMAoUZmFpbGVkX3BheW1lbnRzX29ubHkYASABKAhSEmZhaWxlZFBheW1lbnRzT25seRIqChFmYWlsZWRfaHRsY3Nfb25seRgCIAEoCFIPZmFpbGVkSHRsY3NPbmx5');
@$core.Deprecated('Use deletePaymentResponseDescriptor instead')
const DeletePaymentResponse$json = const {
  '1': 'DeletePaymentResponse',
};

/// Descriptor for `DeletePaymentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deletePaymentResponseDescriptor = $convert.base64Decode('ChVEZWxldGVQYXltZW50UmVzcG9uc2U=');
@$core.Deprecated('Use deleteAllPaymentsResponseDescriptor instead')
const DeleteAllPaymentsResponse$json = const {
  '1': 'DeleteAllPaymentsResponse',
};

/// Descriptor for `DeleteAllPaymentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAllPaymentsResponseDescriptor = $convert.base64Decode('ChlEZWxldGVBbGxQYXltZW50c1Jlc3BvbnNl');
@$core.Deprecated('Use abandonChannelRequestDescriptor instead')
const AbandonChannelRequest$json = const {
  '1': 'AbandonChannelRequest',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'channelPoint'},
    const {'1': 'pending_funding_shim_only', '3': 2, '4': 1, '5': 8, '10': 'pendingFundingShimOnly'},
    const {'1': 'i_know_what_i_am_doing', '3': 3, '4': 1, '5': 8, '10': 'iKnowWhatIAmDoing'},
  ],
};

/// Descriptor for `AbandonChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List abandonChannelRequestDescriptor = $convert.base64Decode('ChVBYmFuZG9uQ2hhbm5lbFJlcXVlc3QSOAoNY2hhbm5lbF9wb2ludBgBIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludFIMY2hhbm5lbFBvaW50EjkKGXBlbmRpbmdfZnVuZGluZ19zaGltX29ubHkYAiABKAhSFnBlbmRpbmdGdW5kaW5nU2hpbU9ubHkSMQoWaV9rbm93X3doYXRfaV9hbV9kb2luZxgDIAEoCFIRaUtub3dXaGF0SUFtRG9pbmc=');
@$core.Deprecated('Use abandonChannelResponseDescriptor instead')
const AbandonChannelResponse$json = const {
  '1': 'AbandonChannelResponse',
};

/// Descriptor for `AbandonChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List abandonChannelResponseDescriptor = $convert.base64Decode('ChZBYmFuZG9uQ2hhbm5lbFJlc3BvbnNl');
@$core.Deprecated('Use debugLevelRequestDescriptor instead')
const DebugLevelRequest$json = const {
  '1': 'DebugLevelRequest',
  '2': const [
    const {'1': 'show', '3': 1, '4': 1, '5': 8, '10': 'show'},
    const {'1': 'level_spec', '3': 2, '4': 1, '5': 9, '10': 'levelSpec'},
  ],
};

/// Descriptor for `DebugLevelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List debugLevelRequestDescriptor = $convert.base64Decode('ChFEZWJ1Z0xldmVsUmVxdWVzdBISCgRzaG93GAEgASgIUgRzaG93Eh0KCmxldmVsX3NwZWMYAiABKAlSCWxldmVsU3BlYw==');
@$core.Deprecated('Use debugLevelResponseDescriptor instead')
const DebugLevelResponse$json = const {
  '1': 'DebugLevelResponse',
  '2': const [
    const {'1': 'sub_systems', '3': 1, '4': 1, '5': 9, '10': 'subSystems'},
  ],
};

/// Descriptor for `DebugLevelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List debugLevelResponseDescriptor = $convert.base64Decode('ChJEZWJ1Z0xldmVsUmVzcG9uc2USHwoLc3ViX3N5c3RlbXMYASABKAlSCnN1YlN5c3RlbXM=');
@$core.Deprecated('Use payReqStringDescriptor instead')
const PayReqString$json = const {
  '1': 'PayReqString',
  '2': const [
    const {'1': 'pay_req', '3': 1, '4': 1, '5': 9, '10': 'payReq'},
  ],
};

/// Descriptor for `PayReqString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payReqStringDescriptor = $convert.base64Decode('CgxQYXlSZXFTdHJpbmcSFwoHcGF5X3JlcRgBIAEoCVIGcGF5UmVx');
@$core.Deprecated('Use payReqDescriptor instead')
const PayReq$json = const {
  '1': 'PayReq',
  '2': const [
    const {'1': 'destination', '3': 1, '4': 1, '5': 9, '10': 'destination'},
    const {'1': 'payment_hash', '3': 2, '4': 1, '5': 9, '10': 'paymentHash'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'expiry', '3': 5, '4': 1, '5': 3, '10': 'expiry'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'description_hash', '3': 7, '4': 1, '5': 9, '10': 'descriptionHash'},
    const {'1': 'fallback_addr', '3': 8, '4': 1, '5': 9, '10': 'fallbackAddr'},
    const {'1': 'cltv_expiry', '3': 9, '4': 1, '5': 3, '10': 'cltvExpiry'},
    const {'1': 'route_hints', '3': 10, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'payment_addr', '3': 11, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'amount', '3': 15, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'asset_id', '3': 14, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'features', '3': 13, '4': 3, '5': 11, '6': '.lnrpc.PayReq.FeaturesEntry', '10': 'features'},
  ],
  '3': const [PayReq_FeaturesEntry$json],
};

@$core.Deprecated('Use payReqDescriptor instead')
const PayReq_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `PayReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payReqDescriptor = $convert.base64Decode('CgZQYXlSZXESIAoLZGVzdGluYXRpb24YASABKAlSC2Rlc3RpbmF0aW9uEiEKDHBheW1lbnRfaGFzaBgCIAEoCVILcGF5bWVudEhhc2gSHAoJdGltZXN0YW1wGAQgASgDUgl0aW1lc3RhbXASFgoGZXhwaXJ5GAUgASgDUgZleHBpcnkSIAoLZGVzY3JpcHRpb24YBiABKAlSC2Rlc2NyaXB0aW9uEikKEGRlc2NyaXB0aW9uX2hhc2gYByABKAlSD2Rlc2NyaXB0aW9uSGFzaBIjCg1mYWxsYmFja19hZGRyGAggASgJUgxmYWxsYmFja0FkZHISHwoLY2x0dl9leHBpcnkYCSABKANSCmNsdHZFeHBpcnkSMQoLcm91dGVfaGludHMYCiADKAsyEC5sbnJwYy5Sb3V0ZUhpbnRSCnJvdXRlSGludHMSIQoMcGF5bWVudF9hZGRyGAsgASgMUgtwYXltZW50QWRkchIZCghhbXRfbXNhdBgMIAEoA1IHYW10TXNhdBIWCgZhbW91bnQYDyABKANSBmFtb3VudBIZCghhc3NldF9pZBgOIAEoDVIHYXNzZXRJZBI3CghmZWF0dXJlcxgNIAMoCzIbLmxucnBjLlBheVJlcS5GZWF0dXJlc0VudHJ5UghmZWF0dXJlcxpLCg1GZWF0dXJlc0VudHJ5EhAKA2tleRgBIAEoDVIDa2V5EiQKBXZhbHVlGAIgASgLMg4ubG5ycGMuRmVhdHVyZVIFdmFsdWU6AjgB');
@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = const {
  '1': 'Feature',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'is_required', '3': 3, '4': 1, '5': 8, '10': 'isRequired'},
    const {'1': 'is_known', '3': 4, '4': 1, '5': 8, '10': 'isKnown'},
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode('CgdGZWF0dXJlEhIKBG5hbWUYAiABKAlSBG5hbWUSHwoLaXNfcmVxdWlyZWQYAyABKAhSCmlzUmVxdWlyZWQSGQoIaXNfa25vd24YBCABKAhSB2lzS25vd24=');
@$core.Deprecated('Use feeReportRequestDescriptor instead')
const FeeReportRequest$json = const {
  '1': 'FeeReportRequest',
};

/// Descriptor for `FeeReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeReportRequestDescriptor = $convert.base64Decode('ChBGZWVSZXBvcnRSZXF1ZXN0');
@$core.Deprecated('Use channelFeeReportDescriptor instead')
const ChannelFeeReport$json = const {
  '1': 'ChannelFeeReport',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 5,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 9, '10': 'channelPoint'},
    const {'1': 'base_fee_msat', '3': 2, '4': 1, '5': 3, '10': 'baseFeeMsat'},
    const {'1': 'fee_per_mil', '3': 3, '4': 1, '5': 3, '10': 'feePerMil'},
    const {'1': 'fee_rate', '3': 4, '4': 1, '5': 1, '10': 'feeRate'},
  ],
};

/// Descriptor for `ChannelFeeReport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelFeeReportDescriptor = $convert.base64Decode('ChBDaGFubmVsRmVlUmVwb3J0EhsKB2NoYW5faWQYBSABKARCAjABUgZjaGFuSWQSIwoNY2hhbm5lbF9wb2ludBgBIAEoCVIMY2hhbm5lbFBvaW50EiIKDWJhc2VfZmVlX21zYXQYAiABKANSC2Jhc2VGZWVNc2F0Eh4KC2ZlZV9wZXJfbWlsGAMgASgDUglmZWVQZXJNaWwSGQoIZmVlX3JhdGUYBCABKAFSB2ZlZVJhdGU=');
@$core.Deprecated('Use feeReportResponseDescriptor instead')
const FeeReportResponse$json = const {
  '1': 'FeeReportResponse',
  '2': const [
    const {'1': 'channel_fees', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelFeeReport', '10': 'channelFees'},
    const {'1': 'day_fee_sum', '3': 2, '4': 1, '5': 4, '10': 'dayFeeSum'},
    const {'1': 'week_fee_sum', '3': 3, '4': 1, '5': 4, '10': 'weekFeeSum'},
    const {'1': 'month_fee_sum', '3': 4, '4': 1, '5': 4, '10': 'monthFeeSum'},
  ],
};

/// Descriptor for `FeeReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeReportResponseDescriptor = $convert.base64Decode('ChFGZWVSZXBvcnRSZXNwb25zZRI6CgxjaGFubmVsX2ZlZXMYASADKAsyFy5sbnJwYy5DaGFubmVsRmVlUmVwb3J0UgtjaGFubmVsRmVlcxIeCgtkYXlfZmVlX3N1bRgCIAEoBFIJZGF5RmVlU3VtEiAKDHdlZWtfZmVlX3N1bRgDIAEoBFIKd2Vla0ZlZVN1bRIiCg1tb250aF9mZWVfc3VtGAQgASgEUgttb250aEZlZVN1bQ==');
@$core.Deprecated('Use policyUpdateRequestDescriptor instead')
const PolicyUpdateRequest$json = const {
  '1': 'PolicyUpdateRequest',
  '2': const [
    const {'1': 'global', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'global'},
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'chanPoint'},
    const {'1': 'base_fee_msat', '3': 3, '4': 1, '5': 3, '10': 'baseFeeMsat'},
    const {'1': 'fee_rate', '3': 4, '4': 1, '5': 1, '10': 'feeRate'},
    const {'1': 'fee_rate_ppm', '3': 9, '4': 1, '5': 13, '10': 'feeRatePpm'},
    const {'1': 'time_lock_delta', '3': 5, '4': 1, '5': 13, '10': 'timeLockDelta'},
    const {'1': 'max_htlc_msat', '3': 6, '4': 1, '5': 4, '10': 'maxHtlcMsat'},
    const {'1': 'min_htlc_msat', '3': 7, '4': 1, '5': 4, '10': 'minHtlcMsat'},
    const {'1': 'min_htlc_msat_specified', '3': 8, '4': 1, '5': 8, '10': 'minHtlcMsatSpecified'},
  ],
  '8': const [
    const {'1': 'scope'},
  ],
};

/// Descriptor for `PolicyUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyUpdateRequestDescriptor = $convert.base64Decode('ChNQb2xpY3lVcGRhdGVSZXF1ZXN0EhgKBmdsb2JhbBgBIAEoCEgAUgZnbG9iYWwSNAoKY2hhbl9wb2ludBgCIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludEgAUgljaGFuUG9pbnQSIgoNYmFzZV9mZWVfbXNhdBgDIAEoA1ILYmFzZUZlZU1zYXQSGQoIZmVlX3JhdGUYBCABKAFSB2ZlZVJhdGUSIAoMZmVlX3JhdGVfcHBtGAkgASgNUgpmZWVSYXRlUHBtEiYKD3RpbWVfbG9ja19kZWx0YRgFIAEoDVINdGltZUxvY2tEZWx0YRIiCg1tYXhfaHRsY19tc2F0GAYgASgEUgttYXhIdGxjTXNhdBIiCg1taW5faHRsY19tc2F0GAcgASgEUgttaW5IdGxjTXNhdBI1ChdtaW5faHRsY19tc2F0X3NwZWNpZmllZBgIIAEoCFIUbWluSHRsY01zYXRTcGVjaWZpZWRCBwoFc2NvcGU=');
@$core.Deprecated('Use failedUpdateDescriptor instead')
const FailedUpdate$json = const {
  '1': 'FailedUpdate',
  '2': const [
    const {'1': 'outpoint', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'reason', '3': 2, '4': 1, '5': 14, '6': '.lnrpc.UpdateFailure', '10': 'reason'},
    const {'1': 'update_error', '3': 3, '4': 1, '5': 9, '10': 'updateError'},
  ],
};

/// Descriptor for `FailedUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failedUpdateDescriptor = $convert.base64Decode('CgxGYWlsZWRVcGRhdGUSKwoIb3V0cG9pbnQYASABKAsyDy5sbnJwYy5PdXRQb2ludFIIb3V0cG9pbnQSLAoGcmVhc29uGAIgASgOMhQubG5ycGMuVXBkYXRlRmFpbHVyZVIGcmVhc29uEiEKDHVwZGF0ZV9lcnJvchgDIAEoCVILdXBkYXRlRXJyb3I=');
@$core.Deprecated('Use policyUpdateResponseDescriptor instead')
const PolicyUpdateResponse$json = const {
  '1': 'PolicyUpdateResponse',
  '2': const [
    const {'1': 'failed_updates', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.FailedUpdate', '10': 'failedUpdates'},
  ],
};

/// Descriptor for `PolicyUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyUpdateResponseDescriptor = $convert.base64Decode('ChRQb2xpY3lVcGRhdGVSZXNwb25zZRI6Cg5mYWlsZWRfdXBkYXRlcxgBIAMoCzITLmxucnBjLkZhaWxlZFVwZGF0ZVINZmFpbGVkVXBkYXRlcw==');
@$core.Deprecated('Use forwardingHistoryRequestDescriptor instead')
const ForwardingHistoryRequest$json = const {
  '1': 'ForwardingHistoryRequest',
  '2': const [
    const {'1': 'start_time', '3': 1, '4': 1, '5': 4, '10': 'startTime'},
    const {'1': 'end_time', '3': 2, '4': 1, '5': 4, '10': 'endTime'},
    const {'1': 'index_offset', '3': 3, '4': 1, '5': 13, '10': 'indexOffset'},
    const {'1': 'num_max_events', '3': 4, '4': 1, '5': 13, '10': 'numMaxEvents'},
  ],
};

/// Descriptor for `ForwardingHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardingHistoryRequestDescriptor = $convert.base64Decode('ChhGb3J3YXJkaW5nSGlzdG9yeVJlcXVlc3QSHQoKc3RhcnRfdGltZRgBIAEoBFIJc3RhcnRUaW1lEhkKCGVuZF90aW1lGAIgASgEUgdlbmRUaW1lEiEKDGluZGV4X29mZnNldBgDIAEoDVILaW5kZXhPZmZzZXQSJAoObnVtX21heF9ldmVudHMYBCABKA1SDG51bU1heEV2ZW50cw==');
@$core.Deprecated('Use forwardingEventDescriptor instead')
const ForwardingEvent$json = const {
  '1': 'ForwardingEvent',
  '2': const [
    const {
      '1': 'timestamp',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'3': true},
      '10': 'timestamp',
    },
    const {
      '1': 'chan_id_in',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanIdIn',
    },
    const {
      '1': 'chan_id_out',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanIdOut',
    },
    const {'1': 'amt_in', '3': 5, '4': 1, '5': 4, '10': 'amtIn'},
    const {'1': 'amt_out', '3': 6, '4': 1, '5': 4, '10': 'amtOut'},
    const {'1': 'fee', '3': 7, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'fee_msat', '3': 8, '4': 1, '5': 4, '10': 'feeMsat'},
    const {'1': 'amt_in_msat', '3': 9, '4': 1, '5': 4, '10': 'amtInMsat'},
    const {'1': 'amt_out_msat', '3': 10, '4': 1, '5': 4, '10': 'amtOutMsat'},
    const {'1': 'timestamp_ns', '3': 11, '4': 1, '5': 4, '10': 'timestampNs'},
  ],
};

/// Descriptor for `ForwardingEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardingEventDescriptor = $convert.base64Decode('Cg9Gb3J3YXJkaW5nRXZlbnQSIAoJdGltZXN0YW1wGAEgASgEQgIYAVIJdGltZXN0YW1wEiAKCmNoYW5faWRfaW4YAiABKARCAjABUghjaGFuSWRJbhIiCgtjaGFuX2lkX291dBgEIAEoBEICMAFSCWNoYW5JZE91dBIVCgZhbXRfaW4YBSABKARSBWFtdEluEhcKB2FtdF9vdXQYBiABKARSBmFtdE91dBIQCgNmZWUYByABKARSA2ZlZRIZCghmZWVfbXNhdBgIIAEoBFIHZmVlTXNhdBIeCgthbXRfaW5fbXNhdBgJIAEoBFIJYW10SW5Nc2F0EiAKDGFtdF9vdXRfbXNhdBgKIAEoBFIKYW10T3V0TXNhdBIhCgx0aW1lc3RhbXBfbnMYCyABKARSC3RpbWVzdGFtcE5z');
@$core.Deprecated('Use forwardingHistoryResponseDescriptor instead')
const ForwardingHistoryResponse$json = const {
  '1': 'ForwardingHistoryResponse',
  '2': const [
    const {'1': 'forwarding_events', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ForwardingEvent', '10': 'forwardingEvents'},
    const {'1': 'last_offset_index', '3': 2, '4': 1, '5': 13, '10': 'lastOffsetIndex'},
  ],
};

/// Descriptor for `ForwardingHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardingHistoryResponseDescriptor = $convert.base64Decode('ChlGb3J3YXJkaW5nSGlzdG9yeVJlc3BvbnNlEkMKEWZvcndhcmRpbmdfZXZlbnRzGAEgAygLMhYubG5ycGMuRm9yd2FyZGluZ0V2ZW50UhBmb3J3YXJkaW5nRXZlbnRzEioKEWxhc3Rfb2Zmc2V0X2luZGV4GAIgASgNUg9sYXN0T2Zmc2V0SW5kZXg=');
@$core.Deprecated('Use exportChannelBackupRequestDescriptor instead')
const ExportChannelBackupRequest$json = const {
  '1': 'ExportChannelBackupRequest',
  '2': const [
    const {'1': 'chan_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
  ],
};

/// Descriptor for `ExportChannelBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportChannelBackupRequestDescriptor = $convert.base64Decode('ChpFeHBvcnRDaGFubmVsQmFja3VwUmVxdWVzdBIyCgpjaGFuX3BvaW50GAEgASgLMhMubG5ycGMuQ2hhbm5lbFBvaW50UgljaGFuUG9pbnQ=');
@$core.Deprecated('Use channelBackupDescriptor instead')
const ChannelBackup$json = const {
  '1': 'ChannelBackup',
  '2': const [
    const {'1': 'chan_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
    const {'1': 'chan_backup', '3': 2, '4': 1, '5': 12, '10': 'chanBackup'},
  ],
};

/// Descriptor for `ChannelBackup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBackupDescriptor = $convert.base64Decode('Cg1DaGFubmVsQmFja3VwEjIKCmNoYW5fcG9pbnQYASABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCWNoYW5Qb2ludBIfCgtjaGFuX2JhY2t1cBgCIAEoDFIKY2hhbkJhY2t1cA==');
@$core.Deprecated('Use multiChanBackupDescriptor instead')
const MultiChanBackup$json = const {
  '1': 'MultiChanBackup',
  '2': const [
    const {'1': 'chan_points', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoints'},
    const {'1': 'multi_chan_backup', '3': 2, '4': 1, '5': 12, '10': 'multiChanBackup'},
  ],
};

/// Descriptor for `MultiChanBackup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiChanBackupDescriptor = $convert.base64Decode('Cg9NdWx0aUNoYW5CYWNrdXASNAoLY2hhbl9wb2ludHMYASADKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCmNoYW5Qb2ludHMSKgoRbXVsdGlfY2hhbl9iYWNrdXAYAiABKAxSD211bHRpQ2hhbkJhY2t1cA==');
@$core.Deprecated('Use chanBackupExportRequestDescriptor instead')
const ChanBackupExportRequest$json = const {
  '1': 'ChanBackupExportRequest',
};

/// Descriptor for `ChanBackupExportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanBackupExportRequestDescriptor = $convert.base64Decode('ChdDaGFuQmFja3VwRXhwb3J0UmVxdWVzdA==');
@$core.Deprecated('Use chanBackupSnapshotDescriptor instead')
const ChanBackupSnapshot$json = const {
  '1': 'ChanBackupSnapshot',
  '2': const [
    const {'1': 'single_chan_backups', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelBackups', '10': 'singleChanBackups'},
    const {'1': 'multi_chan_backup', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.MultiChanBackup', '10': 'multiChanBackup'},
  ],
};

/// Descriptor for `ChanBackupSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanBackupSnapshotDescriptor = $convert.base64Decode('ChJDaGFuQmFja3VwU25hcHNob3QSRQoTc2luZ2xlX2NoYW5fYmFja3VwcxgBIAEoCzIVLmxucnBjLkNoYW5uZWxCYWNrdXBzUhFzaW5nbGVDaGFuQmFja3VwcxJCChFtdWx0aV9jaGFuX2JhY2t1cBgCIAEoCzIWLmxucnBjLk11bHRpQ2hhbkJhY2t1cFIPbXVsdGlDaGFuQmFja3Vw');
@$core.Deprecated('Use subscribeChannelChangeResDescriptor instead')
const SubscribeChannelChangeRes$json = const {
  '1': 'SubscribeChannelChangeRes',
  '2': const [
    const {'1': 'Res', '3': 1, '4': 1, '5': 9, '10': 'Res'},
  ],
};

/// Descriptor for `SubscribeChannelChangeRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeChannelChangeResDescriptor = $convert.base64Decode('ChlTdWJzY3JpYmVDaGFubmVsQ2hhbmdlUmVzEhAKA1JlcxgBIAEoCVIDUmVz');
@$core.Deprecated('Use channelBackupsDescriptor instead')
const ChannelBackups$json = const {
  '1': 'ChannelBackups',
  '2': const [
    const {'1': 'chan_backups', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelBackup', '10': 'chanBackups'},
  ],
};

/// Descriptor for `ChannelBackups`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBackupsDescriptor = $convert.base64Decode('Cg5DaGFubmVsQmFja3VwcxI3CgxjaGFuX2JhY2t1cHMYASADKAsyFC5sbnJwYy5DaGFubmVsQmFja3VwUgtjaGFuQmFja3Vwcw==');
@$core.Deprecated('Use restoreChanBackupRequestDescriptor instead')
const RestoreChanBackupRequest$json = const {
  '1': 'RestoreChanBackupRequest',
  '2': const [
    const {'1': 'chan_backups', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelBackups', '9': 0, '10': 'chanBackups'},
    const {'1': 'multi_chan_backup', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'multiChanBackup'},
  ],
  '8': const [
    const {'1': 'backup'},
  ],
};

/// Descriptor for `RestoreChanBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreChanBackupRequestDescriptor = $convert.base64Decode('ChhSZXN0b3JlQ2hhbkJhY2t1cFJlcXVlc3QSOgoMY2hhbl9iYWNrdXBzGAEgASgLMhUubG5ycGMuQ2hhbm5lbEJhY2t1cHNIAFILY2hhbkJhY2t1cHMSLAoRbXVsdGlfY2hhbl9iYWNrdXAYAiABKAxIAFIPbXVsdGlDaGFuQmFja3VwQggKBmJhY2t1cA==');
@$core.Deprecated('Use restoreBackupResponseDescriptor instead')
const RestoreBackupResponse$json = const {
  '1': 'RestoreBackupResponse',
};

/// Descriptor for `RestoreBackupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreBackupResponseDescriptor = $convert.base64Decode('ChVSZXN0b3JlQmFja3VwUmVzcG9uc2U=');
@$core.Deprecated('Use channelBackupSubscriptionDescriptor instead')
const ChannelBackupSubscription$json = const {
  '1': 'ChannelBackupSubscription',
};

/// Descriptor for `ChannelBackupSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBackupSubscriptionDescriptor = $convert.base64Decode('ChlDaGFubmVsQmFja3VwU3Vic2NyaXB0aW9u');
@$core.Deprecated('Use verifyChanBackupResponseDescriptor instead')
const VerifyChanBackupResponse$json = const {
  '1': 'VerifyChanBackupResponse',
};

/// Descriptor for `VerifyChanBackupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyChanBackupResponseDescriptor = $convert.base64Decode('ChhWZXJpZnlDaGFuQmFja3VwUmVzcG9uc2U=');
@$core.Deprecated('Use macaroonPermissionDescriptor instead')
const MacaroonPermission$json = const {
  '1': 'MacaroonPermission',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 9, '10': 'entity'},
    const {'1': 'action', '3': 2, '4': 1, '5': 9, '10': 'action'},
  ],
};

/// Descriptor for `MacaroonPermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macaroonPermissionDescriptor = $convert.base64Decode('ChJNYWNhcm9vblBlcm1pc3Npb24SFgoGZW50aXR5GAEgASgJUgZlbnRpdHkSFgoGYWN0aW9uGAIgASgJUgZhY3Rpb24=');
@$core.Deprecated('Use bakeMacaroonRequestDescriptor instead')
const BakeMacaroonRequest$json = const {
  '1': 'BakeMacaroonRequest',
  '2': const [
    const {'1': 'permissions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.MacaroonPermission', '10': 'permissions'},
    const {'1': 'root_key_id', '3': 2, '4': 1, '5': 4, '10': 'rootKeyId'},
    const {'1': 'allow_external_permissions', '3': 3, '4': 1, '5': 8, '10': 'allowExternalPermissions'},
  ],
};

/// Descriptor for `BakeMacaroonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bakeMacaroonRequestDescriptor = $convert.base64Decode('ChNCYWtlTWFjYXJvb25SZXF1ZXN0EjsKC3Blcm1pc3Npb25zGAEgAygLMhkubG5ycGMuTWFjYXJvb25QZXJtaXNzaW9uUgtwZXJtaXNzaW9ucxIeCgtyb290X2tleV9pZBgCIAEoBFIJcm9vdEtleUlkEjwKGmFsbG93X2V4dGVybmFsX3Blcm1pc3Npb25zGAMgASgIUhhhbGxvd0V4dGVybmFsUGVybWlzc2lvbnM=');
@$core.Deprecated('Use bakeMacaroonResponseDescriptor instead')
const BakeMacaroonResponse$json = const {
  '1': 'BakeMacaroonResponse',
  '2': const [
    const {'1': 'macaroon', '3': 1, '4': 1, '5': 9, '10': 'macaroon'},
  ],
};

/// Descriptor for `BakeMacaroonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bakeMacaroonResponseDescriptor = $convert.base64Decode('ChRCYWtlTWFjYXJvb25SZXNwb25zZRIaCghtYWNhcm9vbhgBIAEoCVIIbWFjYXJvb24=');
@$core.Deprecated('Use listMacaroonIDsRequestDescriptor instead')
const ListMacaroonIDsRequest$json = const {
  '1': 'ListMacaroonIDsRequest',
};

/// Descriptor for `ListMacaroonIDsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMacaroonIDsRequestDescriptor = $convert.base64Decode('ChZMaXN0TWFjYXJvb25JRHNSZXF1ZXN0');
@$core.Deprecated('Use listMacaroonIDsResponseDescriptor instead')
const ListMacaroonIDsResponse$json = const {
  '1': 'ListMacaroonIDsResponse',
  '2': const [
    const {'1': 'root_key_ids', '3': 1, '4': 3, '5': 4, '10': 'rootKeyIds'},
  ],
};

/// Descriptor for `ListMacaroonIDsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMacaroonIDsResponseDescriptor = $convert.base64Decode('ChdMaXN0TWFjYXJvb25JRHNSZXNwb25zZRIgCgxyb290X2tleV9pZHMYASADKARSCnJvb3RLZXlJZHM=');
@$core.Deprecated('Use deleteMacaroonIDRequestDescriptor instead')
const DeleteMacaroonIDRequest$json = const {
  '1': 'DeleteMacaroonIDRequest',
  '2': const [
    const {'1': 'root_key_id', '3': 1, '4': 1, '5': 4, '10': 'rootKeyId'},
  ],
};

/// Descriptor for `DeleteMacaroonIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMacaroonIDRequestDescriptor = $convert.base64Decode('ChdEZWxldGVNYWNhcm9vbklEUmVxdWVzdBIeCgtyb290X2tleV9pZBgBIAEoBFIJcm9vdEtleUlk');
@$core.Deprecated('Use deleteMacaroonIDResponseDescriptor instead')
const DeleteMacaroonIDResponse$json = const {
  '1': 'DeleteMacaroonIDResponse',
  '2': const [
    const {'1': 'deleted', '3': 1, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

/// Descriptor for `DeleteMacaroonIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMacaroonIDResponseDescriptor = $convert.base64Decode('ChhEZWxldGVNYWNhcm9vbklEUmVzcG9uc2USGAoHZGVsZXRlZBgBIAEoCFIHZGVsZXRlZA==');
@$core.Deprecated('Use macaroonPermissionListDescriptor instead')
const MacaroonPermissionList$json = const {
  '1': 'MacaroonPermissionList',
  '2': const [
    const {'1': 'permissions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.MacaroonPermission', '10': 'permissions'},
  ],
};

/// Descriptor for `MacaroonPermissionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macaroonPermissionListDescriptor = $convert.base64Decode('ChZNYWNhcm9vblBlcm1pc3Npb25MaXN0EjsKC3Blcm1pc3Npb25zGAEgAygLMhkubG5ycGMuTWFjYXJvb25QZXJtaXNzaW9uUgtwZXJtaXNzaW9ucw==');
@$core.Deprecated('Use listPermissionsRequestDescriptor instead')
const ListPermissionsRequest$json = const {
  '1': 'ListPermissionsRequest',
};

/// Descriptor for `ListPermissionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPermissionsRequestDescriptor = $convert.base64Decode('ChZMaXN0UGVybWlzc2lvbnNSZXF1ZXN0');
@$core.Deprecated('Use listPermissionsResponseDescriptor instead')
const ListPermissionsResponse$json = const {
  '1': 'ListPermissionsResponse',
  '2': const [
    const {'1': 'method_permissions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ListPermissionsResponse.MethodPermissionsEntry', '10': 'methodPermissions'},
  ],
  '3': const [ListPermissionsResponse_MethodPermissionsEntry$json],
};

@$core.Deprecated('Use listPermissionsResponseDescriptor instead')
const ListPermissionsResponse_MethodPermissionsEntry$json = const {
  '1': 'MethodPermissionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.MacaroonPermissionList', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ListPermissionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPermissionsResponseDescriptor = $convert.base64Decode('ChdMaXN0UGVybWlzc2lvbnNSZXNwb25zZRJkChJtZXRob2RfcGVybWlzc2lvbnMYASADKAsyNS5sbnJwYy5MaXN0UGVybWlzc2lvbnNSZXNwb25zZS5NZXRob2RQZXJtaXNzaW9uc0VudHJ5UhFtZXRob2RQZXJtaXNzaW9ucxpjChZNZXRob2RQZXJtaXNzaW9uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjMKBXZhbHVlGAIgASgLMh0ubG5ycGMuTWFjYXJvb25QZXJtaXNzaW9uTGlzdFIFdmFsdWU6AjgB');
@$core.Deprecated('Use failureDescriptor instead')
const Failure$json = const {
  '1': 'Failure',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.Failure.FailureCode', '10': 'code'},
    const {'1': 'channel_update', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelUpdate', '10': 'channelUpdate'},
    const {'1': 'htlc_msat', '3': 4, '4': 1, '5': 4, '10': 'htlcMsat'},
    const {'1': 'onion_sha_256', '3': 5, '4': 1, '5': 12, '10': 'onionSha256'},
    const {'1': 'cltv_expiry', '3': 6, '4': 1, '5': 13, '10': 'cltvExpiry'},
    const {'1': 'flags', '3': 7, '4': 1, '5': 13, '10': 'flags'},
    const {'1': 'failure_source_index', '3': 8, '4': 1, '5': 13, '10': 'failureSourceIndex'},
    const {'1': 'height', '3': 9, '4': 1, '5': 13, '10': 'height'},
  ],
  '4': const [Failure_FailureCode$json],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

@$core.Deprecated('Use failureDescriptor instead')
const Failure_FailureCode$json = const {
  '1': 'FailureCode',
  '2': const [
    const {'1': 'RESERVED', '2': 0},
    const {'1': 'INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS', '2': 1},
    const {'1': 'INCORRECT_PAYMENT_AMOUNT', '2': 2},
    const {'1': 'FINAL_INCORRECT_CLTV_EXPIRY', '2': 3},
    const {'1': 'FINAL_INCORRECT_HTLC_AMOUNT', '2': 4},
    const {'1': 'FINAL_EXPIRY_TOO_SOON', '2': 5},
    const {'1': 'INVALID_REALM', '2': 6},
    const {'1': 'EXPIRY_TOO_SOON', '2': 7},
    const {'1': 'INVALID_ONION_VERSION', '2': 8},
    const {'1': 'INVALID_ONION_HMAC', '2': 9},
    const {'1': 'INVALID_ONION_KEY', '2': 10},
    const {'1': 'AMOUNT_BELOW_MINIMUM', '2': 11},
    const {'1': 'FEE_INSUFFICIENT', '2': 12},
    const {'1': 'INCORRECT_CLTV_EXPIRY', '2': 13},
    const {'1': 'CHANNEL_DISABLED', '2': 14},
    const {'1': 'TEMPORARY_CHANNEL_FAILURE', '2': 15},
    const {'1': 'REQUIRED_NODE_FEATURE_MISSING', '2': 16},
    const {'1': 'REQUIRED_CHANNEL_FEATURE_MISSING', '2': 17},
    const {'1': 'UNKNOWN_NEXT_PEER', '2': 18},
    const {'1': 'TEMPORARY_NODE_FAILURE', '2': 19},
    const {'1': 'PERMANENT_NODE_FAILURE', '2': 20},
    const {'1': 'PERMANENT_CHANNEL_FAILURE', '2': 21},
    const {'1': 'EXPIRY_TOO_FAR', '2': 22},
    const {'1': 'MPP_TIMEOUT', '2': 23},
    const {'1': 'INVALID_ONION_PAYLOAD', '2': 24},
    const {'1': 'INTERNAL_FAILURE', '2': 997},
    const {'1': 'UNKNOWN_FAILURE', '2': 998},
    const {'1': 'UNREADABLE_FAILURE', '2': 999},
  ],
};

/// Descriptor for `Failure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failureDescriptor = $convert.base64Decode('CgdGYWlsdXJlEi4KBGNvZGUYASABKA4yGi5sbnJwYy5GYWlsdXJlLkZhaWx1cmVDb2RlUgRjb2RlEjsKDmNoYW5uZWxfdXBkYXRlGAMgASgLMhQubG5ycGMuQ2hhbm5lbFVwZGF0ZVINY2hhbm5lbFVwZGF0ZRIbCglodGxjX21zYXQYBCABKARSCGh0bGNNc2F0EiIKDW9uaW9uX3NoYV8yNTYYBSABKAxSC29uaW9uU2hhMjU2Eh8KC2NsdHZfZXhwaXJ5GAYgASgNUgpjbHR2RXhwaXJ5EhQKBWZsYWdzGAcgASgNUgVmbGFncxIwChRmYWlsdXJlX3NvdXJjZV9pbmRleBgIIAEoDVISZmFpbHVyZVNvdXJjZUluZGV4EhYKBmhlaWdodBgJIAEoDVIGaGVpZ2h0Iu8FCgtGYWlsdXJlQ29kZRIMCghSRVNFUlZFRBAAEigKJElOQ09SUkVDVF9PUl9VTktOT1dOX1BBWU1FTlRfREVUQUlMUxABEhwKGElOQ09SUkVDVF9QQVlNRU5UX0FNT1VOVBACEh8KG0ZJTkFMX0lOQ09SUkVDVF9DTFRWX0VYUElSWRADEh8KG0ZJTkFMX0lOQ09SUkVDVF9IVExDX0FNT1VOVBAEEhkKFUZJTkFMX0VYUElSWV9UT09fU09PThAFEhEKDUlOVkFMSURfUkVBTE0QBhITCg9FWFBJUllfVE9PX1NPT04QBxIZChVJTlZBTElEX09OSU9OX1ZFUlNJT04QCBIWChJJTlZBTElEX09OSU9OX0hNQUMQCRIVChFJTlZBTElEX09OSU9OX0tFWRAKEhgKFEFNT1VOVF9CRUxPV19NSU5JTVVNEAsSFAoQRkVFX0lOU1VGRklDSUVOVBAMEhkKFUlOQ09SUkVDVF9DTFRWX0VYUElSWRANEhQKEENIQU5ORUxfRElTQUJMRUQQDhIdChlURU1QT1JBUllfQ0hBTk5FTF9GQUlMVVJFEA8SIQodUkVRVUlSRURfTk9ERV9GRUFUVVJFX01JU1NJTkcQEBIkCiBSRVFVSVJFRF9DSEFOTkVMX0ZFQVRVUkVfTUlTU0lORxAREhUKEVVOS05PV05fTkVYVF9QRUVSEBISGgoWVEVNUE9SQVJZX05PREVfRkFJTFVSRRATEhoKFlBFUk1BTkVOVF9OT0RFX0ZBSUxVUkUQFBIdChlQRVJNQU5FTlRfQ0hBTk5FTF9GQUlMVVJFEBUSEgoORVhQSVJZX1RPT19GQVIQFhIPCgtNUFBfVElNRU9VVBAXEhkKFUlOVkFMSURfT05JT05fUEFZTE9BRBAYEhUKEElOVEVSTkFMX0ZBSUxVUkUQ5QcSFAoPVU5LTk9XTl9GQUlMVVJFEOYHEhcKElVOUkVBREFCTEVfRkFJTFVSRRDnB0oECAIQAw==');
@$core.Deprecated('Use channelUpdateDescriptor instead')
const ChannelUpdate$json = const {
  '1': 'ChannelUpdate',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'chain_hash', '3': 2, '4': 1, '5': 12, '10': 'chainHash'},
    const {
      '1': 'chan_id',
      '3': 3,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'message_flags', '3': 10, '4': 1, '5': 13, '10': 'messageFlags'},
    const {'1': 'channel_flags', '3': 5, '4': 1, '5': 13, '10': 'channelFlags'},
    const {'1': 'time_lock_delta', '3': 6, '4': 1, '5': 13, '10': 'timeLockDelta'},
    const {'1': 'htlc_minimum_msat', '3': 7, '4': 1, '5': 4, '10': 'htlcMinimumMsat'},
    const {'1': 'base_fee', '3': 8, '4': 1, '5': 13, '10': 'baseFee'},
    const {'1': 'fee_rate', '3': 9, '4': 1, '5': 13, '10': 'feeRate'},
    const {'1': 'htlc_maximum_msat', '3': 11, '4': 1, '5': 4, '10': 'htlcMaximumMsat'},
    const {'1': 'extra_opaque_data', '3': 12, '4': 1, '5': 12, '10': 'extraOpaqueData'},
  ],
};

/// Descriptor for `ChannelUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelUpdateDescriptor = $convert.base64Decode('Cg1DaGFubmVsVXBkYXRlEhwKCXNpZ25hdHVyZRgBIAEoDFIJc2lnbmF0dXJlEh0KCmNoYWluX2hhc2gYAiABKAxSCWNoYWluSGFzaBIbCgdjaGFuX2lkGAMgASgEQgIwAVIGY2hhbklkEhwKCXRpbWVzdGFtcBgEIAEoDVIJdGltZXN0YW1wEiMKDW1lc3NhZ2VfZmxhZ3MYCiABKA1SDG1lc3NhZ2VGbGFncxIjCg1jaGFubmVsX2ZsYWdzGAUgASgNUgxjaGFubmVsRmxhZ3MSJgoPdGltZV9sb2NrX2RlbHRhGAYgASgNUg10aW1lTG9ja0RlbHRhEioKEWh0bGNfbWluaW11bV9tc2F0GAcgASgEUg9odGxjTWluaW11bU1zYXQSGQoIYmFzZV9mZWUYCCABKA1SB2Jhc2VGZWUSGQoIZmVlX3JhdGUYCSABKA1SB2ZlZVJhdGUSKgoRaHRsY19tYXhpbXVtX21zYXQYCyABKARSD2h0bGNNYXhpbXVtTXNhdBIqChFleHRyYV9vcGFxdWVfZGF0YRgMIAEoDFIPZXh0cmFPcGFxdWVEYXRh');
@$core.Deprecated('Use macaroonIdDescriptor instead')
const MacaroonId$json = const {
  '1': 'MacaroonId',
  '2': const [
    const {'1': 'nonce', '3': 1, '4': 1, '5': 12, '10': 'nonce'},
    const {'1': 'storageId', '3': 2, '4': 1, '5': 12, '10': 'storageId'},
    const {'1': 'ops', '3': 3, '4': 3, '5': 11, '6': '.lnrpc.Op', '10': 'ops'},
  ],
};

/// Descriptor for `MacaroonId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macaroonIdDescriptor = $convert.base64Decode('CgpNYWNhcm9vbklkEhQKBW5vbmNlGAEgASgMUgVub25jZRIcCglzdG9yYWdlSWQYAiABKAxSCXN0b3JhZ2VJZBIbCgNvcHMYAyADKAsyCS5sbnJwYy5PcFIDb3Bz');
@$core.Deprecated('Use opDescriptor instead')
const Op$json = const {
  '1': 'Op',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 9, '10': 'entity'},
    const {'1': 'actions', '3': 2, '4': 3, '5': 9, '10': 'actions'},
  ],
};

/// Descriptor for `Op`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opDescriptor = $convert.base64Decode('CgJPcBIWCgZlbnRpdHkYASABKAlSBmVudGl0eRIYCgdhY3Rpb25zGAIgAygJUgdhY3Rpb25z');
@$core.Deprecated('Use checkMacPermRequestDescriptor instead')
const CheckMacPermRequest$json = const {
  '1': 'CheckMacPermRequest',
  '2': const [
    const {'1': 'macaroon', '3': 1, '4': 1, '5': 12, '10': 'macaroon'},
    const {'1': 'permissions', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.MacaroonPermission', '10': 'permissions'},
    const {'1': 'fullMethod', '3': 3, '4': 1, '5': 9, '10': 'fullMethod'},
  ],
};

/// Descriptor for `CheckMacPermRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkMacPermRequestDescriptor = $convert.base64Decode('ChNDaGVja01hY1Blcm1SZXF1ZXN0EhoKCG1hY2Fyb29uGAEgASgMUghtYWNhcm9vbhI7CgtwZXJtaXNzaW9ucxgCIAMoCzIZLmxucnBjLk1hY2Fyb29uUGVybWlzc2lvblILcGVybWlzc2lvbnMSHgoKZnVsbE1ldGhvZBgDIAEoCVIKZnVsbE1ldGhvZA==');
@$core.Deprecated('Use checkMacPermResponseDescriptor instead')
const CheckMacPermResponse$json = const {
  '1': 'CheckMacPermResponse',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `CheckMacPermResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkMacPermResponseDescriptor = $convert.base64Decode('ChRDaGVja01hY1Blcm1SZXNwb25zZRIUCgV2YWxpZBgBIAEoCFIFdmFsaWQ=');
@$core.Deprecated('Use rPCMiddlewareRequestDescriptor instead')
const RPCMiddlewareRequest$json = const {
  '1': 'RPCMiddlewareRequest',
  '2': const [
    const {'1': 'request_id', '3': 1, '4': 1, '5': 4, '10': 'requestId'},
    const {'1': 'raw_macaroon', '3': 2, '4': 1, '5': 12, '10': 'rawMacaroon'},
    const {'1': 'custom_caveat_condition', '3': 3, '4': 1, '5': 9, '10': 'customCaveatCondition'},
    const {'1': 'stream_auth', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.StreamAuth', '9': 0, '10': 'streamAuth'},
    const {'1': 'request', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.RPCMessage', '9': 0, '10': 'request'},
    const {'1': 'response', '3': 6, '4': 1, '5': 11, '6': '.lnrpc.RPCMessage', '9': 0, '10': 'response'},
    const {'1': 'msg_id', '3': 7, '4': 1, '5': 4, '10': 'msgId'},
  ],
  '8': const [
    const {'1': 'intercept_type'},
  ],
};

/// Descriptor for `RPCMiddlewareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCMiddlewareRequestDescriptor = $convert.base64Decode('ChRSUENNaWRkbGV3YXJlUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgEUglyZXF1ZXN0SWQSIQoMcmF3X21hY2Fyb29uGAIgASgMUgtyYXdNYWNhcm9vbhI2ChdjdXN0b21fY2F2ZWF0X2NvbmRpdGlvbhgDIAEoCVIVY3VzdG9tQ2F2ZWF0Q29uZGl0aW9uEjQKC3N0cmVhbV9hdXRoGAQgASgLMhEubG5ycGMuU3RyZWFtQXV0aEgAUgpzdHJlYW1BdXRoEi0KB3JlcXVlc3QYBSABKAsyES5sbnJwYy5SUENNZXNzYWdlSABSB3JlcXVlc3QSLwoIcmVzcG9uc2UYBiABKAsyES5sbnJwYy5SUENNZXNzYWdlSABSCHJlc3BvbnNlEhUKBm1zZ19pZBgHIAEoBFIFbXNnSWRCEAoOaW50ZXJjZXB0X3R5cGU=');
@$core.Deprecated('Use streamAuthDescriptor instead')
const StreamAuth$json = const {
  '1': 'StreamAuth',
  '2': const [
    const {'1': 'method_full_uri', '3': 1, '4': 1, '5': 9, '10': 'methodFullUri'},
  ],
};

/// Descriptor for `StreamAuth`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamAuthDescriptor = $convert.base64Decode('CgpTdHJlYW1BdXRoEiYKD21ldGhvZF9mdWxsX3VyaRgBIAEoCVINbWV0aG9kRnVsbFVyaQ==');
@$core.Deprecated('Use rPCMessageDescriptor instead')
const RPCMessage$json = const {
  '1': 'RPCMessage',
  '2': const [
    const {'1': 'method_full_uri', '3': 1, '4': 1, '5': 9, '10': 'methodFullUri'},
    const {'1': 'stream_rpc', '3': 2, '4': 1, '5': 8, '10': 'streamRpc'},
    const {'1': 'type_name', '3': 3, '4': 1, '5': 9, '10': 'typeName'},
    const {'1': 'serialized', '3': 4, '4': 1, '5': 12, '10': 'serialized'},
  ],
};

/// Descriptor for `RPCMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCMessageDescriptor = $convert.base64Decode('CgpSUENNZXNzYWdlEiYKD21ldGhvZF9mdWxsX3VyaRgBIAEoCVINbWV0aG9kRnVsbFVyaRIdCgpzdHJlYW1fcnBjGAIgASgIUglzdHJlYW1ScGMSGwoJdHlwZV9uYW1lGAMgASgJUgh0eXBlTmFtZRIeCgpzZXJpYWxpemVkGAQgASgMUgpzZXJpYWxpemVk');
@$core.Deprecated('Use rPCMiddlewareResponseDescriptor instead')
const RPCMiddlewareResponse$json = const {
  '1': 'RPCMiddlewareResponse',
  '2': const [
    const {'1': 'ref_msg_id', '3': 1, '4': 1, '5': 4, '10': 'refMsgId'},
    const {'1': 'register', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.MiddlewareRegistration', '9': 0, '10': 'register'},
    const {'1': 'feedback', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.InterceptFeedback', '9': 0, '10': 'feedback'},
  ],
  '8': const [
    const {'1': 'middleware_message'},
  ],
};

/// Descriptor for `RPCMiddlewareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCMiddlewareResponseDescriptor = $convert.base64Decode('ChVSUENNaWRkbGV3YXJlUmVzcG9uc2USHAoKcmVmX21zZ19pZBgBIAEoBFIIcmVmTXNnSWQSOwoIcmVnaXN0ZXIYAiABKAsyHS5sbnJwYy5NaWRkbGV3YXJlUmVnaXN0cmF0aW9uSABSCHJlZ2lzdGVyEjYKCGZlZWRiYWNrGAMgASgLMhgubG5ycGMuSW50ZXJjZXB0RmVlZGJhY2tIAFIIZmVlZGJhY2tCFAoSbWlkZGxld2FyZV9tZXNzYWdl');
@$core.Deprecated('Use middlewareRegistrationDescriptor instead')
const MiddlewareRegistration$json = const {
  '1': 'MiddlewareRegistration',
  '2': const [
    const {'1': 'middleware_name', '3': 1, '4': 1, '5': 9, '10': 'middlewareName'},
    const {'1': 'custom_macaroon_caveat_name', '3': 2, '4': 1, '5': 9, '10': 'customMacaroonCaveatName'},
    const {'1': 'read_only_mode', '3': 3, '4': 1, '5': 8, '10': 'readOnlyMode'},
  ],
};

/// Descriptor for `MiddlewareRegistration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List middlewareRegistrationDescriptor = $convert.base64Decode('ChZNaWRkbGV3YXJlUmVnaXN0cmF0aW9uEicKD21pZGRsZXdhcmVfbmFtZRgBIAEoCVIObWlkZGxld2FyZU5hbWUSPQobY3VzdG9tX21hY2Fyb29uX2NhdmVhdF9uYW1lGAIgASgJUhhjdXN0b21NYWNhcm9vbkNhdmVhdE5hbWUSJAoOcmVhZF9vbmx5X21vZGUYAyABKAhSDHJlYWRPbmx5TW9kZQ==');
@$core.Deprecated('Use interceptFeedbackDescriptor instead')
const InterceptFeedback$json = const {
  '1': 'InterceptFeedback',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'replace_response', '3': 2, '4': 1, '5': 8, '10': 'replaceResponse'},
    const {'1': 'replacement_serialized', '3': 3, '4': 1, '5': 12, '10': 'replacementSerialized'},
  ],
};

/// Descriptor for `InterceptFeedback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interceptFeedbackDescriptor = $convert.base64Decode('ChFJbnRlcmNlcHRGZWVkYmFjaxIUCgVlcnJvchgBIAEoCVIFZXJyb3ISKQoQcmVwbGFjZV9yZXNwb25zZRgCIAEoCFIPcmVwbGFjZVJlc3BvbnNlEjUKFnJlcGxhY2VtZW50X3NlcmlhbGl6ZWQYAyABKAxSFXJlcGxhY2VtZW50U2VyaWFsaXplZA==');
@$core.Deprecated('Use aSInvoiceDescriptor instead')
const ASInvoice$json = const {
  '1': 'ASInvoice',
  '2': const [
    const {'1': 'asset_id', '3': 1, '4': 1, '5': 13, '10': 'assetId'},
    const {'1': 'amt', '3': 2, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    const {'1': 'payment_addr', '3': 4, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'Dest', '3': 5, '4': 1, '5': 12, '10': 'Dest'},
  ],
};

/// Descriptor for `ASInvoice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aSInvoiceDescriptor = $convert.base64Decode('CglBU0ludm9pY2USGQoIYXNzZXRfaWQYASABKA1SB2Fzc2V0SWQSEAoDYW10GAIgASgDUgNhbXQSIQoMcGF5bWVudF9oYXNoGAMgASgMUgtwYXltZW50SGFzaBIhCgxwYXltZW50X2FkZHIYBCABKAxSC3BheW1lbnRBZGRyEhIKBERlc3QYBSABKAxSBERlc3Q=');
