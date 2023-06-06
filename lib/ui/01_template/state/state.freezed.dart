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
mixin _$XxxxUiModel {
  ErrorStatus get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $XxxxUiModelCopyWith<XxxxUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $XxxxUiModelCopyWith<$Res> {
  factory $XxxxUiModelCopyWith(
          XxxxUiModel value, $Res Function(XxxxUiModel) then) =
      _$XxxxUiModelCopyWithImpl<$Res, XxxxUiModel>;
  @useResult
  $Res call({ErrorStatus error, bool isLoading});

  $ErrorStatusCopyWith<$Res> get error;
}

/// @nodoc
class _$XxxxUiModelCopyWithImpl<$Res, $Val extends XxxxUiModel>
    implements $XxxxUiModelCopyWith<$Res> {
  _$XxxxUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
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
  $ErrorStatusCopyWith<$Res> get error {
    return $ErrorStatusCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_XxxxUiModelCopyWith<$Res>
    implements $XxxxUiModelCopyWith<$Res> {
  factory _$$_XxxxUiModelCopyWith(
          _$_XxxxUiModel value, $Res Function(_$_XxxxUiModel) then) =
      __$$_XxxxUiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ErrorStatus error, bool isLoading});

  @override
  $ErrorStatusCopyWith<$Res> get error;
}

/// @nodoc
class __$$_XxxxUiModelCopyWithImpl<$Res>
    extends _$XxxxUiModelCopyWithImpl<$Res, _$_XxxxUiModel>
    implements _$$_XxxxUiModelCopyWith<$Res> {
  __$$_XxxxUiModelCopyWithImpl(
      _$_XxxxUiModel _value, $Res Function(_$_XxxxUiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_$_XxxxUiModel(
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

class _$_XxxxUiModel implements _XxxxUiModel {
  const _$_XxxxUiModel(
      {this.error = const ErrorStatus.noError(), this.isLoading = false});

  @override
  @JsonKey()
  final ErrorStatus error;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'XxxxUiModel(error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_XxxxUiModel &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_XxxxUiModelCopyWith<_$_XxxxUiModel> get copyWith =>
      __$$_XxxxUiModelCopyWithImpl<_$_XxxxUiModel>(this, _$identity);
}

abstract class _XxxxUiModel implements XxxxUiModel {
  const factory _XxxxUiModel({final ErrorStatus error, final bool isLoading}) =
      _$_XxxxUiModel;

  @override
  ErrorStatus get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_XxxxUiModelCopyWith<_$_XxxxUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
