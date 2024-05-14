import 'package:get_it/get_it.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/dependency_injection/shared_pref.dart';

final serviceLocator = GetIt.instance;

Future<void> setUp() async {
  serviceLocator.registerSingleton<ServerClient>(ServerClient());
  serviceLocator.registerSingleton<SharedPref>(SharedPref());
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  SharedPref sharedPref = serviceLocator.get<SharedPref>();
  serverClient.setupAppWriteAccount();
  await sharedPref.initializePrefrences();
}
