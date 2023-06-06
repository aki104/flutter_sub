import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/base/state/notifier.dart';
import 'package:mbo/ui/base/state/state.dart';

import '../home/screen.dart';
import '../notification/screen.dart';
import '../setting/screen.dart';


class BottomBaseScreen extends ConsumerWidget {
  const BottomBaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomBaseProvider);
    final notifier = ref.watch(bottomBaseProvider.notifier);
    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        body: IndexedStack(
          index: state.pageType.index,
          children: const [
            HomeScreen(),
            NotificationScreen(),
            SettingScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.pageType.index,
          onTap: (index) {
            notifier.changeTab(index);
          },
          items: _navigationItem(),
        ),
      ),
    );
  }
  List<BottomNavigationBarItem> _navigationItem() {
    return [
     ...List.generate(BottomPageType.values.length, (index) {
       final item = BottomPageType.values[index];
       return BottomNavigationBarItem(
         icon: item.icon,
         label: item.name,
       );
     })
    ];
  }
  Future<bool> _willPopCallback() async {
    return false;
  }
}