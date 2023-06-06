// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoffeeDataRes _$CoffeeDataResFromJson(Map<String, dynamic> json) =>
    CoffeeDataRes(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$CoffeeDataResToJson(CoffeeDataRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'ingredients': instance.ingredients,
      'image': instance.image,
    };
