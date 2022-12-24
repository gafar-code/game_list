part of 'detail_bloc.dart';

abstract class DetailState {
  const DetailState();
}

class DetailInitial extends DetailState {
  const DetailInitial();
}

class DetailLoading extends DetailState {
  const DetailLoading();
}

class DetailLoaded extends DetailState {
  final Game game;
  final List<ScreenShoot> screenShoot;
  const DetailLoaded({required this.game, required this.screenShoot});
}

class DetailError extends DetailState {
  final String errorMsg;
  const DetailError({required this.errorMsg});
}
