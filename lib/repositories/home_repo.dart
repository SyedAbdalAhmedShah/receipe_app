import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:receipe_app/config/server_config.dart';

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
    log("data length ${response.data}");
  }
}
