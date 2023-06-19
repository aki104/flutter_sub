import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remort/response/coffee/response.dart';

part 'model.freezed.dart';

@freezed
class CoffeeModel with _$CoffeeModel {
  const factory CoffeeModel({
    @Default(0) int id,
    @Default(0) int postId,
    @Default('') String name,
    @Default('') String email,
    @Default('') String body,

  }) = _CoffeeModel;

  factory CoffeeModel.fromCoffeeModel({
    required CoffeeDataRes data,
  }){
    return CoffeeModel(
        postId: data.postId,
      id: data.id,
        name: data.name,
        email: data.email,
        body: data.body,
    );
  }

}

enum CoffeeType {
  hot,
  ice,
  normal
}