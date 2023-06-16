import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppDio {
const AppDio._();

static Dio customDio() {
  final options = BaseOptions(
    baseUrl: dotenv.get('BASE_URL'),
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
  );
  final customDio = Dio(options);
  // customDio.interceptors.add(LogInterceptor());
  customDio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler){
      debugPrint('===========Request LOG============');
      debugPrint('Uri:${options.uri}');
      debugPrint('queryParameters:${options.queryParameters}');
      return handler.next(options);
    },
    onResponse: (Response response, ResponseInterceptorHandler handler) {
    debugPrint('===========Response LOG============');
    debugPrint('statusCode:${response.statusCode}');
    debugPrint('data:${response.data}');
    return handler.next(response);
  },
    onError: (DioError e, ErrorInterceptorHandler handler) {
      debugPrint('===========Error LOG============');
      debugPrint('statusCode:${e.response?.statusCode}');
      debugPrint('dioErrorType:${e.type}');
      debugPrint('message:${e.message}');
      debugPrint('data:${e.response?.data}');
      return handler.next(e);
    },
  ));

return customDio;
}
}