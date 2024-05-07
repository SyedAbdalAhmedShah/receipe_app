import 'package:appwrite/appwrite.dart';
import 'package:receipe_app/config/server_config.dart';

class ServerClient {
  late Account account;
  late Databases databases;
  Client client = Client()
      .setEndpoint("https://cloud.appwrite.io/v1")
      .setProject(ServerConfig.projectId);

  setupAppWriteAccount() {
    account = Account(client);
    databases = Databases(client);
  }
}
