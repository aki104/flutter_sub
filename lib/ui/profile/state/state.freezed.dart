// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileUiModel {
  UserModel get userData => throw _privateConstructorUsedError;
  ErrorStatus get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileUiModelCopyWith<ProfileUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileUiModelCopyWith<$Res> {
  factory $ProfileUiModelCopyWith(
          ProfileUiModel value, $Res Function(ProfileUiModel) then) =
      _$ProfileUiModelCopyWithImpl<$Res, ProfileUiModel>;
  @useResult
  $Res call({UserModel userData, ErrorStatus error, bool isLoading});

  $UserModelCopyWith<$Res> get userData;
  $ErrorStatusCopyWith<$Res> get error;
}

/// @nodoc
class _$ProfileUiModelCopyWithImpl<$Res, $Val extends ProfileUiModel>
    implements $ProfileUiModelCopyWith<$Res> {
  _$ProfileUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorStatus,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userData {
    return $UserModelCopyWith<$Res>(_value.userData, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorStatusCopyWith<$Res> get error {
    return $ErrorStatusCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileUiModelCopyWith<$Res>
    implements $ProfileUiModelCopyWith<$Res> {
  factory _$$_ProfileUiModelCopyWith(
          _$_ProfileUiModel value, $Res Function(_$_ProfileUiModel) then) =
      __$$_ProfileUiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel userData, ErrorStatus error, bool isLoading});

  @override
  $UserModelCopyWith<$Res> get userData;
  @override
  $ErrorStatusCopyWith<$Res> get error;
}

/// @nodoc
class __$$_ProfileUiModelCopyWithImpl<$Res>
    extends _$ProfileUiModelCopyWithImpl<$Res, _$_ProfileUiModel>
    implements _$$_ProfileUiModelCopyWith<$Res> {
  __$$_ProfileUiModelCopyWithImpl(
      _$_ProfileUiModel _value, $Res Function(_$_ProfileUiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userData = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ProfileUiModel(
      userData: null == userData
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorStatus,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileUiModel implements _ProfileUiModel {
  const _$_ProfileUiModel(
      {this.userData = const UserModel(id: '0'),
      this.error = const ErrorStatus.noError(),
      this.isLoading = false});

  @override
  @JsonKey()
  final UserModel userData;
  @override
  @JsonKey()
  final ErrorStatus error;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ProfileUiModel(userData: $userData, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileUiModel &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userData, error, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileUiModelCopyWith<_$_ProfileUiModel> get copyWith =>
      __$$_ProfileUiModelCopyWithImpl<_$_ProfileUiModel>(this, _$identity);
}

abstract class _ProfileUiModel implements ProfileUiModel {
  const factory _ProfileUiModel(
      {final UserModel userData,
      final ErrorStatus error,
      final bool isLoading}) = _$_ProfileUiModel;

  @override
  UserModel get userData;
  @override
  ErrorStatus get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileUiModelCopyWith<_$_ProfileUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
