import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/provider/app_info/app_info_provider.dart';
import 'package:mbo/provider/life_cycle/life_cycle_provider.dart';
import 'package:mbo/provider/preference/preference_provider.dart';
import 'package:mbo/ui/splash/screen.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'component/module/key/navigation_key.dart';
import 'component/module/key/scaffold_key.dart';

enum FlavorType{
  dev('dev'),
  stg('stg'),
  prod('prod');
  const FlavorType(this.name);
  final String name;
}
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();



  ///環境別設定
  const flavorName = String.fromEnvironment('flavor');
  if(flavorName == FlavorType.dev.name) {
    await dotenv.load(fileName: '.env_dev');
  } else if(flavorName == FlavorType.stg.name) {
    await dotenv.load(fileName: '.env_stg');
  } else if(flavorName == FlavorType.prod.name) {
    await dotenv.load(fileName: '.env');
  }

  ///同期処理するための処理
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
    ref.listen<AppLifecycleState>(
      appLifecycleProvider,
          (previous, next) {
            debugPrint(' previous$previous');
            debugPrint(' next$next');
          },
    );

    return  MaterialApp(
      key: NavigationKey.navigationKey,
      scaffoldMessengerKey: ScaffoldKey.scaffoldMessengerKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
