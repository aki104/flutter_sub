import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/01_template/state/state.dart';
import 'package:mbo/ui/coffee/state/state.dart';
import '../../component/widget/header/default_app_bar.dart';
import '../../component/widget/layout/base_layout.dart';
import '../../model/coffee/notifier.dart';
import 'event.dart';
import 'notifier.dart';

///UIModelを監視するプロバイダー
final coffeeUiModelProvider = AutoDisposeProvider<CoffeeUiModel>((ref) {
  final dataModel = ref.watch(coffeeModelStateProvider);
  final coffeeUiModelState = ref.watch(coffeeUiModelStateProvider);
  return coffeeUiModelState.copyWith(data: dataModel);
});

class CoffeeListScreen extends ConsumerWidget {
  const CoffeeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(coffeeUiModelProvider);
    final event = ref.read(coffeeEventProvider);
    final data = state.data;

    return BaseLayout(
      appBar: const DefaultAppBar(
        headerTitle: 'コーヒー画面',
      ),
      onInit: event.onCreate,
      onReload: event.reload,
      isLoading: state.isLoading,
      errorStatus: state.error,
      isPullTo: true,
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black45)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data[index].name ?? ''),
                Text(data[index].email ?? ''),
              ],
            ),
          );
        },
      ),
    );
  }
}
