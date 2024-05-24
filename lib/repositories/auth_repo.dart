import 'dart:convert';
import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/model/cache_user.dart';
import 'package:receipe_app/model/user/app_user.dart';
import 'package:receipe_app/utils/dependency.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepository {
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  Future createEmailPassword(
      {required String email,
      required String password,
      required String userName}) async {
    User user = await serverClient.account.create(
        userId: ID.unique(), email: email, password: password, name: userName);

    final userData = {
      ServerStrings.userId: user.$id.toString(),
      ServerStrings.userName: userName,
      ServerStrings.email: email,
      ServerStrings.createdAt: user.$createdAt.toString()
    };

    Document document = await serverClient.databases.createDocument(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.userCollectionId,
        documentId: ID.unique(),
        data: userData);
    log(" doc id========> ${document.$id} ");
    final userMap = document.data;
    userMap.addAll({ServerStrings.docId: document.$id});
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(ServerStrings.userDataKey, json.encode(userMap));
    CacheUser.user = AppUser.fromJson(document.data);
    log("cache user doc id========> ${CacheUser.user?.documentId} ");
  }

  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await serverClient.account.createEmailPasswordSession(
      email: email,
      password: password,
    );
    User user = await serverClient.account.get();
    AppUser appUser = await getUser(userId: user.$id);
    CacheUser.user = appUser;
    log("cache user doc id========> ${CacheUser.user?.documentId} ");
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(
        ServerStrings.userDataKey, json.encode(appUser.toJson()));
  }

  Future logOut() async {
    await serverClient.account.deleteSessions();
  }

  Future<AppUser> getUser({required String userId}) async {
    DocumentList userDoc = await serverClient.databases.listDocuments(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.userCollectionId,
        queries: [Query.equal(ServerStrings.userId, userId)]);
    final userData = userDoc.documents.first;
    final userMap = userData.data;
    log(" doc id========> ${userData.$id} ");
    userMap.addAll({ServerStrings.docId: userData.$id});
    AppUser user = AppUser.fromJson(userData.data);
    return user;
  }
}
