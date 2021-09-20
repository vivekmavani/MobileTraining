import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofittrial/network/model/respons.dart';

part 'api_service.g.dart';

@RestApi(baseUrl:'http://www.demoaws.picsy.in/api')
abstract class ApiService{

  factory ApiService(Dio dio, {String? baseUrl})
  {
          dio.options = BaseOptions(
          receiveTimeout: 30000,
          connectTimeout: 30000,
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer 950756f02948a64e992eaee4626a4818db59c4ed',
          }
      );
          dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return _ApiService(dio,baseUrl:baseUrl);

}

@GET('/yearbook/getyearbook/28a6883292e53e1df2792d7fcb867108')
Future<Album> fetchAlbum();

}