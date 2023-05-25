import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../provider/user_state/user_state_provider.dart';
import '../state/notifier.dart';

final loginEventHandlerProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(loginProvider.notifier);
  return LoginEventHandler(stateNotifier, ref);
});


class LoginEventHandler {
  LoginEventHandler(this._stateNotifier, this.ref);

  final LoginStateNotifier _stateNotifier;
  final AutoDisposeProviderRef ref;

  ///初期化
  void init() {
    _stateNotifier.init();
  }


  ///ログインボタンのタップ
  void onTapLoginButton(
      {required Function onSuccess,
        required Function onError,
        required String mailMsg,
        required String passwordMsg}) {
    // validationCheck(mailMsg, passwordMsg);
    if(!ref.read(loginProvider).isValidation){
      //TODO:ログインAPIからIDが返ってくる想定
      ref.read(userStateProvider.notifier).login(0);
      onSuccess();
    } else {
      // AppSnackBar(msg: '入力エラー').show();
      onError();
    }
  }

  ///バリデーションのチェック
  // void validationCheck(String mailMsg, String passwordMsg) {
  //
  //   final mailErrorMsg = Validation.validation(
  //       validationList: InputFormType.mail.validatorList,
  //       value: mailMsg);
  //
  //   final passwordErrorMsg = Validation.validation(
  //       validationList: InputFormType.password.validatorList,
  //       value: passwordMsg);
  //
  //   final isCheck = Validation.isAllValid(
  //       messageList: [mailErrorMsg, passwordErrorMsg]);
  //
  //   _stateNotifier.validationCheck(mailErrorMsg, passwordErrorMsg, isCheck);
  // }

}