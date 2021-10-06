part of 'yearbookbloc_bloc.dart';

@immutable
abstract class YearbookblocEvent {}
class YearbookLoadingEvent extends YearbookblocEvent{

}

/*
class YearbookLoading extends YearbookblocEvent{
  final BookResponses bookResponses;
  YearbookLoading({required this.bookResponses});
}*/
