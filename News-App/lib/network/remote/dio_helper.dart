import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {
  static Dio dio;

  static void init(){
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://newsapi.org/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
  @required String url,
  @required Map<String, dynamic> query,
})async
  {
    return await dio.get(url, queryParameters: query);
  }
}
//https://newsapi.org/v2/top-headlines?country=eg&apiKey=API_KEY