import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class DioHelper {

  static  Dio dio=Dio();
  static inti()
    {
      String x="7ec23a955b0b43d28e682c55c6ce9eb7";
      dio =Dio(
        BaseOptions(
          baseUrl:'https://newsapi.org/v2/top-headlines?country=us&apiKey=7ec23a955b0b43d28e682c55c6ce9eb7',
          receiveDataWhenStatusError: true,
        )
      );
    }

    static Future<Response> getdata({required String url , required Map<String ,dynamic> query}) async{
      return await dio.get(url ,queryParameters:query , );
    }
}

class DioHelper_wether {

  static  Dio dio=Dio();
  static inti()
  {
    String x="038682d92c90c217e6141bae1a79e12e";
    dio =Dio(
        BaseOptions(
          //https://api.openweathermap.org/data/2.5/weather?q=London,uk&appid={API key}
          baseUrl:'https://api.openweathermap.org',
          receiveDataWhenStatusError: true,
        )
    );
  }

  static Future<Response> getdata({required String url , required   Map<String ,dynamic> query}) async{
    return await dio.get(url ,queryParameters:query , );
  }
}