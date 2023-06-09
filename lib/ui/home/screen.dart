import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/util/navigator/page_navigator.dart';

import '../../component/widget/space.dart';
import '../coffee/screen.dart';
import '../error_test/screen.dart';
import '../profile/screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  PageNavigator.push(context: context, widget: const ProfileScreen());
                },
                child: const Text('スタブテスト')),
            TextButton(
                onPressed: () {
                PageNavigator.push(context: context, widget: const CoffeeListScreen());
                },
                child: const Text('APIテスト')),

            TextButton(
                onPressed: () {
                  PageNavigator.push(context: context, widget: const ErrorTestScreen());
                },
                child: const Text('APIエラーテスト')),
            const Space(),
          ],
        ),
      ),
    );
  }
}
