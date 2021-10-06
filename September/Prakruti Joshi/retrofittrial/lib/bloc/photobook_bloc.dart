import 'dart:async';
import 'package:retrofittrial/network/apiservice/api_service.dart';
import 'package:retrofittrial/network/model/respons.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart' as dio;

part 'photobook_event.dart';
part 'photobook_state.dart';

class PhotobookBloc extends Bloc<PhotobookEvent, PhotobookState> {
  PhotobookBloc() : super(PhotobookInitial()) ;

  @override
  Stream<PhotobookState> mapEventToState(
      PhotobookEvent event,
      ) async* {
    if(event is PhotobookLoading)
    {
      print('YearbookLoadingEvent');
      fetchphotobook();
    }else
    {
      print('else bloc');
    }
  }
  void fetchphotobook() {
    ApiService(dio.Dio(), baseUrl: 'http://www.demoaws.picsy.in/api').fetchAlbum().then((album) {
      emit(PhotobookLoading(album : album));
    }
    );
  }
}
