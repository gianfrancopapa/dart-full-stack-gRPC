import 'dart:io';

import 'package:rxdart/subjects.dart';

import '../lib/users_api.dart';

class UserService extends UserServiceBase {
  /// In memory [User] list
  final List<User> users = [
    User(id: '1', name: 'Gianfranco', email: 'gianfranco@email.com'),
    User(id: '2', name: 'Gianfranco2', email: 'gianfranco@email.com'),
    User(id: '3', name: 'Gianfranco3', email: 'gianfranco@email.com'),
    User(id: '4', name: 'Gianfranco4', email: 'gianfranco@email.com'),
    User(id: '5', name: 'Gianfranco5', email: 'gianfranco@email.com'),
  ];

  late final BehaviorSubject<List<User>> usersStream;

  UserService() {
    usersStream = BehaviorSubject.seeded(users);
  }

  @override
  Future<User> getUserById(ServiceCall call, UserByIdRequest request) async {
    final userId = request.id;

    return users.firstWhere(
      (user) => user.id == userId,
      orElse: () => User(),
    );
  }

  @override
  Stream<UsersReponse> getUsers(ServiceCall call, UsersRequest request) async* {
    await for (final users in usersStream) {
      yield UsersReponse(users: users);
    }
  }

  @override
  Future<User> addUser(ServiceCall call, User request) async {
    final user = request;
    users.add(user);
    usersStream.sink.add(users);
    return user;
  }
}

void main(List<String> arguments) async {
  final server = Server([UserService()]);
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  await server.serve(port: port);

  print('Server running at localhost:${server.port}');
}
