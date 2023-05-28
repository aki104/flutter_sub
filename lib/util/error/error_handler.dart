import 'package:dio/dio.dart';

import 'state/state.dart';
import 'exeption.dart';


class ErrorHandler {

  /// throwするException
  Exception throwException(DioError error) {
    if (error.type == DioErrorType.connectionTimeout ||
        error.type == DioErrorType.receiveTimeout ||
        error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.unknown) {
      // 圏外などのネットワークエラー
      throw NetworkErrorException();
    } else if (error.type == DioErrorType.badResponse) {
      // メンテナンス中などのサーバエラー
      throw ServerErrorException();
    } else if(error.response?.statusCode == 504){
      // 何か特殊なステータスコードが帰ってくることを想定
      throw ServerErrorException();
    } else {
      //上記以外は想定していないためとりあえずExceptionを返す
      throw Exception();
    }
  }

  /// 例外をErrorStatusに変換
  ErrorStatus mapError(Exception e) {
    if (e is NetworkErrorException) {
      return const ErrorStatus.network();
    } else if (e is NotFoundException) {
      return const ErrorStatus.notFound();
    } else if (e is ServerErrorException) {
      return const ErrorStatus.server();
    } else {
      return const ErrorStatus.unknown();
    }
  }



}