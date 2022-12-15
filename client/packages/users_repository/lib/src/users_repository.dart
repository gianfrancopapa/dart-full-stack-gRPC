import 'dart:async';

import 'package:users_api/users_api.dart';

abstract class UsersRepositoryException implements Exception {
  /// {@macro users_repository_exception}
  const UsersRepositoryException(this.error, this.stackTrace);

  /// The underlying error that occurred.
  final Object error;

  /// The relevant stack trace.
  final StackTrace stackTrace;
}

/// {@template get_users}
/// Thrown during the get users if a failure occurs.
/// {@endtemplate}
class GetUsersFailure extends UsersRepositoryException {
  /// {@macro get_users}
  const GetUsersFailure(Object error, StackTrace stackTrace)
      : super(error, stackTrace);
}

class UsersRepository {
  const UsersRepository({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  Stream<List<User>> getUsers() async* {
    try {
      await for (final users in _apiClient.getUsers()) {
        yield users;
      }
    } catch (error, stackTrace) {
      throw GetUsersFailure(error, stackTrace);
    }
  }

  Future<User> getUserById(String id) async {
    try {
      final user = await _apiClient.getUserById(id: id);

      return user;
    } catch (error, stackTrace) {
      throw GetUsersFailure(error, stackTrace);
    }
  }
}
