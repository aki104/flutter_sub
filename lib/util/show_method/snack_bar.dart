import 'package:flutter/material.dart';

import '../../component/module/key/scaffold_key.dart';
import '../design/text_style.dart';



class AppSnackBar {
  const AppSnackBar._();

  /// スナックバー表示
  static void show(String msg) {
    ScaffoldKey.scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      content: Center(
          child: Text(
            msg,
            style: defaultTextStyle,
          )),
      behavior: SnackBarBehavior.floating,
      elevation: 6.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: Colors.grey, //色
          width: 2, //太さ
        ),
      ),
      backgroundColor: Colors.white54,
    ));
  }
}
