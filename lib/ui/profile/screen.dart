
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/profile/state/state.dart';
import '../../component/widget/header/default_app_bar.dart';
import '../../component/widget/layout/base_layout.dart';
import '../../component/widget/space.dart';
import '../../model/user/notifier.dart';
import 'event.dart';
import 'notifier.dart';


final profileUiModelProvider = AutoDisposeProvider<ProfileUiModel>((ref) {
  final userData = ref.watch(userModelProvider);
  final profileUiModel = ref.watch(profileUiModelStateProvider);
  return profileUiModel.copyWith(userData: userData);
});

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileUiModelProvider);
    final notifier = ref.read(profileEventProvider);
    final userData = state.userData;

    return BaseLayout(
      appBar: const DefaultAppBar(
        headerTitle: 'プロフィール',
      ),
      onInit: notifier.onCreate,
      isLoading: state.isLoading,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12),
                ),
                child: const Icon(Icons.person),
              ),
              const Space(),
              Text(userData.name)
            ],
          ),
          const Space(),
          Row(
            children: [
              const Text('誕生日: '),
              Text(userData.birthday)
            ],
          ),
          const Space(),
          Row(
            children: [
              const Text('e-mail: '),
              Text(userData.mail)
            ],
          ),
          const Space(),
          Row(
            children: [
              const Text('誕生日: '),
              Text('${userData.age}歳')
            ],
          ),
          const Space(),
          Row(
            children: [
              const Text('電話番号: '),
              Text(userData.phoneNumber)
            ],
          ),
          const Space(),
          Row(
            children: [
              const Text('郵便番号: '),
              Text(userData.postCode)
            ],
          ),
          const Space(),
          Row(
            children: [
              const Text('住所: '),
              Text(userData.address)
            ],
          ),
          const Space(),

        ],
      )

    );
  }
}
