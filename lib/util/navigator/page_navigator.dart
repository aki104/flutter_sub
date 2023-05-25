import 'package:flutter/material.dart';

enum NavigatorType {
  push,
  removeUtil,
  pushReplacement,
  pop,
  popUtil,
}

class PageNavigator {
  static Future<void> pageNavigator(BuildContext context, Widget widget,
      {NavigatorType type = NavigatorType.push,
        void Function()? callback}) async {
    switch(type) {

      case NavigatorType.push:
        push(context: context, widget: widget, callback: callback);
        break;
      case NavigatorType.removeUtil:
        removeUtil(context: context, widget: widget);
        break;
      case NavigatorType.pushReplacement:
        pushReplacement(context: context, widget: widget);
        break;
      case NavigatorType.pop:
        pop(context);
        break;
      case NavigatorType.popUtil:
      // push(context, widget, callback);
        break;
    }
  }

  static Future<void> push(
      {required BuildContext context, required Widget widget, void Function()? callback}) async {
    await Navigator.push(context, MaterialPageRoute(builder: (_) {
      return widget;
    })).then((value) {
      callback?.call();
    });
  }

  static Future<void> removeUtil({required BuildContext context, required Widget widget}) async {
    await Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return widget;
    }), (_){
      return false;
    });
  }

  static Future<void> pushReplacement(
      {required BuildContext context, required Widget widget}) async {
    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
      return widget;
    }));
  }

  static Future<void> pop(BuildContext context) async {
    Navigator.pop(context);
  }
}
