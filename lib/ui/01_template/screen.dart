
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/01_template/state/state.dart';
import '../../component/widget/header/default_app_bar.dart';
import '../../component/widget/layout/base_layout.dart';
import 'event.dart';
import 'notifier.dart';

///UIModelを監視するプロバイダー
final xxxxUiModelProvider = AutoDisposeProvider<XxxxUiModel>((ref) {
  ///　①UIで使用するデータModelを監視
  /////TODO: 監視対象のデータをwatch
  ///　②UIModelのStateを監視
  final xxxxUiModelState = ref.watch(xxxxUiModelStateProvider);
  ///　①と②を監視することでデータの変更、ユーザー操作の変更を画面で受け取れる。
  return xxxxUiModelState;
});

class XxxxScreen extends ConsumerWidget {
  const XxxxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(xxxxUiModelProvider);
    final event = ref.read(xxxxEventProvider);

    return BaseLayout(
        appBar: const DefaultAppBar(
          headerTitle: 'XXXXX',
        ),
        onInit: event.onCreate,
        isLoading: state.isLoading,
        body: const Placeholder()

    );
  }
}
