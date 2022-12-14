import 'dart:io';

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

  @override
  Future<User> getUserById(ServiceCall call, UserByIdRequest request) async {
    final userId = request.id;

    return users.firstWhere(
      (user) => user.id == userId,
      orElse: () => User(),
    );
  }

  @override
  Future<UsersReponse> getUsers(ServiceCall call, UsersRequest request) async {
    return UsersReponse(users: users);
  }
}

void main(List<String> arguments) async {
  final server = Server([UserService()]);
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  await server.serve(port: port);

  print('Server running at localhost:${server.port}');
}
