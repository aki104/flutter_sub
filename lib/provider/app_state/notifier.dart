import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/provider/app_state/state.dart';

import '../../component/module/key/navigation_key.dart';
import '../../util/show_method/dialog.dart';

///アプリのステータスによってダイアログを表示するプロバイダー
final appStateDialogProvider = Provider((ref) {
  final appState = ref.watch(appStateProvider);

  if(appState is Maintenance) {
    AppDialog.showAppStateDialog(
        context: NavigationKey.navigationKey.currentContext!,
        title: 'メンテンスモード',
        appState: appState,
        onTap: (){
          ref.read(appStateProvider.notifier).normalMode();
        },
    );
  } else if(appState is ForcedUpdate) {
    AppDialog.showAppStateDialog(
        context: NavigationKey.navigationKey.currentContext!,
        title: 'アプリをアップデートしてください。',
        appState: appState,
        onTap: (){
          ref.read(appStateProvider.notifier).normalMode();
        });
  }
});


///アプリのステータスを管理するプロバイダー
final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  return AppStateNotifier();
});

class AppStateNotifier extends StateNotifier<AppState>{
  AppStateNotifier():super(const AppState.normal());


  void normalMode() {
    state = const AppState.normal();
  }

  void maintenanceMode() {
    state = const AppState.maintenance();
  }

  void forcedUpdateMode() {
    state = const AppState.forcedUpdate();
  }
}