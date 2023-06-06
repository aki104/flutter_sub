import 'package:freezed_annotation/freezed_annotation.dart';

part 'response.g.dart';

///APIから取得するユーザーデータ
@JsonSerializable()
class UserDataRes {
  String id;
  String name;
  String birthday;
  String mail;
  int age;
  @JsonKey(name: 'phone_number') String phoneNumber;
  @JsonKey(name: 'post_code') String postCode;
  @JsonKey(name: 'address') String address;

  UserDataRes({
    required this.id,
    required this.name,
    required this.birthday,
    required this.mail,
    required this.age,
    required this.phoneNumber,
    required this.postCode,
    required this.address
  });

  factory UserDataRes.fromJson(Map<String, dynamic> json) =>
      _$UserDataResFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataResToJson(this);
}