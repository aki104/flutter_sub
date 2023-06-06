import 'package:flutter/material.dart';
import 'package:mbo/provider/app_state/state.dart';
import 'package:mbo/util/extension/context.dart';

class AppDialog {
  const AppDialog._();

  /// ダイアログ表示
  static Future<void> showDefaultDialog({
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
            AppDialogButton(
                context: context,
                cancelTitle: cancelTitle,
                exeTitle: exeTitle,
                onTap: onTap),
          ],
        );
      },
    );
  }

  /// メンテナンス、アップデートダイアログ表示
  static Future<void> showAppStateDialog({
    required BuildContext context,
    required String title,
    required AppState appState,
    required Function onTap,
  }) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          titlePadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          title: Center(
            child: Container(
              alignment: Alignment.center,
              width: context.screenWidth,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: FittedBox(
                child: Text(title),
              ),
            ),
          ),
          actions: <Widget>[
            AppStateDialogButton(
              onTap: onTap,
              appState: appState,
            ),
          ],
        );
      },
    );
  }
}

///AppDialogで使用するボタン
class AppDialogButton extends StatelessWidget {
  const AppDialogButton({
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

///AppStateDialogで使用するボタン
class AppStateDialogButton extends StatelessWidget {
  const AppStateDialogButton(
      {super.key, required this.onTap, required this.appState});

  final Function? onTap;
  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            onTap?.call();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
