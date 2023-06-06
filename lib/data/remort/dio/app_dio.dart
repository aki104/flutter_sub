import 'package:dio/dio.dart';
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
  customDio.interceptors.add(LogInterceptor());

return customDio;
}
}