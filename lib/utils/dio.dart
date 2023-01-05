import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:game/utils/const.dart';
import 'package:intl/intl.dart';

class DioHelper {
  static Dio _dio = Dio();

  static String currentYear = DateFormat("yyyy-MM-dd").format(DateTime.now());
  static String lastYear = DateFormat("yyyy-MM-dd").format(DateTime.now().subtract(const Duration(days: 365)));
  static String defaultDateRange = "$lastYear,$currentYear";
  static String defaultOrder = "-released";
  static int defaultPageSize = 20;
  static int defaultPlatforms = 187;

  static Map<String, dynamic> defaultqueryParameters = {
    "page_size": defaultPageSize,
    "platforms": defaultPlatforms,
    "dates": defaultDateRange,
    "ordering": defaultOrder,
    "key": apiKey,
  };

  static void init() {
    final option = BaseOptions(
      baseUrl: baseUrl,
      contentType: "application/json",
      queryParameters: defaultqueryParameters,
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
