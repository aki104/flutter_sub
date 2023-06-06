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
mixin _$CoffeeUiModel {
  List<CoffeeModel> get data => throw _privateConstructorUsedError;
  ErrorStatus get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoffeeUiModelCopyWith<CoffeeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeUiModelCopyWith<$Res> {
  factory $CoffeeUiModelCopyWith(
          CoffeeUiModel value, $Res Function(CoffeeUiModel) then) =
      _$CoffeeUiModelCopyWithImpl<$Res, CoffeeUiModel>;
  @useResult
  $Res call({List<CoffeeModel> data, ErrorStatus error, bool isLoading});

  $ErrorStatusCopyWith<$Res> get error;
}

/// @nodoc
class _$CoffeeUiModelCopyWithImpl<$Res, $Val extends CoffeeUiModel>
    implements $CoffeeUiModelCopyWith<$Res> {
  _$CoffeeUiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoffeeModel>,
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
abstract class _$$_CoffeeUiModelCopyWith<$Res>
    implements $CoffeeUiModelCopyWith<$Res> {
  factory _$$_CoffeeUiModelCopyWith(
          _$_CoffeeUiModel value, $Res Function(_$_CoffeeUiModel) then) =
      __$$_CoffeeUiModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CoffeeModel> data, ErrorStatus error, bool isLoading});

  @override
  $ErrorStatusCopyWith<$Res> get error;
}

/// @nodoc
class __$$_CoffeeUiModelCopyWithImpl<$Res>
    extends _$CoffeeUiModelCopyWithImpl<$Res, _$_CoffeeUiModel>
    implements _$$_CoffeeUiModelCopyWith<$Res> {
  __$$_CoffeeUiModelCopyWithImpl(
      _$_CoffeeUiModel _value, $Res Function(_$_CoffeeUiModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_$_CoffeeUiModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CoffeeModel>,
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

class _$_CoffeeUiModel implements _CoffeeUiModel {
  const _$_CoffeeUiModel(
      {final List<CoffeeModel> data = const [],
      this.error = const ErrorStatus.noError(),
      this.isLoading = false})
      : _data = data;

  final List<CoffeeModel> _data;
  @override
  @JsonKey()
  List<CoffeeModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey()
  final ErrorStatus error;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CoffeeUiModel(data: $data, error: $error, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoffeeUiModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), error, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoffeeUiModelCopyWith<_$_CoffeeUiModel> get copyWith =>
      __$$_CoffeeUiModelCopyWithImpl<_$_CoffeeUiModel>(this, _$identity);
}

abstract class _CoffeeUiModel implements CoffeeUiModel {
  const factory _CoffeeUiModel(
      {final List<CoffeeModel> data,
      final ErrorStatus error,
      final bool isLoading}) = _$_CoffeeUiModel;

  @override
  List<CoffeeModel> get data;
  @override
  ErrorStatus get error;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeUiModelCopyWith<_$_CoffeeUiModel> get copyWith =>
      throw _privateConstructorUsedError;
}
