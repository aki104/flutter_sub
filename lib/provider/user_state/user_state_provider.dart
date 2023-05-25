
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/provider/user_state/state.dart';

import '../../data/local/local_client.dart';

final userStateProvider = StateNotifierProvider<UserStateNotifier, UserState>((ref) {
  final localClient = ref.watch(localClientProvider);
  return UserStateNotifier(localClient);
});

class UserStateNotifier extends StateNotifier<UserState>{
  UserStateNotifier(this.localClient):super(const UserState.init()){
    authCHeck();
  }

  final LocalClient localClient;

  void authCHeck() {
    final userId = localClient.getUserId();

    if(userId != null) {
      authenticatedMode(0);
    } else {
      unauthenticatedMode();
    }
  }

  void unauthenticatedMode() {
    state = const UserState.unauthenticated();
  }

  Future<void> authenticatedMode(int userId) async {
    state = UserState.authenticated(userId: userId);
  }

  ///ログイン時に行いたい処理を書く
  Future<void> login(int id) async {
    await localClient.setUserId(id);
    authCHeck();
  }

  ///ログアウト時に行いたい処理を書く
  Future<void> logout() async {
    await localClient.deleteId();
    authCHeck();
  }

}