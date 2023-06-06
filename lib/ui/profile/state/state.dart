import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mbo/model/user/model.dart';

import '../../../util/error/state/state.dart';

part 'state.freezed.dart';

@freezed
class ProfileUiModel with _$ProfileUiModel {
  const factory ProfileUiModel({
    @Default(UserModel(id: '0')) UserModel userData,
    @Default(ErrorStatus.noError()) ErrorStatus error,
    @Default(false) bool isLoading,

  }) = _ProfileUiModel;

}