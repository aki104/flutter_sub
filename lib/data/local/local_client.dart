
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/preference/preference_provider.dart';


///ローカルで扱うデータの管理

final localClientProvider = Provider<LocalClient>((ref){
  final pref = ref.watch(prefManagerProvider);
  return LocalClient(pref: pref);
});

///端末のローカルデータクライアント
class LocalClient{
  LocalClient({
    required this.pref
  });

  final PreferenceManager pref;

  ///UserId取得
  int? getUserId() {
    final userId = pref.getInt(key: UserInfoKey.userId.name);
    return userId;
  }

  ///UserIdセット
  Future<bool> setUserId(int id) async {
    return await pref.setInt(key: UserInfoKey.userId.name, value: id);
  }

  ///UserId削除
  Future<bool> deleteId() async {
    return await pref.delete(key: UserInfoKey.userId.name);
  }

}


enum UserInfoKey {
  userId,
  authToken,
  fcmToken,
}

enum AppInfoKey {
  appName,
  packageName,
  version,
  buildNumber,
  appOS,
}