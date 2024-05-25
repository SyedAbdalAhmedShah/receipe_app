import 'dart:developer';
import 'package:appwrite/appwrite.dart';
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
    final response = await dio.get(
      ServerConfig.baseUrl,
      options: Options(headers: headers),
    );
    final responseList = response.data as List;
    for (var i = 0; i < responseList.length; i++) {
      final Map<String, dynamic> mapData = responseList[i];
      await uploadProducts(mapData);
    }
    log(responseList.toString());
    List<ProductModel> products =
        responseList.map((e) => ProductModel.fromJson(e)).toList();
    log(products.length.toString());
    return products;
  }

  Future uploadProducts(Map<String, dynamic> data) async {
    await serverClient.databases.createDocument(
        databaseId: ServerConfig.recipeDatabaseId,
        collectionId: ServerConfig.recipesCollection,
        documentId: ID.unique(),
        data: data);
  }
}
