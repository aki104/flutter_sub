import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/login/state/state.dart';

import '../../../util/error/state/state.dart';


final loginProvider =
AutoDisposeStateNotifierProvider<LoginStateNotifier, LoginState>((ref) {
  return LoginStateNotifier();
});

class LoginStateNotifier extends StateNotifier<LoginState> {
  LoginStateNotifier() : super(const LoginState());

  /// 初期化
  void init() {
    state = state.copyWith(
      mailController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }

  ///ロード成功時
  void onLoadSuccess() {
    state = state.copyWith(isLoading: false);
  }

  ///データ読み込み時
  void onDataLoading() {
    state = state.copyWith(isLoading: true);
  }

  ///エラー時
  void onViewError(ErrorStatus error) {
    state = state.copyWith(isLoading: false, error: error);
  }


  /// バリデーションチェック
  void validationCheck(String mailMsg, String passwordMsg, bool isCheck) {
    state = state.copyWith(
        mailErrorMsg: mailMsg,
        passwordErrorMsg: passwordMsg,
        isValidation: isCheck);
  }
}
