import 'package:flutter/material.dart';
import 'package:mbo/util/extension/context.dart';

import '../../../const/color.dart';
import '../space.dart';

class NetworkErrorScreen extends StatelessWidget {
  const NetworkErrorScreen({
    super.key, this.onReload,
  });

  final Function? onReload;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black.withOpacity(0.3),
      body: SizedBox(
        width: context.screenWidth,
        height: context.screenHeight,

        child: Center(
            child: Container(
              width: context.screenWidth,
              height: context.screenHeight*0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('ネットワークが不安定です。'),
                  const Space(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        onReload?.call();
                      },
                      child: const Text('再読み込み')),
                ],
              ),
            )
        ),
      ),
    );
  }
}