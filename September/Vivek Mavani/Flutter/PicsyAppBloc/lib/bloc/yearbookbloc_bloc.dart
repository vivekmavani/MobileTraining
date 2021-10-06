import 'dart:async';
import 'package:taskretofitpicsy/cubi.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:taskretofitpicsy/network/apiservice/api_service.dart';
import 'package:dio/dio.dart' as dio;
part 'yearbookbloc_event.dart';
part 'yearbookbloc_state.dart';

class YearbookblocBloc extends Bloc<YearbookblocEvent, YearbookblocState> {
  YearbookblocBloc() : super(YearbookblocInitial());

  @override
  Stream<YearbookblocState> mapEventToState(
      YearbookblocEvent event,
  ) async* {
    if(event is YearbookLoadingEvent)
      {
        print('YearbookLoadingEvent');
        fetchyearbook();
      }else
        {
          print('else bloc');
        }
  }
  fetchyearbook(){
    ApiService(dio.Dio(), 'http://www.demoaws.picsy.in/api').fetchAlbum().then((bookResponses) {
      emit(YearbookLoadingbloc(bookResponses : bookResponses));
    }
    );
  }
}

