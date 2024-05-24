import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/utils/dependency.dart';

mixin FavouriteDishRepository {
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  Future markAsFavourtire(ProductModel favDish) async {
    serverClient.databases.updateDocument(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.userCollectionId,
        documentId: "664fa9e696be83a16537",
        data: {ServerStrings.favourite: favDish.toJson()});
  }
}
