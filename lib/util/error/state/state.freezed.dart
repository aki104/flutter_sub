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
mixin _$ErrorStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStatusCopyWith<$Res> {
  factory $ErrorStatusCopyWith(
          ErrorStatus value, $Res Function(ErrorStatus) then) =
      _$ErrorStatusCopyWithImpl<$Res, ErrorStatus>;
}

/// @nodoc
class _$ErrorStatusCopyWithImpl<$Res, $Val extends ErrorStatus>
    implements $ErrorStatusCopyWith<$Res> {
  _$ErrorStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoErrorCopyWith<$Res> {
  factory _$$NoErrorCopyWith(_$NoError value, $Res Function(_$NoError) then) =
      __$$NoErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoErrorCopyWithImpl<$Res>
    extends _$ErrorStatusCopyWithImpl<$Res, _$NoError>
    implements _$$NoErrorCopyWith<$Res> {
  __$$NoErrorCopyWithImpl(_$NoError _value, $Res Function(_$NoError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoError implements NoError {
  const _$NoError();

  @override
  String toString() {
    return 'ErrorStatus.noError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) {
    return noError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) {
    return noError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return noError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return noError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (noError != null) {
      return noError(this);
    }
    return orElse();
  }
}

abstract class NoError implements ErrorStatus {
  const factory NoError() = _$NoError;
}

/// @nodoc
abstract class _$$NetworkErrorCopyWith<$Res> {
  factory _$$NetworkErrorCopyWith(
          _$NetworkError value, $Res Function(_$NetworkError) then) =
      __$$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkErrorCopyWithImpl<$Res>
    extends _$ErrorStatusCopyWithImpl<$Res, _$NetworkError>
    implements _$$NetworkErrorCopyWith<$Res> {
  __$$NetworkErrorCopyWithImpl(
      _$NetworkError _value, $Res Function(_$NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NetworkError implements NetworkError {
  const _$NetworkError();

  @override
  String toString() {
    return 'ErrorStatus.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements ErrorStatus {
  const factory NetworkError() = _$NetworkError;
}

/// @nodoc
abstract class _$$NotFoundErrorCopyWith<$Res> {
  factory _$$NotFoundErrorCopyWith(
          _$NotFoundError value, $Res Function(_$NotFoundError) then) =
      __$$NotFoundErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundErrorCopyWithImpl<$Res>
    extends _$ErrorStatusCopyWithImpl<$Res, _$NotFoundError>
    implements _$$NotFoundErrorCopyWith<$Res> {
  __$$NotFoundErrorCopyWithImpl(
      _$NotFoundError _value, $Res Function(_$NotFoundError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundError implements NotFoundError {
  const _$NotFoundError();

  @override
  String toString() {
    return 'ErrorStatus.notFoundError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) {
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) {
    return notFoundError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return notFoundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class NotFoundError implements ErrorStatus {
  const factory NotFoundError() = _$NotFoundError;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$ErrorStatusCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ErrorStatus.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ErrorStatus {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$UpdateErrorCopyWith<$Res> {
  factory _$$UpdateErrorCopyWith(
          _$UpdateError value, $Res Function(_$UpdateError) then) =
      __$$UpdateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateErrorCopyWithImpl<$Res>
    extends _$ErrorStatusCopyWithImpl<$Res, _$UpdateError>
    implements _$$UpdateErrorCopyWith<$Res> {
  __$$UpdateErrorCopyWithImpl(
      _$UpdateError _value, $Res Function(_$UpdateError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateError implements UpdateError {
  const _$UpdateError();

  @override
  String toString() {
    return 'ErrorStatus.updateError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) {
    return updateError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) {
    return updateError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (updateError != null) {
      return updateError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return updateError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return updateError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (updateError != null) {
      return updateError(this);
    }
    return orElse();
  }
}

abstract class UpdateError implements ErrorStatus {
  const factory UpdateError() = _$UpdateError;
}

/// @nodoc
abstract class _$$UnknownErrorCopyWith<$Res> {
  factory _$$UnknownErrorCopyWith(
          _$UnknownError value, $Res Function(_$UnknownError) then) =
      __$$UnknownErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownErrorCopyWithImpl<$Res>
    extends _$ErrorStatusCopyWithImpl<$Res, _$UnknownError>
    implements _$$UnknownErrorCopyWith<$Res> {
  __$$UnknownErrorCopyWithImpl(
      _$UnknownError _value, $Res Function(_$UnknownError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownError implements UnknownError {
  const _$UnknownError();

  @override
  String toString() {
    return 'ErrorStatus.unknownError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noError,
    required TResult Function() networkError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
    required TResult Function() updateError,
    required TResult Function() unknownError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noError,
    TResult? Function()? networkError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
    TResult? Function()? updateError,
    TResult? Function()? unknownError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noError,
    TResult Function()? networkError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    TResult Function()? updateError,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoError value) noError,
    required TResult Function(NetworkError value) networkError,
    required TResult Function(NotFoundError value) notFoundError,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UpdateError value) updateError,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoError value)? noError,
    TResult? Function(NetworkError value)? networkError,
    TResult? Function(NotFoundError value)? notFoundError,
    TResult? Function(ServerError value)? serverError,
    TResult? Function(UpdateError value)? updateError,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoError value)? noError,
    TResult Function(NetworkError value)? networkError,
    TResult Function(NotFoundError value)? notFoundError,
    TResult Function(ServerError value)? serverError,
    TResult Function(UpdateError value)? updateError,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements ErrorStatus {
  const factory UnknownError() = _$UnknownError;
}
