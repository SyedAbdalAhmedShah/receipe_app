import 'package:dio/dio.dart';
import 'package:receipe_app/config/server_config.dart';
import 'package:receipe_app/server/server_constants.dart';

class HomeRepository {

  final dio = Dio();
  Future getAllDishes () async {
    dio.options = 
    BaseOptions(baseUrl: ServerConfig.baseUrl, connectTimeout:const Duration( seconds: 10),headers: {
"X-RapidAPI-Key" :  ServerConfig.rapidApiKey,
"X-RapidAPI-Host" : ServerConfig.rapidApiHost,
    });
    final response = dio.get(url)

  }
}