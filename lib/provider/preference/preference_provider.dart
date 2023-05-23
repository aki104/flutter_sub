import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferenceProvider = Provider<SharedPreferences>((ref) {
  return throw UnimplementedError();
});

final prefManagerProvider = Provider<PreferenceManager>((ref) {
  final pref = ref.watch(sharedPreferenceProvider);
  return ImpPreferenceManager(pref: pref);
});

abstract class PreferenceManager {
  Future<bool> setString({required String key, required String value});
  Future<bool> setInt({required String key, required int value});
  String? getString({required String key});
  int? getInt({required String key});
  Future<bool> delete({required String key});
  Future<void> allDelete({required List<String> keys});
}

class ImpPreferenceManager implements PreferenceManager{
  ImpPreferenceManager({required this.pref});

  final SharedPreferences pref;

  @override
  int? getInt({required String key}) {
    return pref.getInt(key);
  }

  @override
  String? getString({required String key}) {
    return pref.getString(key);
  }

  @override
  Future<bool> setInt({required String key, required int value}) async {
    return await pref.setInt(key, value);
  }

  @override
  Future<bool> setString({required String key, required String value}) async {
    return await pref.setString(key, value);
  }

  @override
  Future<bool> delete({required String key}) async {
    return await pref.remove(key);
  }

  @override
  Future<void> allDelete({required List<String> keys}) async {
    for(var key in keys) {
      await pref.remove(key);
    }
  }

}