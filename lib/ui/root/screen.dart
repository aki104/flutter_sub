import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/user_state/user_state_provider.dart';
import '../login/screen.dart';


class Root extends ConsumerWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final userState = ref.watch(userStateProvider);
      return userState.map(
          init: (_) {return  const CupertinoActivityIndicator();},
          unauthenticated: (_) {
            return const LoginScreen();
            // return const BottomBaseScreen();
          },
          authenticated: (_) {
            // return const BottomBaseScreen();
            return const Scaffold(
              body: Center(child: Text('home画面'),),
            );
          });
    }
    // return const Scaffold(
    //   body: Center(child: Text('root画面'),),
    // );
  }
// }
