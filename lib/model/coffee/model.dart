import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remort/response/coffee/response.dart';

part 'model.freezed.dart';

@freezed
class CoffeeModel with _$CoffeeModel {
  const factory CoffeeModel({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<String> ingredients,
    @Default('') String image,
    @Default(CoffeeType.normal) CoffeeType type
  }) = _CoffeeModel;

  factory CoffeeModel.fromCoffeeModel({
    required CoffeeDataRes data,
    required CoffeeType type
  }){
    return CoffeeModel(
      id: data.id,
      title: data.title,
      description: data.description,
      ingredients: data.ingredients,
      image: data.image,
      type: type
    );
  }

}

enum CoffeeType {
  hot,
  ice,
  normal
}