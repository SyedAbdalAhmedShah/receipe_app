import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dio/dio.dart';
import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/constants/server_strings.dart';
import 'package:receipe_app/dependency_injection/server_client.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';
import 'package:receipe_app/utils/dependency.dart';

mixin HomeRepository {
  final dio = Dio();
  ServerClient serverClient = serviceLocator.get<ServerClient>();
  final headers = {
    ServerStrings.rapidApiKey: ServerConfig.rapidApiKey,
    ServerStrings.rapidApiHost: ServerConfig.rapidApiHost,
  };
  Future<List<ProductModel>> getAllDishes() async {
    List<ProductModel> products = await getDishesFromDatabase();

    return products;
  }

  Future<List<ProductModel>> getDishesFromDatabase() async {
    DocumentList docs = await serverClient.databases.listDocuments(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.recipesCollection,
        queries: [Query.limit(200)]);
    final docList = docs.documents;

    List<ProductModel> prodcuts = docList
        .map(
          (e) => ProductModel.fromJson(e.data),
        )
        .toList();

    return prodcuts;
  }
}
