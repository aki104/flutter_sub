import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../util/navigator/page_navigator.dart';
import '../size_test/adjust_screen.dart';
import '../size_test/no_adjust_screen.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  PageNavigator.push(context: context, widget: const NoAdjustScreen());
                },
                child: const Text('サイズ調整なし')),
            TextButton(
                onPressed: () {
                  PageNavigator.push(context: context, widget: const AdjustScreen());
                },
                child: const Text('サイズ調整あり')),

          ],
        ),
      ),
    );
  }
}