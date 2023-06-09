import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbo/component/widget/layout/pull_to_layout.dart';
import 'package:mbo/component/widget/layout/statefull_wrapper.dart';
import 'package:mbo/util/extension/context.dart';

import '../../../const/color.dart';
import '../../../util/design/text_style.dart';
import '../../../util/error/state/state.dart';
import '../error/maintenance_screen.dart';
import '../error/network_error_screen.dart';
import '../error/update_screen.dart';
import '../loading/cupertino_loading.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout(
      {Key? key,
      required this.body,
      this.appBar,
      this.isLoading = false,
      this.bottomSheet,
      this.isEndDrawer = false,
      this.backgroundColor = AppColor.white,
      this.onInit,
      this.onReload,
      this.scaffoldKey,
      this.errorStatus = const ErrorStatus.noError(),
      this.isPullTo = false})
      : super(key: key);

  final Widget body;
  final Widget? bottomSheet;
  final bool isEndDrawer;
  final PreferredSizeWidget? appBar;
  final bool isLoading;
  final Color backgroundColor;
  final Function? onInit;
  final Function? onReload;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final ErrorStatus errorStatus;
  final bool isPullTo;

  Widget? get endDrawer {
    if (isEndDrawer) {
      return const Drawer();
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        StatefulWrapper(
          onInit: onInit,
          child: Scaffold(
            key: scaffoldKey,
            appBar: appBar,
            bottomSheet: bottomSheet,
            endDrawer: endDrawer,
            backgroundColor: backgroundColor,
            body: SafeArea(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: isPullTo
                    ? PullToLayout(
                        onReload: onReload,
                        child: body,
                      )
                    : body,
              ),
            ),
          ),
        ),
        if (errorStatus is ServerError) MaintenanceScreen(onReload: onReload),
        if (errorStatus is UpdateError)  UpdateScreen(onReload: onReload),
        if (errorStatus is NetworkError || errorStatus is UnknownError || errorStatus is NotFoundError)
          NetworkErrorScreen(onReload: onReload),
        if (isLoading) const Loading()
      ],
    );
  }
}
