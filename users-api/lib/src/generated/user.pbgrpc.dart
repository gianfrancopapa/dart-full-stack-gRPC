///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class UserServiceClient extends $grpc.Client {
  static final _$getUsers =
      $grpc.ClientMethod<$0.UsersRequest, $0.UsersReponse>(
          '/UserService/getUsers',
          ($0.UsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.UsersReponse.fromBuffer(value));
  static final _$getUserById = $grpc.ClientMethod<$0.UserByIdRequest, $0.User>(
      '/UserService/getUserById',
      ($0.UserByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));
  static final _$addUser = $grpc.ClientMethod<$0.User, $0.User>(
      '/UserService/addUser',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.User.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.UsersReponse> getUsers($0.UsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getUsers, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.User> getUserById($0.UserByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserById, request, options: options);
  }

  $grpc.ResponseFuture<$0.User> addUser($0.User request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UsersRequest, $0.UsersReponse>(
        'getUsers',
        getUsers_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.UsersRequest.fromBuffer(value),
        ($0.UsersReponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserByIdRequest, $0.User>(
        'getUserById',
        getUserById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserByIdRequest.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.User>(
        'addUser',
        addUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.User value) => value.writeToBuffer()));
  }

  $async.Stream<$0.UsersReponse> getUsers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UsersRequest> request) async* {
    yield* getUsers(call, await request);
  }

  $async.Future<$0.User> getUserById_Pre(
      $grpc.ServiceCall call, $async.Future<$0.UserByIdRequest> request) async {
    return getUserById(call, await request);
  }

  $async.Future<$0.User> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return addUser(call, await request);
  }

  $async.Stream<$0.UsersReponse> getUsers(
      $grpc.ServiceCall call, $0.UsersRequest request);
  $async.Future<$0.User> getUserById(
      $grpc.ServiceCall call, $0.UserByIdRequest request);
  $async.Future<$0.User> addUser($grpc.ServiceCall call, $0.User request);
}
