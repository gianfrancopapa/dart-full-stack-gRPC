///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use usersRequestDescriptor instead')
const UsersRequest$json = const {
  '1': 'UsersRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersRequestDescriptor = $convert.base64Decode('CgxVc2Vyc1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use userByIdRequestDescriptor instead')
const UserByIdRequest$json = const {
  '1': 'UserByIdRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `UserByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userByIdRequestDescriptor = $convert.base64Decode('Cg9Vc2VyQnlJZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use usersReponseDescriptor instead')
const UsersReponse$json = const {
  '1': 'UsersReponse',
  '2': const [
    const {'1': 'users', '3': 1, '4': 3, '5': 11, '6': '.User', '10': 'users'},
  ],
};

/// Descriptor for `UsersReponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usersReponseDescriptor = $convert.base64Decode('CgxVc2Vyc1JlcG9uc2USGwoFdXNlcnMYASADKAsyBS5Vc2VyUgV1c2Vycw==');
@$core.Deprecated('Use userDescriptor instead')
const User$json = const {
  '1': 'User',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode('CgRVc2VyEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBWVtYWlsGAMgASgJUgVlbWFpbA==');
