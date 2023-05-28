
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/login/state/notifier.dart';

import '../../component/widget/input_form/validation_form.dart';
import '../../component/widget/layout/base_layout.dart';
import '../../component/widget/space.dart';
import '../../util/design/text_style.dart';
import '../../util/navigator/page_navigator.dart';
import 'event/event.dart';


class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final notifier = ref.read(loginEventHandlerProvider);
    return BaseLayout(
      onInit: notifier.onCreate,
      body: GestureDetector(
        onTap: () {
          final FocusScopeNode currentScope = FocusScope.of(context);
          if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            // reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('ログイン', style: fontSize20),
                const Space.height(50),
                ValidationInputForm(
                  controller: state.mailController,
                  errorMsg: state.mailErrorMsg,
                  inputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  labelText: 'メールアドレス',
                ),
                ValidationInputForm(
                  controller: state.passwordController,
                  errorMsg: state.passwordErrorMsg,
                  // textInputAction: TextInputAction.none,
                  labelText: 'パスワード',
                  inputType: TextInputType.emailAddress,
                ),
                ElevatedButton(
                  onPressed: () {
                    notifier.onTapLoginButton(
                        onSuccess: () {
                          //TODO:ログインできた時の処理
                        },
                        onError: () {
                          //TODO:ログインできなかった時の処理
                        },
                        mailMsg: state.mailController!.text,
                        passwordMsg: state.passwordController!
                            .text
                    ); // notifier.onTapLoginButton();
                  },
                  child: const Text('ログイン'),
                ),
                const Space.height(40),
                GestureDetector(
                  onTap: () {
                    // PageNavigator.pushReplacement(
                    //     widget: const SignUpScreen(), context: context);
                  },
                  child: Text(
                    '新規登録はこちら',
                    style: textStyle([pink100, fontSize16]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
