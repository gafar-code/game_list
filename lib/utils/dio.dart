import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:game/utils/const.dart';

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

  static Future<Response?> get({required String url, Map<String, dynamic>? data}) async {
    Response? result;

    try {
      if (!url.startsWith('/')) url = '/$url';
      result = await _dio.get(url, queryParameters: data);
    } on DioError catch (e, s) {
      log(e.toString() + s.toString());
    }

    return result;
  }
}
