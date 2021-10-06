part of 'yearbookbloc_bloc.dart';



@immutable
abstract class YearbookblocState {}

class YearbookblocInitial extends YearbookblocState {}
class YearbookLoadingbloc extends YearbookblocState{
  final BookResponses bookResponses;
  YearbookLoadingbloc({required this.bookResponses});
}
