import 'dart:math';

import 'package:users_api/users_api.dart';

void main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 8080,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );

  final stub = UserServiceClient(channel);

  final random = Random();
  final id = random.nextInt(100) + 5;

  await stub.addUser(User(
    id: id.toString(),
    name: 'Gianfranco${id.toString()}',
    email: 'gianfranco@email.com',
  ));

  await channel.shutdown();
}
