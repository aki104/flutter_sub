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
mixin _$BottomBaseState {
  BottomPageType get pageType => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomBaseStateCopyWith<BottomBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBaseStateCopyWith<$Res> {
  factory $BottomBaseStateCopyWith(
          BottomBaseState value, $Res Function(BottomBaseState) then) =
      _$BottomBaseStateCopyWithImpl<$Res, BottomBaseState>;
  @useResult
  $Res call({BottomPageType pageType, bool isLoading});
}

/// @nodoc
class _$BottomBaseStateCopyWithImpl<$Res, $Val extends BottomBaseState>
    implements $BottomBaseStateCopyWith<$Res> {
  _$BottomBaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageType = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as BottomPageType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BottomBaseStateCopyWith<$Res>
    implements $BottomBaseStateCopyWith<$Res> {
  factory _$$_BottomBaseStateCopyWith(
          _$_BottomBaseState value, $Res Function(_$_BottomBaseState) then) =
      __$$_BottomBaseStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BottomPageType pageType, bool isLoading});
}

/// @nodoc
class __$$_BottomBaseStateCopyWithImpl<$Res>
    extends _$BottomBaseStateCopyWithImpl<$Res, _$_BottomBaseState>
    implements _$$_BottomBaseStateCopyWith<$Res> {
  __$$_BottomBaseStateCopyWithImpl(
      _$_BottomBaseState _value, $Res Function(_$_BottomBaseState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageType = null,
    Object? isLoading = null,
  }) {
    return _then(_$_BottomBaseState(
      pageType: null == pageType
          ? _value.pageType
          : pageType // ignore: cast_nullable_to_non_nullable
              as BottomPageType,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BottomBaseState implements _BottomBaseState {
  const _$_BottomBaseState(
      {this.pageType = BottomPageType.home, this.isLoading = false});

  @override
  @JsonKey()
  final BottomPageType pageType;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'BottomBaseState(pageType: $pageType, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomBaseState &&
            (identical(other.pageType, pageType) ||
                other.pageType == pageType) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomBaseStateCopyWith<_$_BottomBaseState> get copyWith =>
      __$$_BottomBaseStateCopyWithImpl<_$_BottomBaseState>(this, _$identity);
}

abstract class _BottomBaseState implements BottomBaseState {
  const factory _BottomBaseState(
      {final BottomPageType pageType,
      final bool isLoading}) = _$_BottomBaseState;

  @override
  BottomPageType get pageType;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_BottomBaseStateCopyWith<_$_BottomBaseState> get copyWith =>
      throw _privateConstructorUsedError;
}
