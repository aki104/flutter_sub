import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';


final packageInfoProvider = Provider<PackageInfo>((ref) {
  return throw UnimplementedError();
});

final deviceInfoProvider = Provider<DeviceInfoData>((ref) {
  return throw UnimplementedError();
});

final appInfoProvider = Provider((ref) {
  final packageInfo = ref.watch(packageInfoProvider);
  final deviceInfo = ref.watch(deviceInfoProvider);
  return AppInfo(packageInfo: packageInfo, deviceInfo: deviceInfo);
});

class AppInfo {
  AppInfo({required this.packageInfo, required this.deviceInfo});

  final PackageInfo packageInfo;
  final DeviceInfoData deviceInfo;



  ///起動時にアプリ情報取得
  void init() {
    getAppInfo();
  }

  void getAppInfo() {
    debugPrint('======デバイス情報======');
    debugPrint('appName:${packageInfo.appName}');
    debugPrint('packageName:${packageInfo.packageName}');
    debugPrint('version:${packageInfo.version}');
    debugPrint('buildNumber:${packageInfo.buildNumber}');

    if(Platform.isAndroid) {
      debugPrint('deviceOS: Android');
      debugPrint('deviceId:${deviceInfo.androidInfo?.id ?? 'null'}');
    } else if(Platform.isIOS) {
      debugPrint('deviceOS: IOS');
      debugPrint('deviceId:${deviceInfo.iosInfo?.identifierForVendor ?? 'null'}');
    }
    debugPrint('=====================');
  }
}

@immutable
class DeviceInfoData {
  const DeviceInfoData({
    required this.androidInfo, required this.iosInfo
});
  final AndroidDeviceInfo? androidInfo;
  final IosDeviceInfo? iosInfo;
}
