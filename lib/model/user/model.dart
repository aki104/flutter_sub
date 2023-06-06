import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/remort/response/user/response.dart';

part 'model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    @Default('') String name,
    @Default('') String birthday,
    @Default('') String mail,
    @Default(0) int age,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'post_code') @Default('') String postCode,
    @JsonKey(name: 'address') @Default('') String address,
  }) = _UserModel;

  factory UserModel.fromUserModel({
    required UserDataRes data
  }){
    return UserModel(
        id: data.id,
        name: data.name,
      birthday: data.birthday,
      mail: data.mail,
      age: data.age,
      phoneNumber: data.phoneNumber,
      postCode: data.postCode,
      address: data.address,

    );
  }

}