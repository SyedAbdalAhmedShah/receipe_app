import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/model/cache_user.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/utils/dependency.dart';

mixin FavouriteDishRepository {
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  Future markAsFavourtire(ProductModel favDish) async {
    serverClient.databases.updateDocument(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.userCollectionId,
        documentId: CacheUser.user?.documentId ?? "",
        data: {
          ServerStrings.favourite: [
            {
              ServerStrings.recipeId: favDish.id,
              ServerStrings.receipeName: favDish.title,
              ServerStrings.recipeImage: favDish.image,
            }
          ]
        });
  }
}
