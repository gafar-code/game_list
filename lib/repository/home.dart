import 'dart:developer';

import 'package:gafar_game_list/utils/dio.dart';
import 'package:gafar_game_list/utils/helpers.dart';

import '../models/game.dart';

class HomeRepository {
  static Future<List<Game>> getDataGame({required int page, String? query}) async {
    final params = {
      'page': page,
      'search': query,
    }..removeWhere((key, value) => Helper.isEmpty(value));
    List<Game> result = [];

    try {
      final response = await DioHelper.get(url: 'games', data: params);
      result = response.results?.map((e) => Game.fromJson(e)).toList() ?? [];
    } catch (e) {
      log(e.toString());
    }

    return result;
  }
}
