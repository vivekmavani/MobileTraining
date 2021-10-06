part of 'photobook_cubit.dart';

@immutable
abstract class PhotobookState {}

class PhotobookInitial extends PhotobookState {}

class PhotobookLoading extends PhotobookState{
  final Album album;
  PhotobookLoading({required  this.album});
}