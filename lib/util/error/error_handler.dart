import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../show_method/snack_bar.dart';
import 'state/state.dart';
import 'exeption.dart';


class ErrorHandler {

  /// throwするException
  Exception throwException(DioError error) {
    debugPrint('======error======');
    debugPrint('errorType:${error.type}');
    debugPrint('statusCode:${error.response?.statusCode}');
    debugPrint('================');
    if (error.type == DioErrorType.connectionTimeout ||
        error.type == DioErrorType.receiveTimeout ||
        error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.connectionError ||
        error.type == DioErrorType.badResponse
    ) {
      // 圏外などのネットワークエラー
      AppSnackBar.show(NetworkErrorException().msg);
      throw NetworkErrorException();
    } else if(error.type == DioErrorType.unknown){
      AppSnackBar.show(UnknownException().msg);
      throw UnknownException();
    } else if(error.response?.statusCode == 404){
      AppSnackBar.show(NotFoundException().msg);
      throw NotFoundException();
    } else if(error.response?.statusCode == 504){
      throw ServerErrorException();
    } else if(error.response?.statusCode == 508){
      // 何か特殊なステータスコードが帰ってくることを想定
      throw UpdateErrorException();
    } else {
      //上記以外は想定していないためとりあえずExceptionを返す
      throw Exception();
    }
  }

  /// 例外をErrorStatusに変換
  ErrorStatus mapError(Exception e) {
    if (e is NetworkErrorException) {
      return const ErrorStatus.networkError();
    } else if (e is NotFoundException) {
      return const ErrorStatus.notFoundError();
    } else if (e is ServerErrorException) {
      return const ErrorStatus.serverError();
    } else if (e is UnknownException) {
      return const ErrorStatus.unknownError();
    } else if (e is UpdateErrorException) {
      return const ErrorStatus.updateError();
    } else {
      return const ErrorStatus.unknownError();
    }
  }
}