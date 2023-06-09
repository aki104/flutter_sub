import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../model/result/result.dart';
import '../../util/error/error_handler.dart';
import '../remort/client/api_test_client.dart';
import '../remort/response/test/response.dart';

final testRepositoryProvider = AutoDisposeProvider<TestRepository>((ref) {
  final client = ref.read(apiTestClientProvider);
  return TestRepositoryImpl(client);
});

abstract class TestRepository {
  Future<void> testErrorCode(StatusCode code);
}

class TestRepositoryImpl implements TestRepository {
  TestRepositoryImpl(this._client);

  final ApiTestClient _client;

  @override
  Future<void> testErrorCode(StatusCode code) async {


    final response = await _client.testErrorCode(code.code)
        .then((data) => Result<TestRes>.success(data))
        .catchError((error) => Result<TestRes>.failure(error));
    response.when(success: (res) {

    }, failure: (error) {
      throw ErrorHandler().throwException(error);
    });
  }
}
