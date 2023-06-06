import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model.dart';


final userModelProvider =
AutoDisposeStateNotifierProvider<UserModelStateNotifier, UserModel>((ref) {
  return UserModelStateNotifier();
});

class UserModelStateNotifier extends StateNotifier<UserModel> {
  UserModelStateNotifier() : super(const UserModel(id: ''));

  void setData(UserModel data) {
    state = data;
  }

}
