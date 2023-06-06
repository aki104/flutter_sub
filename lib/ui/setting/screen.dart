import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../component/widget/header/default_app_bar.dart';
import '../../component/widget/layout/base_layout.dart';
import '../../provider/life_cycle/life_cycle_provider.dart';
import '../../provider/user_state/user_state_provider.dart';
import '../../util/navigator/page_navigator.dart';
import '../../util/show_method/dialog.dart';
import '../../util/show_method/snack_bar.dart';
import '../splash/screen.dart';


class SettingScreen extends ConsumerWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    ref.listen<AppLifecycleState>(
      appLifecycleProvider,
          (previous, next){
        if (next == AppLifecycleState.resumed) {
          print('戻ってきたよ');
        }
      },
    );
    return BaseLayout(
      appBar: DefaultAppBar(
        headerTitle: '設定',
        isLeading: false,
        onMenuPress: () {
          scaffoldKey.currentState?.openEndDrawer();
        },
      ),
      isEndDrawer: true,
      scaffoldKey: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  AppDialog.showDefaultDialog(
                      context: context,
                      title: 'ログアウトしますか？',
                      exeTitle: 'ログアウト',
                      onTap: () async {
                        ref.read(userStateProvider.notifier).logout();
                        AppSnackBar.show('ログアウトしました。');
                        PageNavigator.removeUtil(
                            widget: const SplashScreen(), context: context);
                      });
                },
                child: const Text('ログアウト'))
          ],
        ),
      ),
    );
  }
}
