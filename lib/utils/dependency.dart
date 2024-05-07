import 'package:get_it/get_it.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';

final serviceLocator = GetIt.instance;

void setUp() {
  serviceLocator.registerSingleton<ServerClient>(ServerClient());
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  serverClient.setupAppWriteAccount();
}
