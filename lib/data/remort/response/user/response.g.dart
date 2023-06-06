// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataRes _$UserDataResFromJson(Map<String, dynamic> json) => UserDataRes(
      id: json['id'] as String,
      name: json['name'] as String,
      birthday: json['birthday'] as String,
      mail: json['mail'] as String,
      age: json['age'] as int,
      phoneNumber: json['phone_number'] as String,
      postCode: json['post_code'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$UserDataResToJson(UserDataRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday,
      'mail': instance.mail,
      'age': instance.age,
      'phone_number': instance.phoneNumber,
      'post_code': instance.postCode,
      'address': instance.address,
    };
