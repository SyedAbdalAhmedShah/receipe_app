import 'package:appwrite/appwrite.dart';
import 'package:receipe_app/config/server_config.dart';

class AuthRepository {
  Client client = Client()
      .setEndpoint("https://cloud.appwrite.io/v1")
      .setProject(ServerConfig.projectId);
}
