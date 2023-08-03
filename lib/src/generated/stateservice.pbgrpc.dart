///
//  Generated code. Do not modify.
//  source: stateservice.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'stateservice.pb.dart' as $0;
export 'stateservice.pb.dart';

class StateClient extends $grpc.Client {
  static final _$subscribeState =
      $grpc.ClientMethod<$0.SubscribeStateRequest, $0.SubscribeStateResponse>(
          '/lnrpc.State/SubscribeState',
          ($0.SubscribeStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SubscribeStateResponse.fromBuffer(value));
  static final _$getState =
      $grpc.ClientMethod<$0.GetStateRequest, $0.GetStateResponse>(
          '/lnrpc.State/GetState',
          ($0.GetStateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetStateResponse.fromBuffer(value));

  StateClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.SubscribeStateResponse> subscribeState(
      $0.SubscribeStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$subscribeState, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.GetStateResponse> getState($0.GetStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getState, request, options: options);
  }
}

abstract class StateServiceBase extends $grpc.Service {
  $core.String get $name => 'lnrpc.State';

  StateServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SubscribeStateRequest,
            $0.SubscribeStateResponse>(
        'SubscribeState',
        subscribeState_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.SubscribeStateRequest.fromBuffer(value),
        ($0.SubscribeStateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetStateRequest, $0.GetStateResponse>(
        'GetState',
        getState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStateRequest.fromBuffer(value),
        ($0.GetStateResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.SubscribeStateResponse> subscribeState_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SubscribeStateRequest> request) async* {
    yield* subscribeState(call, await request);
  }

  $async.Future<$0.GetStateResponse> getState_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetStateRequest> request) async {
    return getState(call, await request);
  }

  $async.Stream<$0.SubscribeStateResponse> subscribeState(
      $grpc.ServiceCall call, $0.SubscribeStateRequest request);
  $async.Future<$0.GetStateResponse> getState(
      $grpc.ServiceCall call, $0.GetStateRequest request);
}
