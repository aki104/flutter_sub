import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model.dart';


final coffeeModelStateProvider =  StateNotifierProvider<CoffeeModelStateNotifier, List<CoffeeModel>>(
        (ref) => CoffeeModelStateNotifier());

class CoffeeModelStateNotifier extends StateNotifier<List<CoffeeModel>> {
  CoffeeModelStateNotifier() : super([]);


  void setList(List<CoffeeModel> list) {
    state = list;
  }
}
