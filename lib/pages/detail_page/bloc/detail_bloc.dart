import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/models/game.dart';
import 'package:game/models/screen_shoot.dart';
import 'package:game/repository/game.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc() : super(const DetailInitial()) {
    on<DetailEventStarted>(_started);
  }
  _started(DetailEventStarted event, emit) async {
    emit(const DetailLoading());

    final Game? game = await GameRepository.getGameDetail(gameId: event.gameId);
    final List<ScreenShoot> screenShoot = await GameRepository.getScreenShots(gameId: event.gameId.toString());
    final bool hasData = game != null && screenShoot.isNotEmpty;

    if (hasData) {
      emit(DetailLoaded(game: game, screenShoot: screenShoot));
    } else {
      emit(const DetailError(errorMsg: ""));
    }
  }
}
