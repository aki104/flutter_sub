import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/data/repository/user_repository.dart';
import 'package:mbo/ui/profile/notifier.dart';
import 'package:mbo/util/error/error_handler.dart';

import '../../../component/module/interface/event_handler.dart';
import '../../data/repository/coffee_repository.dart';
import '../../model/coffee/model.dart';
import '../../model/coffee/model.dart';
import 'notifier.dart';


final coffeeEventProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(coffeeUiModelStateProvider.notifier);
  final coffeeRepository = ref.watch(coffeeRepositoryProvider);
  return CoffeeEventHandler(stateNotifier, ref, coffeeRepository);
});


class CoffeeEventHandler implements EventHandler{
  CoffeeEventHandler(this._coffeeStateNotifier, this.ref, this._repository);

  final CoffeeUiModelStateNotifier _coffeeStateNotifier;
  final AutoDisposeProviderRef ref;
  final CoffeeRepository _repository;

  @override
  Future<void> onCreate([Arg value]) async {
    _coffeeStateNotifier.onDataLoading();
    await load(CoffeeType.hot);
  }

  @override
  Future<void> load([type]) async {
    try{
    ///データ読み込み処理（API通信）など
     await _repository.fetchCoffeeData(type as CoffeeType);
      _coffeeStateNotifier.onLoadSuccess();
    }  on Exception catch (e){
      _coffeeStateNotifier.onViewError(ErrorHandler().mapError(e));
    }
  }

  @override
  Future<void> reload([value]) async {
    _coffeeStateNotifier.onDataLoading();
    await load();
  }
}