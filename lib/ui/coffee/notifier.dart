import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/coffee/state/state.dart';

import '../../../util/error/state/state.dart';


final coffeeUiModelStateProvider =
AutoDisposeStateNotifierProvider<CoffeeUiModelStateNotifier, CoffeeUiModel>((ref) {
  return CoffeeUiModelStateNotifier();
});

class CoffeeUiModelStateNotifier extends StateNotifier<CoffeeUiModel> {
  CoffeeUiModelStateNotifier() : super(const CoffeeUiModel());


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
