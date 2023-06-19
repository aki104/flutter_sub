import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/util/error/error_handler.dart';

import '../../data/repository/coffee_repository.dart';
import 'notifier.dart';


final coffeeEventProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(coffeeUiModelStateProvider.notifier);
  final coffeeRepository = ref.watch(coffeeRepositoryProvider);
  return CoffeeEventHandler(stateNotifier, ref, coffeeRepository);
});


class CoffeeEventHandler {
  CoffeeEventHandler(this._coffeeStateNotifier, this.ref, this._repository);

  final CoffeeUiModelStateNotifier _coffeeStateNotifier;
  final AutoDisposeProviderRef ref;
  final CoffeeRepository _repository;


  Future<void> onCreate()async  {
      _coffeeStateNotifier.onDataLoading();
      await load();
  }

  Future<void> load() async {
    try{
     await _repository.fetchCoffeeData();
      _coffeeStateNotifier.onLoadSuccess();
    }  on Exception catch (e){
      _coffeeStateNotifier.onViewError(ErrorHandler().mapError(e));
    }
  }

  Future<void> reload() async {
    _coffeeStateNotifier.onDataLoading();
    await load();
  }




}