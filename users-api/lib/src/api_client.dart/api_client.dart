import '../../users_api.dart';

/// {@template api_client}
/// An http API client
/// {@endtemplate}
class ApiClient {
  /// {@macro api_client}
  ApiClient({
    required String baseUrl,
    required int port,
    ClientChannel? channel,
  }) {
    _channel = ClientChannel(
      baseUrl,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = UserServiceClient(_channel);
  }

  late final ClientChannel _channel;
  late final UserServiceClient stub;

  /// Get the list of users
  Stream<List<User>> getUsers() async* {
    final response = stub.getUsers(UsersRequest());
    await for (var users in response) {
      yield users.users;
    }
  }

  /// Get a single user by id
  Future<User> getUserById({
    required String id,
  }) async {
    final user = await stub.getUserById(UserByIdRequest(id: id));

    return user;
  }
}
