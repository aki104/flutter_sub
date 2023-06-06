import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/profile/state/state.dart';

import '../../../util/error/state/state.dart';


final profileUiModelStateProvider =
AutoDisposeStateNotifierProvider<ProfileUiModelStateNotifier, ProfileUiModel>((ref) {
  return ProfileUiModelStateNotifier();
});

class ProfileUiModelStateNotifier extends StateNotifier<ProfileUiModel> {
  ProfileUiModelStateNotifier() : super(const ProfileUiModel());


  ///ロード成功時
  void onLoadSuccess() {
    state = state.copyWith(isLoading: false);
  }

  ///データ読み込み時
  void onDataLoading() {
    state = state.copyWith(isLoading: true);
  }

  ///エラー時
  void onViewError(ErrorStatus error) {
    state = state.copyWith(isLoading: false, error: error);
  }

}
