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
mixin _$LoginState {
  TextEditingController? get mailController =>
      throw _privateConstructorUsedError;
  TextEditingController? get passwordController =>
      throw _privateConstructorUsedError;
  String get mailErrorMsg => throw _privateConstructorUsedError;
  String get passwordErrorMsg => throw _privateConstructorUsedError;
  bool get isValidation => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {TextEditingController? mailController,
      TextEditingController? passwordController,
      String mailErrorMsg,
      String passwordErrorMsg,
      bool isValidation,
      bool isLoading});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mailController = freezed,
    Object? passwordController = freezed,
    Object? mailErrorMsg = null,
    Object? passwordErrorMsg = null,
    Object? isValidation = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      mailController: freezed == mailController
          ? _value.mailController
          : mailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      passwordController: freezed == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      mailErrorMsg: null == mailErrorMsg
          ? _value.mailErrorMsg
          : mailErrorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      passwordErrorMsg: null == passwordErrorMsg
          ? _value.passwordErrorMsg
          : passwordErrorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      isValidation: null == isValidation
          ? _value.isValidation
          : isValidation // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController? mailController,
      TextEditingController? passwordController,
      String mailErrorMsg,
      String passwordErrorMsg,
      bool isValidation,
      bool isLoading});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mailController = freezed,
    Object? passwordController = freezed,
    Object? mailErrorMsg = null,
    Object? passwordErrorMsg = null,
    Object? isValidation = null,
    Object? isLoading = null,
  }) {
    return _then(_$_LoginState(
      mailController: freezed == mailController
          ? _value.mailController
          : mailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      passwordController: freezed == passwordController
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController?,
      mailErrorMsg: null == mailErrorMsg
          ? _value.mailErrorMsg
          : mailErrorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      passwordErrorMsg: null == passwordErrorMsg
          ? _value.passwordErrorMsg
          : passwordErrorMsg // ignore: cast_nullable_to_non_nullable
              as String,
      isValidation: null == isValidation
          ? _value.isValidation
          : isValidation // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.mailController = null,
      this.passwordController = null,
      this.mailErrorMsg = '',
      this.passwordErrorMsg = '',
      this.isValidation = false,
      this.isLoading = false});

  @override
  @JsonKey()
  final TextEditingController? mailController;
  @override
  @JsonKey()
  final TextEditingController? passwordController;
  @override
  @JsonKey()
  final String mailErrorMsg;
  @override
  @JsonKey()
  final String passwordErrorMsg;
  @override
  @JsonKey()
  final bool isValidation;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'LoginState(mailController: $mailController, passwordController: $passwordController, mailErrorMsg: $mailErrorMsg, passwordErrorMsg: $passwordErrorMsg, isValidation: $isValidation, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.mailController, mailController) ||
                other.mailController == mailController) &&
            (identical(other.passwordController, passwordController) ||
                other.passwordController == passwordController) &&
            (identical(other.mailErrorMsg, mailErrorMsg) ||
                other.mailErrorMsg == mailErrorMsg) &&
            (identical(other.passwordErrorMsg, passwordErrorMsg) ||
                other.passwordErrorMsg == passwordErrorMsg) &&
            (identical(other.isValidation, isValidation) ||
                other.isValidation == isValidation) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      mailController,
      passwordController,
      mailErrorMsg,
      passwordErrorMsg,
      isValidation,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {final TextEditingController? mailController,
      final TextEditingController? passwordController,
      final String mailErrorMsg,
      final String passwordErrorMsg,
      final bool isValidation,
      final bool isLoading}) = _$_LoginState;

  @override
  TextEditingController? get mailController;
  @override
  TextEditingController? get passwordController;
  @override
  String get mailErrorMsg;
  @override
  String get passwordErrorMsg;
  @override
  bool get isValidation;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
