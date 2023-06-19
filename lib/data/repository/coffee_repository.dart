import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/data/remort/response/coffee/response.dart';
import '../../model/coffee/model.dart';
import '../../model/coffee/notifier.dart';
import '../../model/result/result.dart';
import '../../util/error/error_handler.dart';
import '../remort/client/api_client.dart';

final coffeeRepositoryProvider = AutoDisposeProvider<CoffeeRepository>((ref) {
  final coffeeModelNotifier = ref.read(coffeeModelStateProvider.notifier);
  final client = ref.read(apiClientProvider);
  return CoffeeRepositoryImpl(client, coffeeModelNotifier);
});

abstract class CoffeeRepository {
  Future<void> fetchCoffeeData();
}

class CoffeeRepositoryImpl implements CoffeeRepository {
  CoffeeRepositoryImpl(this._client, this._coffeeModelNotifier);

  final CoffeeModelStateNotifier _coffeeModelNotifier;
  final ApiClient _client;

  @override
  Future<void> fetchCoffeeData() async {

    final response = await  _client.fetchHotCoffee()
        .then((data) => Result<List<CoffeeDataRes>>.success(data))
        .catchError((error) => Result<List<CoffeeDataRes>>.failure(error));
    response.when(success: (res) {
      final list = <CoffeeModel>[];
      for (var element in res) {
        list.add(CoffeeModel.fromCoffeeModel(data: element));
      }
      _coffeeModelNotifier.setList(list);
    }, failure: (error) {
      throw ErrorHandler().throwException(error);
    });
  }
}
