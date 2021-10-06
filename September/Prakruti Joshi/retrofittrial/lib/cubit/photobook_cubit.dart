import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart' as dio;
import 'package:retrofittrial/network/apiservice/api_service.dart';
import 'package:retrofittrial/network/model/respons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'photobook_state.dart';

class PhotobookCubit extends Cubit<PhotobookState> {
  PhotobookCubit() : super(PhotobookInitial());


void fetchphotobook() {
  ApiService(dio.Dio(), baseUrl: 'http://www.demoaws.picsy.in/api').fetchAlbum().then((album) {
    emit(PhotobookLoading(album : album));
    }
   );
  }
}
