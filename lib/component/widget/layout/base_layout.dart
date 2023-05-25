
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbo/component/widget/layout/statefull_wrapper.dart';
import 'package:mbo/util/extension/context.dart';

import '../../../const/color.dart';

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
        this.onRefresh,
        this.scaffoldKey})
      : super(key: key);

  final Widget body;
  final Widget? bottomSheet;
  final bool isEndDrawer;
  final PreferredSizeWidget? appBar;
  final bool isLoading;
  final Color backgroundColor;
  final Function? onInit;
  final Function? onRefresh;
  final GlobalKey<ScaffoldState>? scaffoldKey;

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
                    child: body)),
          ),
        ),
        if (isLoading)
          Container(
            width: context.screenWidth,
            height: context.screenHeight,
            color: AppColor.black.withOpacity(0.3),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CupertinoActivityIndicator(
                    color: AppColor.white,
                    radius: 30,
                  ),
                  Text(
                    'loading',
                    // style: textStyle([white, fontSize20]),
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}
