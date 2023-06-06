import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/util/navigator/page_navigator.dart';

import '../../component/widget/space.dart';
import '../../provider/app_state/notifier.dart';
import '../coffee/screen.dart';
import '../profile/screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appNotifier = ref.read(appStateProvider.notifier);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  PageNavigator.push(context: context, widget: const ProfileScreen());
                },
                child: const Text('プロフィール画面へ')),
            TextButton(
                onPressed: () {
                PageNavigator.push(context: context, widget: const CoffeeListScreen());
                },
                child: const Text('コーヒーデータ取得')),

            TextButton(
                onPressed: () {

                },
                child: const Text('メンテナンス中')),
            const Space(),
            TextButton(
                onPressed: () {
                  appNotifier.forcedUpdateMode();
                },
                child: const Text('強制アップデート')),
          ],
        ),
      ),
    );
  }
}
