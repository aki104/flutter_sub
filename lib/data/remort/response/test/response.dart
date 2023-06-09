import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

///APIから取得するユーザーデータ
@JsonSerializable()
class TestRes {
  String test;
  TestRes({
    required this.test,
  });

  factory TestRes.fromJson(Map<String, dynamic> json) =>
      _$TestResFromJson(json);

  Map<String, dynamic> toJson() => _$TestResToJson(this);
}