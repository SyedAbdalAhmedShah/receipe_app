import 'package:appwrite/appwrite.dart';
import 'package:receipe_app/config/server_config.dart';

class ServerClient {
  late Account account;

  Client client = Client()
      .setEndpoint("https://cloud.appwrite.io/v1")
      .setProject(ServerConfig.projectId);

  setupAccount() {
    account = Account(client);
  }
}
