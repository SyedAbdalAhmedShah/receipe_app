import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/utils/dependency.dart';

class AuthRepository {
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  Future createEmailPassword(
      {required String email,
      required String password,
      required String userName}) async {
    User user = await serverClient.account.create(
        userId: ID.unique(), email: email, password: password, name: userName);

    log("TOEKN DATA ${user.toMap()} === ${user} ");
    Document document = await serverClient.databases.createDocument(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.userCollectionId,
        documentId: ID.unique(),
        data: {
          ServerStrings.userId: user.$id.toString(),
          ServerStrings.userName: userName,
          ServerStrings.createdAt: user.$createdAt.toString()
        });
        log("UPLOADED DOCUMENT ${document.data}");
  }

  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    Session session = await serverClient.account.createEmailPasswordSession(
      email: email,
      password: password,
    );
    User user = await serverClient.account.get();
    log("USER ${user.toMap()}");

    log("DEVICE INFO ${session.deviceBrand} == ${session.deviceModel} == ${session.deviceName} == ${session.userId}");
  }

  Future logOut() async {
    await serverClient.account.deleteSessions();
  }
}
