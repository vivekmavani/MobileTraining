part of 'book_cubit.dart';

@immutable
abstract class BookState {}

class BookInitial extends BookState {}

class BookProgress extends BookState {
   final User bookResponse;

  BookProgress({required this.bookResponse});
}

class BookFailure extends BookState {
  final String reason;
  BookFailure(this.reason);
}


