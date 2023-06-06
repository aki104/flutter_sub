import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.normal() = Normal;
  const factory AppState.maintenance() = Maintenance;
  const factory AppState.forcedUpdate() = ForcedUpdate;

}

