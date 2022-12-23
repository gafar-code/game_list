import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gafar_game_list/models/game.dart';
import 'package:gafar_game_list/repository/home.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<HomeEventStarted>(_started);
    on<HomeEventSearch>(_search);
  }

  final int firstPageKey = 1;
  final pagingController = PagingController<int, Game>(firstPageKey: 1);
  final searchController = TextEditingController();

  Future<void> _started(HomeEventStarted event, emit) async {
    emit(const HomeLoading());

    final data = await HomeRepository.getDataGame(page: 1);
    searchController.clear();
    pagingController.value = PagingState(nextPageKey: firstPageKey + 1, itemList: data);

    emit(HomeLoaded(data: data));
  }

  Future<void> _search(HomeEventSearch event, emit) async {
    emit(const HomeLoading());

    final String query = event.query;
    final data = await HomeRepository.getDataGame(page: firstPageKey, query: query);
    pagingController.value = PagingState(nextPageKey: firstPageKey + 1, itemList: data);

    emit(HomeLoaded(data: data, query: query));
  }

  Future<void> fetchData({int? page, required}) async {
    int currentPage = page ?? firstPageKey;
    String? query = searchController.text;
    final data = await HomeRepository.getDataGame(page: currentPage, query: query);
    pagingController.appendPage(data, currentPage += 1);
  }
}
