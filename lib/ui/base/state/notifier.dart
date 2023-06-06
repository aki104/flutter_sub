import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/base/state/state.dart';


final bottomBaseProvider =
AutoDisposeStateNotifierProvider<HomeNavigatorNotifier, BottomBaseState>((ref) {
  return HomeNavigatorNotifier();
});

class HomeNavigatorNotifier extends StateNotifier<BottomBaseState> {
  HomeNavigatorNotifier() : super(const BottomBaseState());

  void changeTab(int index) {
    state = state.copyWith(
        pageType: BottomPageType.values[index]
    );
  }
}
