import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/data/repository/test_repository.dart';
import 'package:mbo/data/repository/user_repository.dart';
import 'package:mbo/ui/profile/notifier.dart';
import 'package:mbo/util/error/error_handler.dart';

import '../../../component/module/interface/event_handler.dart';
import 'notifier.dart';


final errorTestEventProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(errorTestUiModelStateProvider.notifier);
  final repository = ref.watch(testRepositoryProvider);
  return ErrorTestEventHandler(stateNotifier, ref, repository);
});


class ErrorTestEventHandler implements EventHandler{
  ErrorTestEventHandler(this._errorTestStateNotifier, this.ref, this._repository);

  final ErrorTestUiModelStateNotifier _errorTestStateNotifier;
  final AutoDisposeProviderRef ref;
  final TestRepository _repository;

  @override
  Future<void> onCreate([Arg? value]) async {
    _errorTestStateNotifier.onDataLoading();
    await load();
  }

  @override
  Future<void> load([code]) async {
    try{
    ///データ読み込み処理（API通信）など
      await _repository.testErrorCode(code);
      _errorTestStateNotifier.onLoadSuccess();
    }  on Exception catch (e){
      _errorTestStateNotifier.onViewError(ErrorHandler().mapError(e));
    }
  }

  @override
  Future<void> reload([code]) async {
    _errorTestStateNotifier.onDataLoading();
    await load(code);
  }

  void cansel([code]) {
    _errorTestStateNotifier.onNoError();
  }
}