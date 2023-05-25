import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/util/extension/context.dart';

import '../../provider/app_info/app_info_provider.dart';
import '../../util/design/size_config.dart';
import '../../util/key/navigation_key.dart';
import '../../util/navigator/page_navigator.dart';
import '../root/screen.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {

  @override
  void initState() {
    appInitialize();
    Future(() async {
      await Future.delayed(const Duration(seconds: 2), () {
        PageNavigator.pushReplacement(context: context, widget: const Root());
      });
    });

    super.initState();
  }

  void appInitialize() {
    ///アプリの初期処理はここで///
    print('envTest: ${dotenv.get('TEST')}');
    ref.read(appInfoProvider).getAppInfo();//アプリ、デバイス情報取得
    SizeConfig.init(NavigationKey.navigationKey.currentContext?.screenSize);//画面サイズ取得
    ///========================///
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Splash画面'),
              CupertinoActivityIndicator(),
              Text('loading')
            ],
          )),
    );
  }
}
