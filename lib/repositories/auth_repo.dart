import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
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

       

    Preferences preferences = await serverClient.account.getPrefs();

    log("Prefrences ${preferences.data}");
  }

  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    Session session = await serverClient.account.createEmailPasswordSession(
      email: email,
      password: password,
    );
    log("DEVICE INFO ${session.deviceBrand} == ${session.deviceModel} == ${session.deviceName} == ${session.userId}");
  }
}
