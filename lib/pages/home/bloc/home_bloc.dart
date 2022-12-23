import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gafar_game_list/models/game.dart';
import 'package:gafar_game_list/repository/home.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<HomeEventStarted>(_started);
  }

  Future<void> _started(HomeEventStarted event, emit) async {
    emit(const HomeLoading());

    final data = await HomeRepository.getDataGame(1);
    
    emit(HomeLoaded(data: data));
  }
}
