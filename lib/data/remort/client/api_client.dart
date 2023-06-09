import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';

import '../dio/app_dio.dart';
import '../response/coffee/response.dart';

part 'api_client.g.dart';

final apiClientProvider = Provider<ApiClient>((ref){
  final dio = AppDio.customDio();
  final client = ApiClient(dio);
  return client;
});

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;


  @GET("/coffee/hot")
  Future<List<CoffeeDataRes>> fetchHotCoffee();

  @GET("/coffee/iced")
  Future<List<CoffeeDataRes>> fetchIceCoffee();


  @POST('/posts')
  @MultiPart()
  Future<dynamic> createPost(
      @Part() String text,
      @Part() File image
      );
}