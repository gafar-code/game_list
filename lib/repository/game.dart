import 'dart:developer';

import 'package:game/models/screen_shoot.dart';
import 'package:game/utils/dio.dart';
import 'package:game/utils/helpers.dart';

import '../models/game.dart';

class GameRepository {
  static Future<List<Game>> getDataGame({required int page, String? query}) async {
    final params = {
      'page': page,
      'search': query,
    }..removeWhere((key, value) => Helper.isEmpty(value));
    List<Game> result = [];

    try {
      final response = await DioHelper.get(url: 'games', data: params);
      final List gameResults = response?.data["results"];
      for (var element in gameResults) {
        if (element != null) {
          result.add(Game.fromJson(element));
        }
      }
    } catch (e, s) {
      log(e.toString() + s.toString());
    }

    return result;
  }

  static Future<Game?> getGameDetail({required int gameId}) async {
    Game? result;

    try {
      final response = await DioHelper.get(url: 'games/$gameId');
      result = Game.fromJson(response?.data);
    } catch (e, s) {
      log(e.toString() + s.toString());
    }

    return result;
  }

  static Future<List<ScreenShoot>> getScreenShots({required String gameId}) async {

    List<ScreenShoot> result = [];

    try {
      final response = await DioHelper.get(url: 'games/$gameId/screenshots');
      final List screenShotsResults = response?.data["results"];
      for (var element in screenShotsResults) {
        if (element != null) {
          result.add(ScreenShoot.fromJson(element));
        }
      }
    } catch (e, s) {
      log(e.toString() + s.toString());
    }

    return result;
  }
}
