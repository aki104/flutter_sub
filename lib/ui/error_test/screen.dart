
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/01_template/state/state.dart';
import '../../component/widget/header/default_app_bar.dart';
import '../../component/widget/layout/base_layout.dart';
import '../../component/widget/space.dart';
import '../../data/remort/client/api_test_client.dart';
import 'event.dart';
import 'notifier.dart';

///UIModelを監視するプロバイダー
final errorTestUiModelProvider = AutoDisposeProvider<XxxxUiModel>((ref) {
  ///　①UIで使用するデータModelを監視
  //TODO: 監視対象のデータをwatch
  ///　②UIModelのStateを監視
  final errorTestUiModelState = ref.watch(errorTestUiModelStateProvider);
  ///　①と②を監視することでデータの変更、ユーザー操作の変更を画面で受け取れる。
  return errorTestUiModelState;
});

class ErrorTestScreen extends ConsumerWidget {
  const ErrorTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(errorTestUiModelProvider);
    final event = ref.read(errorTestEventProvider);

    return BaseLayout(
        appBar: const DefaultAppBar(
          headerTitle: 'errorTest',
        ),
        onReload: event.cansel,
        errorStatus: state.error,
        isLoading: state.isLoading,
        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () async {
                    await event.reload(StatusCode.code404);
                  },
                  child: const Text('404')),
              const Space(),
              TextButton(
                  onPressed: () async {
                    await event.reload(StatusCode.code504);
                  },
                  child: const Text('504')),
              const Space(),
              TextButton(
                  onPressed: () async {
                    await event.reload(StatusCode.code508);
                  },
                  child: const Text('508')),
              const Space(),

            ],
          ),
        ),

    );
  }
}
