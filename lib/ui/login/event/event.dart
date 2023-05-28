import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../component/module/interface/event_handler.dart';
import '../../../provider/user_state/user_state_provider.dart';
import '../../../util/error/error_handler.dart';
import '../../../util/show_method.dart';
import '../../../util/validation/validation.dart';
import '../state/notifier.dart';

final loginEventHandlerProvider = AutoDisposeProvider((ref) {
  final stateNotifier = ref.read(loginProvider.notifier);
  return LoginEventHandler(stateNotifier, ref);
});


class LoginEventHandler extends EventHandler{
  LoginEventHandler(this._loginStateNotifier, this.ref);

  final LoginStateNotifier _loginStateNotifier;
  final AutoDisposeProviderRef ref;

  /// 初期化
  @override
  Future<void> onCreate([Arg? value]) async {
    _loginStateNotifier.init();
  }

  ///ログインボタンのタップ
  Future<void> onTapLoginButton(
      {required Function onSuccess,
        required Function onError,
        required String mailMsg,
        required String passwordMsg}) async {
    final isValidate = validationCheck(mailMsg, passwordMsg);
    if(!isValidate){
      login(onSuccess: onSuccess, onError: onError);
    } else {
      ShowMethod.showSnackBar('入力エラー');
    }
  }

  ///login
  Future<void> login({
    required Function onSuccess,
    required Function onError,
}) async {
    _loginStateNotifier.onDataLoading();
    try {
      //TODO:ログイン処理(ログインAPIからID:0が返ってきたとする)
      await ref.read(userStateProvider.notifier).login(0);
      // 処理成功
      _loginStateNotifier.onLoadSuccess();
      onSuccess();

    } on Exception catch (e) {
      _loginStateNotifier.onViewError(ErrorHandler().mapError(e));
      onError();
    }
  }

  ///バリデーションのチェック
  bool validationCheck(String mailMsg, String passwordMsg) {

    final mailErrorMsg = Validation.validation(
        validationList: ValidationType.mail.validatorList,
        value: mailMsg);

    final passwordErrorMsg = Validation.validation(
        validationList: ValidationType.password.validatorList,
        value: passwordMsg);

    final isCheck = Validation.isAllValid(
        messageList: [mailErrorMsg, passwordErrorMsg]);

    _loginStateNotifier.validationCheck(mailErrorMsg, passwordErrorMsg, isCheck);
    return isCheck;
  }



}