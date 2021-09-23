import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'book_model.dart';

part 'data_service.g.dart';

@RestApi(baseUrl: "http://www.demoaws.picsy.in/api")
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) {
    dio.interceptors.add(LogInterceptor(responseBody: false,requestBody: false));
    dio.options = BaseOptions(
      receiveTimeout: 30000,
      connectTimeout: 30000,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 407a1f598314c214761757fc6cf6606af4dc50cf',
      },
    );
    return _RestClient(dio, baseUrl: baseUrl);
  }

  @GET('/yearbook/getyearbook/28a6883292e53e1df2792d7fcb867108')
  Future<User> getTasks();
}