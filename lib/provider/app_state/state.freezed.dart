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
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() maintenance,
    required TResult Function() forcedUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? maintenance,
    TResult? Function()? forcedUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? maintenance,
    TResult Function()? forcedUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(Maintenance value) maintenance,
    required TResult Function(ForcedUpdate value) forcedUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(Maintenance value)? maintenance,
    TResult? Function(ForcedUpdate value)? forcedUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(Maintenance value)? maintenance,
    TResult Function(ForcedUpdate value)? forcedUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NormalCopyWith<$Res> {
  factory _$$NormalCopyWith(_$Normal value, $Res Function(_$Normal) then) =
      __$$NormalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NormalCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$Normal>
    implements _$$NormalCopyWith<$Res> {
  __$$NormalCopyWithImpl(_$Normal _value, $Res Function(_$Normal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Normal implements Normal {
  const _$Normal();

  @override
  String toString() {
    return 'AppState.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Normal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() maintenance,
    required TResult Function() forcedUpdate,
  }) {
    return normal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? maintenance,
    TResult? Function()? forcedUpdate,
  }) {
    return normal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? maintenance,
    TResult Function()? forcedUpdate,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(Maintenance value) maintenance,
    required TResult Function(ForcedUpdate value) forcedUpdate,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(Maintenance value)? maintenance,
    TResult? Function(ForcedUpdate value)? forcedUpdate,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(Maintenance value)? maintenance,
    TResult Function(ForcedUpdate value)? forcedUpdate,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }
}

abstract class Normal implements AppState {
  const factory Normal() = _$Normal;
}

/// @nodoc
abstract class _$$MaintenanceCopyWith<$Res> {
  factory _$$MaintenanceCopyWith(
          _$Maintenance value, $Res Function(_$Maintenance) then) =
      __$$MaintenanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaintenanceCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$Maintenance>
    implements _$$MaintenanceCopyWith<$Res> {
  __$$MaintenanceCopyWithImpl(
      _$Maintenance _value, $Res Function(_$Maintenance) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Maintenance implements Maintenance {
  const _$Maintenance();

  @override
  String toString() {
    return 'AppState.maintenance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Maintenance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() maintenance,
    required TResult Function() forcedUpdate,
  }) {
    return maintenance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? maintenance,
    TResult? Function()? forcedUpdate,
  }) {
    return maintenance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? maintenance,
    TResult Function()? forcedUpdate,
    required TResult orElse(),
  }) {
    if (maintenance != null) {
      return maintenance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(Maintenance value) maintenance,
    required TResult Function(ForcedUpdate value) forcedUpdate,
  }) {
    return maintenance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(Maintenance value)? maintenance,
    TResult? Function(ForcedUpdate value)? forcedUpdate,
  }) {
    return maintenance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(Maintenance value)? maintenance,
    TResult Function(ForcedUpdate value)? forcedUpdate,
    required TResult orElse(),
  }) {
    if (maintenance != null) {
      return maintenance(this);
    }
    return orElse();
  }
}

abstract class Maintenance implements AppState {
  const factory Maintenance() = _$Maintenance;
}

/// @nodoc
abstract class _$$ForcedUpdateCopyWith<$Res> {
  factory _$$ForcedUpdateCopyWith(
          _$ForcedUpdate value, $Res Function(_$ForcedUpdate) then) =
      __$$ForcedUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForcedUpdateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ForcedUpdate>
    implements _$$ForcedUpdateCopyWith<$Res> {
  __$$ForcedUpdateCopyWithImpl(
      _$ForcedUpdate _value, $Res Function(_$ForcedUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForcedUpdate implements ForcedUpdate {
  const _$ForcedUpdate();

  @override
  String toString() {
    return 'AppState.forcedUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForcedUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() maintenance,
    required TResult Function() forcedUpdate,
  }) {
    return forcedUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? maintenance,
    TResult? Function()? forcedUpdate,
  }) {
    return forcedUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? maintenance,
    TResult Function()? forcedUpdate,
    required TResult orElse(),
  }) {
    if (forcedUpdate != null) {
      return forcedUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Normal value) normal,
    required TResult Function(Maintenance value) maintenance,
    required TResult Function(ForcedUpdate value) forcedUpdate,
  }) {
    return forcedUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Normal value)? normal,
    TResult? Function(Maintenance value)? maintenance,
    TResult? Function(ForcedUpdate value)? forcedUpdate,
  }) {
    return forcedUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Normal value)? normal,
    TResult Function(Maintenance value)? maintenance,
    TResult Function(ForcedUpdate value)? forcedUpdate,
    required TResult orElse(),
  }) {
    if (forcedUpdate != null) {
      return forcedUpdate(this);
    }
    return orElse();
  }
}

abstract class ForcedUpdate implements AppState {
  const factory ForcedUpdate() = _$ForcedUpdate;
}
