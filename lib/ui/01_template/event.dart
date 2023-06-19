import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/data/repository/user_repository.dart';
import 'package:mbo/ui/profile/notifier.dart';
import 'package:mbo/util/error/error_handler.dart';

import '../../../component/module/interface/event_handler.dart';
import 'notifier.dart';


final xxxxEventProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(xxxxUiModelStateProvider.notifier);
  return XxxxEventHandler(stateNotifier, ref);
});


class XxxxEventHandler {
  XxxxEventHandler(this._xxxxStateNotifier, this.ref);

  final XxxxUiModelStateNotifier _xxxxStateNotifier;
  final AutoDisposeProviderRef ref;

  Future<void> onCreate() async {
    _xxxxStateNotifier.onDataLoading();
    await load();
  }

  Future<void> load() async {
    try{
    ///データ読み込み処理（API通信）など
      _xxxxStateNotifier.onLoadSuccess();
    }  on Exception catch (e){
      _xxxxStateNotifier.onViewError(ErrorHandler().mapError(e));
    }
  }

  Future<void> reload() async {
    _xxxxStateNotifier.onDataLoading();
    await load();
  }
}