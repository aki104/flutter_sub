import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

///APIから取得するユーザーデータ
@JsonSerializable()
class CoffeeDataRes {
  int postId;
  int id;
  String name;
  String email;
  String body;

  CoffeeDataRes({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CoffeeDataRes.fromJson(Map<String, dynamic> json) =>
      _$CoffeeDataResFromJson(json);

  Map<String, dynamic> toJson() => _$CoffeeDataResToJson(this);
}
