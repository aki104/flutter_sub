import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mbo/ui/login/state/state.dart';


final loginProvider =
AutoDisposeStateNotifierProvider<LoginStateNotifier, LoginState>((ref) {
  return LoginStateNotifier();
});

class LoginStateNotifier extends StateNotifier<LoginState> {
  LoginStateNotifier() : super(const LoginState());

  void init() {
    state = state.copyWith(
      mailController: TextEditingController(),
      passwordController: TextEditingController(),
    );
  }


  void validationCheck(String mailMsg, String passwordMsg, bool isCheck) {
    state = state.copyWith(
        mailErrorMsg: mailMsg,
        passwordErrorMsg: passwordMsg,
        isValidation: isCheck);
  }
}
