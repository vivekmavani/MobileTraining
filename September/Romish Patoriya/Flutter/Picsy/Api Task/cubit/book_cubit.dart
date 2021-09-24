import 'package:api_task/Stream/book_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart' as dio;

import '../../Stream/data_service.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit() : super(BookInitial());

  void fetchbook(){
    RestClient(dio.Dio()).getTasks().then((value) =>
    emit(BookProgress(bookResponse: value)));
  }
}

