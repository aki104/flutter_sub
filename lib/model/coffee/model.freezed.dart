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
  int get postId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

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
  $Res call({int id, int postId, String name, String email, String body});
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
    Object? postId = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({int id, int postId, String name, String email, String body});
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
    Object? postId = null,
    Object? name = null,
    Object? email = null,
    Object? body = null,
  }) {
    return _then(_$_CoffeeModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CoffeeModel implements _CoffeeModel {
  const _$_CoffeeModel(
      {this.id = 0,
      this.postId = 0,
      this.name = '',
      this.email = '',
      this.body = ''});

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int postId;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String body;

  @override
  String toString() {
    return 'CoffeeModel(id: $id, postId: $postId, name: $name, email: $email, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, postId, name, email, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeModelCopyWith<_$_CoffeeModel> get copyWith =>
      __$$_CoffeeModelCopyWithImpl<_$_CoffeeModel>(this, _$identity);
}

abstract class _CoffeeModel implements CoffeeModel {
  const factory _CoffeeModel(
      {final int id,
      final int postId,
      final String name,
      final String email,
      final String body}) = _$_CoffeeModel;

  @override
  int get id;
  @override
  int get postId;
  @override
  String get name;
  @override
  String get email;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeModelCopyWith<_$_CoffeeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
