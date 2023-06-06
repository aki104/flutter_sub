import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

///APIから取得するユーザーデータ
@JsonSerializable()
class CoffeeDataRes {
  int id;
  String title;
  String description;
  List<String> ingredients;
  String image;

  CoffeeDataRes({
    required this.id,
    required this.title,
    required this.description,
    required this.ingredients,
    required this.image,
  });

  factory CoffeeDataRes.fromJson(Map<String, dynamic> json) =>
      _$CoffeeDataResFromJson(json);

  Map<String, dynamic> toJson() => _$CoffeeDataResToJson(this);
}