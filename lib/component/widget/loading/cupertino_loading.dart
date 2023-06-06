import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbo/util/extension/context.dart';

import '../../../const/color.dart';
import '../../../util/design/text_style.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black.withOpacity(0.3),
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,

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
                style: textStyle([white, fontSize20]),
              )
            ],
          ),
        ),
      ),
    );
  }
}