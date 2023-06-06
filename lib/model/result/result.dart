import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(DioError error) = Failure<T>;
}

Result<A> success(A value) {
  debugPrint('responseBody: ${jsonEncode(value)}');
  return  Result<A>.success(value);
}

typedef A<T>  = T;

