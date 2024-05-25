import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/model/cache_user.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/utils/dependency.dart';

mixin FavouriteDishRepository {
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  Future markAsFavourtire(ProductModel favDish) async {
    log("user doc id ${CacheUser.user?.documentId}");
    Document userDoc = await serverClient.databases.getDocument(
      databaseId: ServerConfig.recipeDatabaseId,
      collectionId: ServerConfig.userCollectionId,
      documentId: CacheUser.user?.documentId ?? "",
    );
    List<dynamic> currentDoc = userDoc.data[ServerStrings.favourite];

    var recipeAlreadyExist = currentDoc.any(
      (element) => element[ServerStrings.recipeId] == favDish.id,
    );
    log('recipeAlreadyExist $recipeAlreadyExist');
    currentDoc.add({
      ServerStrings.recipeId: favDish.id,
      ServerStrings.receipeName: favDish.title,
      ServerStrings.recipeImage: favDish.image,
    });
    serverClient.databases.updateDocument(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.userCollectionId,
        documentId: CacheUser.user?.documentId ?? "",
        data: {ServerStrings.favourite: currentDoc});
  }

  Future getMyFavDishes() async {
    DocumentList docList = await serverClient.databases.listDocuments(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.favCollectionId,
        queries: [Query.equal("users", CacheUser.user?.documentId ?? "")]);

    log("Fav doc list ${docList.documents.length}");
  }
}