import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gafar_game_list/models/response_data.dart';
import 'package:gafar_game_list/utils/const.dart';

class DioHelper {
  static Dio _dio = Dio();

  static void init() {
    final option = BaseOptions(
      baseUrl: baseUrl,
      contentType: "application/json",
      queryParameters: {'key': apiKey, 'page_size': 5},
      connectTimeout: 30000,
      receiveTimeout: 30000,
    );

    final interceptors = InterceptorsWrapper(
      onRequest: (options, handler) => handler.next(options),
      onError: (DioError e, handler) async => handler.next(e),
    );

    final dio = Dio(option);

    dio.interceptors.add(interceptors);

    _dio = dio;
  }

  static Future<ResponseData> post({required String url, dynamic data}) async {
    ResponseData result = const ResponseData();

    try {
      if (!url.startsWith('/')) url = '/$url';
      Response response = await _dio.post(url, data: data);
      result = ResponseData.fromJson(response.data);
    } on DioError catch (e) {
      log(e.toString());
    }

    return result;
  }

  static Future<ResponseData> put({required String url, dynamic data}) async {
    ResponseData result = const ResponseData();

    try {
      if (!url.startsWith('/')) url = '/$url';
      Response response = await _dio.put(url, data: data);
      result = ResponseData.fromJson(response.data);
    } on DioError catch (e) {
      log(e.toString());
    }

    return result;
  }

  static Future<ResponseData> get({required String url, Map<String, dynamic>? data}) async {
    ResponseData result = const ResponseData();

    try {
      if (!url.startsWith('/')) url = '/$url';
      Response response = await _dio.get(url, queryParameters: data);
      result = ResponseData.fromJson(response.data);
    } on DioError catch (e) {
      log(e.toString());
    }

    return result;
  }
}

printJson(Map json) {
  var res = "";
  res += '{';
  json.forEach((key, value) {
    if (value is Map) {
      var v = "";
      value.forEach((key, value) {
        v += '"$key": $value';
      });
      res += '"$key": $v';
    }
    res += '"$key": $value';
  });
  res += '}';
  log(res);
}
