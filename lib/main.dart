import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mbo/const/image.dart';
import 'package:mbo/provider/app_info/app_info_provider.dart';
import 'package:mbo/provider/preference/preference_provider.dart';
import 'package:mbo/util/key/navigation_key.dart';
import 'package:mbo/util/key/scaffold_key.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await dotenv.load(fileName: '.env');

  late final SharedPreferences sharedPreferences;
  late final PackageInfo packageInfo;
  AndroidDeviceInfo? androidDeviceInfo;
  IosDeviceInfo? iosDeviceInfo;

  await Future.wait([
    Future(() async {
      final deviceInfo = DeviceInfoPlugin();
      if(Platform.isAndroid) {
        androidDeviceInfo = await deviceInfo.androidInfo;
      } else if(Platform.isIOS) {
        iosDeviceInfo = await deviceInfo.iosInfo;
      }
      sharedPreferences = await SharedPreferences.getInstance();
      packageInfo = await PackageInfo.fromPlatform();

    })
  ]);

  runApp(ProviderScope(overrides: [
    sharedPreferenceProvider.overrideWithValue(sharedPreferences),
    packageInfoProvider.overrideWithValue(packageInfo),
    deviceInfoProvider.overrideWithValue(DeviceInfoData(androidInfo: androidDeviceInfo, iosInfo: iosDeviceInfo))
  ], child: const App()));
}

class App extends ConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.listen<AppLifecycleState>(
    //   appLifecycleProvider,
    //       (previous, next) => debugPrint(' $next'),
    // );
    ref.watch(appInfoProvider).init();
    return  MaterialApp(
      key: NavigationKey.navigationKey,
      scaffoldMessengerKey: ScaffoldKey.scaffoldMessengerKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
        body: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImagePath.image1),
          SvgPicture.asset(
              ImagePath.svg1,
              width: 30,
              color: Colors.blue,
              semanticsLabel: 'A red up arrow'
          )
          ],
        ),),
      ),
    );
  }
}
