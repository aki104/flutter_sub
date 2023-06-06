import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/01_template/state/state.dart';

import '../../../util/error/state/state.dart';


final xxxxUiModelStateProvider =
AutoDisposeStateNotifierProvider<XxxxUiModelStateNotifier, XxxxUiModel>((ref) {
  return XxxxUiModelStateNotifier();
});

class XxxxUiModelStateNotifier extends StateNotifier<XxxxUiModel> {
  XxxxUiModelStateNotifier() : super(const XxxxUiModel());


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
