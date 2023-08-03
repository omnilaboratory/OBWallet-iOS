///
//  Generated code. Do not modify.
//  source: walletkit.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'walletkit.pb.dart' as $2;
import 'signer.pb.dart' as $1;
export 'walletkit.pb.dart';

class WalletKitClient extends $grpc.Client {
  static final _$listUnspent =
      $grpc.ClientMethod<$2.ListUnspentRequest, $2.ListUnspentResponse>(
          '/walletrpc.WalletKit/ListUnspent',
          ($2.ListUnspentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListUnspentResponse.fromBuffer(value));
  static final _$leaseOutput =
      $grpc.ClientMethod<$2.LeaseOutputRequest, $2.LeaseOutputResponse>(
          '/walletrpc.WalletKit/LeaseOutput',
          ($2.LeaseOutputRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.LeaseOutputResponse.fromBuffer(value));
  static final _$releaseOutput =
      $grpc.ClientMethod<$2.ReleaseOutputRequest, $2.ReleaseOutputResponse>(
          '/walletrpc.WalletKit/ReleaseOutput',
          ($2.ReleaseOutputRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ReleaseOutputResponse.fromBuffer(value));
  static final _$listLeases =
      $grpc.ClientMethod<$2.ListLeasesRequest, $2.ListLeasesResponse>(
          '/walletrpc.WalletKit/ListLeases',
          ($2.ListLeasesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListLeasesResponse.fromBuffer(value));
  static final _$deriveNextKey =
      $grpc.ClientMethod<$2.KeyReq, $1.KeyDescriptor>(
          '/walletrpc.WalletKit/DeriveNextKey',
          ($2.KeyReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.KeyDescriptor.fromBuffer(value));
  static final _$deriveKey =
      $grpc.ClientMethod<$1.KeyLocator, $1.KeyDescriptor>(
          '/walletrpc.WalletKit/DeriveKey',
          ($1.KeyLocator value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.KeyDescriptor.fromBuffer(value));
  static final _$nextAddr = $grpc.ClientMethod<$2.AddrRequest, $2.AddrResponse>(
      '/walletrpc.WalletKit/NextAddr',
      ($2.AddrRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AddrResponse.fromBuffer(value));
  static final _$listAccounts =
      $grpc.ClientMethod<$2.ListAccountsRequest, $2.ListAccountsResponse>(
          '/walletrpc.WalletKit/ListAccounts',
          ($2.ListAccountsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListAccountsResponse.fromBuffer(value));
  static final _$importAccount =
      $grpc.ClientMethod<$2.ImportAccountRequest, $2.ImportAccountResponse>(
          '/walletrpc.WalletKit/ImportAccount',
          ($2.ImportAccountRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ImportAccountResponse.fromBuffer(value));
  static final _$importPublicKey =
      $grpc.ClientMethod<$2.ImportPublicKeyRequest, $2.ImportPublicKeyResponse>(
          '/walletrpc.WalletKit/ImportPublicKey',
          ($2.ImportPublicKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ImportPublicKeyResponse.fromBuffer(value));
  static final _$publishTransaction =
      $grpc.ClientMethod<$2.Transaction, $2.PublishResponse>(
          '/walletrpc.WalletKit/PublishTransaction',
          ($2.Transaction value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.PublishResponse.fromBuffer(value));
  static final _$sendOutputs =
      $grpc.ClientMethod<$2.SendOutputsRequest, $2.SendOutputsResponse>(
          '/walletrpc.WalletKit/SendOutputs',
          ($2.SendOutputsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SendOutputsResponse.fromBuffer(value));
  static final _$estimateFee =
      $grpc.ClientMethod<$2.EstimateFeeRequest, $2.EstimateFeeResponse>(
          '/walletrpc.WalletKit/EstimateFee',
          ($2.EstimateFeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.EstimateFeeResponse.fromBuffer(value));
  static final _$pendingSweeps =
      $grpc.ClientMethod<$2.PendingSweepsRequest, $2.PendingSweepsResponse>(
          '/walletrpc.WalletKit/PendingSweeps',
          ($2.PendingSweepsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.PendingSweepsResponse.fromBuffer(value));
  static final _$bumpFee =
      $grpc.ClientMethod<$2.BumpFeeRequest, $2.BumpFeeResponse>(
          '/walletrpc.WalletKit/BumpFee',
          ($2.BumpFeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.BumpFeeResponse.fromBuffer(value));
  static final _$listSweeps =
      $grpc.ClientMethod<$2.ListSweepsRequest, $2.ListSweepsResponse>(
          '/walletrpc.WalletKit/ListSweeps',
          ($2.ListSweepsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ListSweepsResponse.fromBuffer(value));
  static final _$labelTransaction = $grpc.ClientMethod<
          $2.LabelTransactionRequest, $2.LabelTransactionResponse>(
      '/walletrpc.WalletKit/LabelTransaction',
      ($2.LabelTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $2.LabelTransactionResponse.fromBuffer(value));
  static final _$fundPsbt =
      $grpc.ClientMethod<$2.FundPsbtRequest, $2.FundPsbtResponse>(
          '/walletrpc.WalletKit/FundPsbt',
          ($2.FundPsbtRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.FundPsbtResponse.fromBuffer(value));
  static final _$signPsbt =
      $grpc.ClientMethod<$2.SignPsbtRequest, $2.SignPsbtResponse>(
          '/walletrpc.WalletKit/SignPsbt',
          ($2.SignPsbtRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.SignPsbtResponse.fromBuffer(value));
  static final _$finalizePsbt =
      $grpc.ClientMethod<$2.FinalizePsbtRequest, $2.FinalizePsbtResponse>(
          '/walletrpc.WalletKit/FinalizePsbt',
          ($2.FinalizePsbtRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.FinalizePsbtResponse.fromBuffer(value));

  WalletKitClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ListUnspentResponse> listUnspent(
      $2.ListUnspentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listUnspent, request, options: options);
  }

  $grpc.ResponseFuture<$2.LeaseOutputResponse> leaseOutput(
      $2.LeaseOutputRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$leaseOutput, request, options: options);
  }

  $grpc.ResponseFuture<$2.ReleaseOutputResponse> releaseOutput(
      $2.ReleaseOutputRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$releaseOutput, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListLeasesResponse> listLeases(
      $2.ListLeasesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLeases, request, options: options);
  }

  $grpc.ResponseFuture<$1.KeyDescriptor> deriveNextKey($2.KeyReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deriveNextKey, request, options: options);
  }

  $grpc.ResponseFuture<$1.KeyDescriptor> deriveKey($1.KeyLocator request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deriveKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.AddrResponse> nextAddr($2.AddrRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$nextAddr, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListAccountsResponse> listAccounts(
      $2.ListAccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$2.ImportAccountResponse> importAccount(
      $2.ImportAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$importAccount, request, options: options);
  }

  $grpc.ResponseFuture<$2.ImportPublicKeyResponse> importPublicKey(
      $2.ImportPublicKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$importPublicKey, request, options: options);
  }

  $grpc.ResponseFuture<$2.PublishResponse> publishTransaction(
      $2.Transaction request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publishTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.SendOutputsResponse> sendOutputs(
      $2.SendOutputsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendOutputs, request, options: options);
  }

  $grpc.ResponseFuture<$2.EstimateFeeResponse> estimateFee(
      $2.EstimateFeeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$estimateFee, request, options: options);
  }

  $grpc.ResponseFuture<$2.PendingSweepsResponse> pendingSweeps(
      $2.PendingSweepsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$pendingSweeps, request, options: options);
  }

  $grpc.ResponseFuture<$2.BumpFeeResponse> bumpFee($2.BumpFeeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$bumpFee, request, options: options);
  }

  $grpc.ResponseFuture<$2.ListSweepsResponse> listSweeps(
      $2.ListSweepsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSweeps, request, options: options);
  }

  $grpc.ResponseFuture<$2.LabelTransactionResponse> labelTransaction(
      $2.LabelTransactionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$labelTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.FundPsbtResponse> fundPsbt($2.FundPsbtRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fundPsbt, request, options: options);
  }

  $grpc.ResponseFuture<$2.SignPsbtResponse> signPsbt($2.SignPsbtRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signPsbt, request, options: options);
  }

  $grpc.ResponseFuture<$2.FinalizePsbtResponse> finalizePsbt(
      $2.FinalizePsbtRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$finalizePsbt, request, options: options);
  }
}

abstract class WalletKitServiceBase extends $grpc.Service {
  $core.String get $name => 'walletrpc.WalletKit';

  WalletKitServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$2.ListUnspentRequest, $2.ListUnspentResponse>(
            'ListUnspent',
            listUnspent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListUnspentRequest.fromBuffer(value),
            ($2.ListUnspentResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.LeaseOutputRequest, $2.LeaseOutputResponse>(
            'LeaseOutput',
            leaseOutput_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.LeaseOutputRequest.fromBuffer(value),
            ($2.LeaseOutputResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ReleaseOutputRequest, $2.ReleaseOutputResponse>(
            'ReleaseOutput',
            releaseOutput_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ReleaseOutputRequest.fromBuffer(value),
            ($2.ReleaseOutputResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListLeasesRequest, $2.ListLeasesResponse>(
        'ListLeases',
        listLeases_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListLeasesRequest.fromBuffer(value),
        ($2.ListLeasesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.KeyReq, $1.KeyDescriptor>(
        'DeriveNextKey',
        deriveNextKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.KeyReq.fromBuffer(value),
        ($1.KeyDescriptor value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.KeyLocator, $1.KeyDescriptor>(
        'DeriveKey',
        deriveKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.KeyLocator.fromBuffer(value),
        ($1.KeyDescriptor value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AddrRequest, $2.AddrResponse>(
        'NextAddr',
        nextAddr_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AddrRequest.fromBuffer(value),
        ($2.AddrResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ListAccountsRequest, $2.ListAccountsResponse>(
            'ListAccounts',
            listAccounts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ListAccountsRequest.fromBuffer(value),
            ($2.ListAccountsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.ImportAccountRequest, $2.ImportAccountResponse>(
            'ImportAccount',
            importAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.ImportAccountRequest.fromBuffer(value),
            ($2.ImportAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ImportPublicKeyRequest,
            $2.ImportPublicKeyResponse>(
        'ImportPublicKey',
        importPublicKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ImportPublicKeyRequest.fromBuffer(value),
        ($2.ImportPublicKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.Transaction, $2.PublishResponse>(
        'PublishTransaction',
        publishTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.Transaction.fromBuffer(value),
        ($2.PublishResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.SendOutputsRequest, $2.SendOutputsResponse>(
            'SendOutputs',
            sendOutputs_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.SendOutputsRequest.fromBuffer(value),
            ($2.SendOutputsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.EstimateFeeRequest, $2.EstimateFeeResponse>(
            'EstimateFee',
            estimateFee_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.EstimateFeeRequest.fromBuffer(value),
            ($2.EstimateFeeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.PendingSweepsRequest, $2.PendingSweepsResponse>(
            'PendingSweeps',
            pendingSweeps_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.PendingSweepsRequest.fromBuffer(value),
            ($2.PendingSweepsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.BumpFeeRequest, $2.BumpFeeResponse>(
        'BumpFee',
        bumpFee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.BumpFeeRequest.fromBuffer(value),
        ($2.BumpFeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.ListSweepsRequest, $2.ListSweepsResponse>(
        'ListSweeps',
        listSweeps_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.ListSweepsRequest.fromBuffer(value),
        ($2.ListSweepsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.LabelTransactionRequest,
            $2.LabelTransactionResponse>(
        'LabelTransaction',
        labelTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.LabelTransactionRequest.fromBuffer(value),
        ($2.LabelTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.FundPsbtRequest, $2.FundPsbtResponse>(
        'FundPsbt',
        fundPsbt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.FundPsbtRequest.fromBuffer(value),
        ($2.FundPsbtResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.SignPsbtRequest, $2.SignPsbtResponse>(
        'SignPsbt',
        signPsbt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.SignPsbtRequest.fromBuffer(value),
        ($2.SignPsbtResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$2.FinalizePsbtRequest, $2.FinalizePsbtResponse>(
            'FinalizePsbt',
            finalizePsbt_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $2.FinalizePsbtRequest.fromBuffer(value),
            ($2.FinalizePsbtResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.ListUnspentResponse> listUnspent_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListUnspentRequest> request) async {
    return listUnspent(call, await request);
  }

  $async.Future<$2.LeaseOutputResponse> leaseOutput_Pre($grpc.ServiceCall call,
      $async.Future<$2.LeaseOutputRequest> request) async {
    return leaseOutput(call, await request);
  }

  $async.Future<$2.ReleaseOutputResponse> releaseOutput_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ReleaseOutputRequest> request) async {
    return releaseOutput(call, await request);
  }

  $async.Future<$2.ListLeasesResponse> listLeases_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListLeasesRequest> request) async {
    return listLeases(call, await request);
  }

  $async.Future<$1.KeyDescriptor> deriveNextKey_Pre(
      $grpc.ServiceCall call, $async.Future<$2.KeyReq> request) async {
    return deriveNextKey(call, await request);
  }

  $async.Future<$1.KeyDescriptor> deriveKey_Pre(
      $grpc.ServiceCall call, $async.Future<$1.KeyLocator> request) async {
    return deriveKey(call, await request);
  }

  $async.Future<$2.AddrResponse> nextAddr_Pre(
      $grpc.ServiceCall call, $async.Future<$2.AddrRequest> request) async {
    return nextAddr(call, await request);
  }

  $async.Future<$2.ListAccountsResponse> listAccounts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ListAccountsRequest> request) async {
    return listAccounts(call, await request);
  }

  $async.Future<$2.ImportAccountResponse> importAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ImportAccountRequest> request) async {
    return importAccount(call, await request);
  }

  $async.Future<$2.ImportPublicKeyResponse> importPublicKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.ImportPublicKeyRequest> request) async {
    return importPublicKey(call, await request);
  }

  $async.Future<$2.PublishResponse> publishTransaction_Pre(
      $grpc.ServiceCall call, $async.Future<$2.Transaction> request) async {
    return publishTransaction(call, await request);
  }

  $async.Future<$2.SendOutputsResponse> sendOutputs_Pre($grpc.ServiceCall call,
      $async.Future<$2.SendOutputsRequest> request) async {
    return sendOutputs(call, await request);
  }

  $async.Future<$2.EstimateFeeResponse> estimateFee_Pre($grpc.ServiceCall call,
      $async.Future<$2.EstimateFeeRequest> request) async {
    return estimateFee(call, await request);
  }

  $async.Future<$2.PendingSweepsResponse> pendingSweeps_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.PendingSweepsRequest> request) async {
    return pendingSweeps(call, await request);
  }

  $async.Future<$2.BumpFeeResponse> bumpFee_Pre(
      $grpc.ServiceCall call, $async.Future<$2.BumpFeeRequest> request) async {
    return bumpFee(call, await request);
  }

  $async.Future<$2.ListSweepsResponse> listSweeps_Pre($grpc.ServiceCall call,
      $async.Future<$2.ListSweepsRequest> request) async {
    return listSweeps(call, await request);
  }

  $async.Future<$2.LabelTransactionResponse> labelTransaction_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.LabelTransactionRequest> request) async {
    return labelTransaction(call, await request);
  }

  $async.Future<$2.FundPsbtResponse> fundPsbt_Pre(
      $grpc.ServiceCall call, $async.Future<$2.FundPsbtRequest> request) async {
    return fundPsbt(call, await request);
  }

  $async.Future<$2.SignPsbtResponse> signPsbt_Pre(
      $grpc.ServiceCall call, $async.Future<$2.SignPsbtRequest> request) async {
    return signPsbt(call, await request);
  }

  $async.Future<$2.FinalizePsbtResponse> finalizePsbt_Pre(
      $grpc.ServiceCall call,
      $async.Future<$2.FinalizePsbtRequest> request) async {
    return finalizePsbt(call, await request);
  }

  $async.Future<$2.ListUnspentResponse> listUnspent(
      $grpc.ServiceCall call, $2.ListUnspentRequest request);
  $async.Future<$2.LeaseOutputResponse> leaseOutput(
      $grpc.ServiceCall call, $2.LeaseOutputRequest request);
  $async.Future<$2.ReleaseOutputResponse> releaseOutput(
      $grpc.ServiceCall call, $2.ReleaseOutputRequest request);
  $async.Future<$2.ListLeasesResponse> listLeases(
      $grpc.ServiceCall call, $2.ListLeasesRequest request);
  $async.Future<$1.KeyDescriptor> deriveNextKey(
      $grpc.ServiceCall call, $2.KeyReq request);
  $async.Future<$1.KeyDescriptor> deriveKey(
      $grpc.ServiceCall call, $1.KeyLocator request);
  $async.Future<$2.AddrResponse> nextAddr(
      $grpc.ServiceCall call, $2.AddrRequest request);
  $async.Future<$2.ListAccountsResponse> listAccounts(
      $grpc.ServiceCall call, $2.ListAccountsRequest request);
  $async.Future<$2.ImportAccountResponse> importAccount(
      $grpc.ServiceCall call, $2.ImportAccountRequest request);
  $async.Future<$2.ImportPublicKeyResponse> importPublicKey(
      $grpc.ServiceCall call, $2.ImportPublicKeyRequest request);
  $async.Future<$2.PublishResponse> publishTransaction(
      $grpc.ServiceCall call, $2.Transaction request);
  $async.Future<$2.SendOutputsResponse> sendOutputs(
      $grpc.ServiceCall call, $2.SendOutputsRequest request);
  $async.Future<$2.EstimateFeeResponse> estimateFee(
      $grpc.ServiceCall call, $2.EstimateFeeRequest request);
  $async.Future<$2.PendingSweepsResponse> pendingSweeps(
      $grpc.ServiceCall call, $2.PendingSweepsRequest request);
  $async.Future<$2.BumpFeeResponse> bumpFee(
      $grpc.ServiceCall call, $2.BumpFeeRequest request);
  $async.Future<$2.ListSweepsResponse> listSweeps(
      $grpc.ServiceCall call, $2.ListSweepsRequest request);
  $async.Future<$2.LabelTransactionResponse> labelTransaction(
      $grpc.ServiceCall call, $2.LabelTransactionRequest request);
  $async.Future<$2.FundPsbtResponse> fundPsbt(
      $grpc.ServiceCall call, $2.FundPsbtRequest request);
  $async.Future<$2.SignPsbtResponse> signPsbt(
      $grpc.ServiceCall call, $2.SignPsbtRequest request);
  $async.Future<$2.FinalizePsbtResponse> finalizePsbt(
      $grpc.ServiceCall call, $2.FinalizePsbtRequest request);
}
