part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class HomeEventStarted extends HomeEvent {
  const HomeEventStarted();
}

class HomeEventSearch extends HomeEvent {
  final String query;
  const HomeEventSearch(this.query);
}
