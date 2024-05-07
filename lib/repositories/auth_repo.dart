import 'dart:developer';

import 'package:appwrite/models.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/utils/dependency.dart';

class AuthRepository {
  Future signInWithEmail(
      {required String email, required String password}) async {
    ServerClient serverClient = serviceLocator.get<ServerClient>();

    Session session = await serverClient.account
        .createEmailPasswordSession(email: email, password: password);
    log("DEVICE INFO ${session.deviceBrand} == ${session.deviceModel} == ${session.deviceName} == ${session.userId}");
  }
}
