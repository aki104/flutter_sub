import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';

import '../dio/app_dio.dart';
import '../response/test/response.dart';

part 'api_test_client.g.dart';

final apiTestClientProvider = Provider<ApiTestClient>((ref){
  final dio = AppDio.customDio();
  dio.options.baseUrl = 'https://httpbin.org';
  dio.options.connectTimeout = const Duration(seconds: 15);
  dio.options.receiveTimeout = const Duration(seconds: 15);
  final client = ApiTestClient(dio);
  return client;
});

@RestApi()
abstract class ApiTestClient {
  factory ApiTestClient(Dio dio) = _ApiTestClient;

  @GET("/status/{codes}")
  Future<TestRes> testErrorCode(
      @Path() String codes,
      );

}

enum StatusCode {
  code404('404'),
  code504('504'),
  code508('508');
  const StatusCode(this.code);
  final String code;
}
