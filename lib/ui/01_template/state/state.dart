import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/error/state/state.dart';

part 'state.freezed.dart';

@freezed
class XxxxUiModel with _$XxxxUiModel {
  const factory XxxxUiModel({


  @Default(ErrorStatus.noError()) ErrorStatus error,
  @Default(false) bool isLoading,

}) = _XxxxUiModel;

}