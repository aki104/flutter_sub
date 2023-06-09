import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppDio {
const AppDio._();

static Dio customDio() {
  final options = BaseOptions(
    baseUrl: dotenv.get('BASE_URL'),
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );
  final customDio = Dio(options);
  // customDio.interceptors.add(LogInterceptor());
  customDio.interceptors.add(InterceptorsWrapper(
    onResponse: (Response response, ResponseInterceptorHandler handler) {
    debugPrint('===========API LOG============');
    debugPrint('Uri:${response.realUri}');
    debugPrint('statusCode:${response.statusCode}');
    debugPrint('data:${response.data}');
    debugPrint('==============================');
    return handler.next(response);
  },
    onError: (DioError e, ErrorInterceptorHandler handler) {
      debugPrint('===========API Error LOG============');
      debugPrint('uri:${e.response?.realUri}');
      debugPrint('statusCode:${e.response?.statusCode}');
      debugPrint('dioErrorType:${e.type}');
      debugPrint('message:${e.message}');
      debugPrint('data:${e.response?.data}');
      debugPrint('error:${e.error.toString()}');
      debugPrint('==============================');
      return handler.next(e);
    },
  ));

return customDio;
}
}