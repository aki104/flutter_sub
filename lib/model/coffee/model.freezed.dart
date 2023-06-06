// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoffeeModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<String> get ingredients => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  CoffeeType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffeeModelCopyWith<CoffeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeModelCopyWith<$Res> {
  factory $CoffeeModelCopyWith(
          CoffeeModel value, $Res Function(CoffeeModel) then) =
      _$CoffeeModelCopyWithImpl<$Res, CoffeeModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      List<String> ingredients,
      String image,
      CoffeeType type});
}

/// @nodoc
class _$CoffeeModelCopyWithImpl<$Res, $Val extends CoffeeModel>
    implements $CoffeeModelCopyWith<$Res> {
  _$CoffeeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? ingredients = null,
    Object? image = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoffeeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoffeeModelCopyWith<$Res>
    implements $CoffeeModelCopyWith<$Res> {
  factory _$$_CoffeeModelCopyWith(
          _$_CoffeeModel value, $Res Function(_$_CoffeeModel) then) =
      __$$_CoffeeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      List<String> ingredients,
      String image,
      CoffeeType type});
}

/// @nodoc
class __$$_CoffeeModelCopyWithImpl<$Res>
    extends _$CoffeeModelCopyWithImpl<$Res, _$_CoffeeModel>
    implements _$$_CoffeeModelCopyWith<$Res> {
  __$$_CoffeeModelCopyWithImpl(
      _$_CoffeeModel _value, $Res Function(_$_CoffeeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? ingredients = null,
    Object? image = null,
    Object? type = null,
  }) {
    return _then(_$_CoffeeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CoffeeType,
    ));
  }
}

/// @nodoc

class _$_CoffeeModel implements _CoffeeModel {
  const _$_CoffeeModel(
      {this.id = 0,
      this.title = '',
      this.description = '',
      final List<String> ingredients = const [],
      this.image = '',
      this.type = CoffeeType.normal})
      : _ingredients = ingredients;

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  final List<String> _ingredients;
  @override
  @JsonKey()
  List<String> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final CoffeeType type;

  @override
  String toString() {
    return 'CoffeeModel(id: $id, title: $title, description: $description, ingredients: $ingredients, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      const DeepCollectionEquality().hash(_ingredients), image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeModelCopyWith<_$_CoffeeModel> get copyWith =>
      __$$_CoffeeModelCopyWithImpl<_$_CoffeeModel>(this, _$identity);
}

abstract class _CoffeeModel implements CoffeeModel {
  const factory _CoffeeModel(
      {final int id,
      final String title,
      final String description,
      final List<String> ingredients,
      final String image,
      final CoffeeType type}) = _$_CoffeeModel;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  List<String> get ingredients;
  @override
  String get image;
  @override
  CoffeeType get type;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeModelCopyWith<_$_CoffeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
