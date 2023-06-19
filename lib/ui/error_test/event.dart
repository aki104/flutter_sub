import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/data/repository/test_repository.dart';
import 'package:mbo/data/repository/user_repository.dart';
import 'package:mbo/ui/profile/notifier.dart';
import 'package:mbo/util/error/error_handler.dart';

import '../../../component/module/interface/event_handler.dart';
import '../../data/remort/client/api_test_client.dart';
import 'notifier.dart';


final errorTestEventProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(errorTestUiModelStateProvider.notifier);
  final repository = ref.watch(testRepositoryProvider);
  return ErrorTestEventHandler(stateNotifier, ref, repository);
});


class ErrorTestEventHandler {
  ErrorTestEventHandler(this._errorTestStateNotifier, this.ref, this._repository);

  final ErrorTestUiModelStateNotifier _errorTestStateNotifier;
  final AutoDisposeProviderRef ref;
  final TestRepository _repository;

  Future<void> onCreate(StatusCode code) async {
    _errorTestStateNotifier.onDataLoading();
    await load(code);
  }

  Future<void> load(StatusCode code) async {
    try{
    ///データ読み込み処理（API通信）など
      await _repository.testErrorCode(code);
      _errorTestStateNotifier.onLoadSuccess();
    }  on Exception catch (e){
      _errorTestStateNotifier.onViewError(ErrorHandler().mapError(e));
    }
  }

  Future<void> reload(StatusCode code) async {
    _errorTestStateNotifier.onDataLoading();
    await load(code);
  }

  void cansel() {
    _errorTestStateNotifier.onNoError();
  }
}