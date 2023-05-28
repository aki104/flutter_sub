import 'package:flutter/material.dart';

import '../component/module/key/scaffold_key.dart';
import 'design/text_style.dart';

class ShowMethod {
  const ShowMethod._();

  /// スナックバー表示
  static void showSnackBar(String msg) {
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
          color: Colors.pink, //色
          width: 2, //太さ
        ),
      ),
      backgroundColor: Colors.white,
    ));
  }

  /// ダイアログ表示
  static Future<void> showAppDialog({
    required BuildContext context,
    required String title,
    String cancelTitle = 'キャンセル',
    String? exeTitle,
    Function? onTap,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(child: Text(title)),
          actions: <Widget>[
            DialogButton(
                context: context,
                cancelTitle: cancelTitle,
                exeTitle: exeTitle,
                onTap: onTap),
          ],
        );
      },
    );
  }
}

class DialogButton extends StatelessWidget {
  const DialogButton({
    super.key,
    required this.context,
    required this.cancelTitle,
    required this.exeTitle,
    required this.onTap,
  });

  final BuildContext context;
  final String cancelTitle;
  final String? exeTitle;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: Text(cancelTitle),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        if (exeTitle != null)
          TextButton(
            child: Text(exeTitle!),
            onPressed: () {
              onTap?.call();
            },
          ),
      ],
    );
  }
}