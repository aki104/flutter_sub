import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/user/model.dart';
import '../../model/user/notifier.dart';
import '../../util/json_load.dart';
import '../remort/client/api_client.dart';
import '../remort/response/user/response.dart';


final userRepositoryProvider = AutoDisposeProvider<UserRepository>((ref){
  final userModelNotifier = ref.read(userModelProvider.notifier);
  final client = ref.read(apiClientProvider);
  return UserRepositoryImpl(client, userModelNotifier);
});

abstract class UserRepository {
  Future<void> fetchUserData();
}


class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._client, this._userModelNotifier);
  final UserModelStateNotifier _userModelNotifier;
  final ApiClient _client;

  @override
  Future<void> fetchUserData() async {
    // final response = await _client
    //     .fetchUser()
    //     .then((data) => Result<UserDataRes>.success(data))
    //     .catchError((error) => Result<UserDataRes>.failure(error));
    //  response.when(success: (res){
    //   final data = UserModel.fromUserModel(data: res);
    //    _userModelNotifier.setData(data);
    // }, failure: (error){
    //   throw ErrorHandler().throwException(error);
    // });

    ///スタブ取得
    final json = await loadJson(Stub.user.path);
    final res = UserDataRes.fromJson(json['data']);
    final data = UserModel.fromUserModel(data: res);
    _userModelNotifier.setData(data);
  }
}