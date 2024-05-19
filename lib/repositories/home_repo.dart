import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/model/prodcut/product_model.dart';

class HomeRepository {
  final dio = Dio();
  final headers = {
    "X-RapidAPI-Key": ServerConfig.rapidApiKey,
    "X-RapidAPI-Host": ServerConfig.rapidApiHost,
  };
  Future getAllDishes() async {
    final response = await dio.get(
      ServerConfig.baseUrl,
      options: Options(headers: headers),
    );
    final responseList = response.data as List;
    log(responseList.toString());
    List<ProductModel> products =responseList.map((e) =>  ProductModel.fromJson(e)).toList();
    log(products.length.toString());
  }
}
