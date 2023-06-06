import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/coffee/model.dart';
import '../../../util/error/state/state.dart';

part 'state.freezed.dart';

@freezed
class CoffeeUiModel with _$CoffeeUiModel {
  const factory CoffeeUiModel({
    @Default([]) List<CoffeeModel> data,
    @Default(ErrorStatus.noError()) ErrorStatus error,
    @Default(false) bool isLoading,
  }) = _CoffeeUiModel;
}
