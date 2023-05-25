import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.init() = UserStateInit;
  const factory UserState.unauthenticated() = UserStateUnauthenticated;
  const factory UserState.authenticated({
    required int userId,
  }) = UserStateAuthenticated;
}