import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:taskretofitpicsy/network/model/responses.dart';

part 'api_service.g.dart';
@RestApi(baseUrl: 'http://www.demoaws.picsy.in/api/yearbook/getyearbook')
abstract class ApiService{

  factory ApiService(Dio dio,{String? baseUrl})
  {
    dio.options = BaseOptions(
        receiveTimeout: 30000,
        connectTimeout: 30000,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 3cd1dab40d3b2ebc7405bfbfc54718a82644029c',
      }

    );
    return _ApiService(dio,baseUrl: baseUrl);
  }

  @GET('/28a6883292e53e1df2792d7fcb867108')
  Future<Responses> fetchAlbum();
}