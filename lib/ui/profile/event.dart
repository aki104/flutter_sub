import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/data/repository/user_repository.dart';
import 'package:mbo/ui/profile/notifier.dart';
import 'package:mbo/util/error/error_handler.dart';

import '../../../component/module/interface/event_handler.dart';


final profileEventProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(profileUiModelStateProvider.notifier);
  final userRepository = ref.read(userRepositoryProvider);
  return ProfileEventHandler(stateNotifier, ref, userRepository);
});


class ProfileEventHandler{
  ProfileEventHandler(this._profileStateNotifier, this.ref, this._repository);

  final ProfileUiModelStateNotifier _profileStateNotifier;
  final AutoDisposeProviderRef ref;
  final UserRepository _repository;

  Future<void> onCreate() async {
    _profileStateNotifier.onDataLoading();
    await load();
  }

  Future<void> load() async {
    try{
      await _repository.fetchUserData();
      _profileStateNotifier.onLoadSuccess();
    }  on Exception catch (e){
      _profileStateNotifier.onViewError(ErrorHandler().mapError(e));
    }
  }

  @override
  Future<void> reload() async {
    _profileStateNotifier.onDataLoading();
    await load();
  }
}