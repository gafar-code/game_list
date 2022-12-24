part of 'detail_bloc.dart';

abstract class DetailEvent {
  const DetailEvent();
}

class DetailEventStarted  extends DetailEvent{
  final int gameId;
  const DetailEventStarted({required this.gameId});
}
