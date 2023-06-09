import 'package:flutter/material.dart';
import 'package:mbo/util/extension/context.dart';

import '../../../const/color.dart';
import '../space.dart';

class MaintenanceScreen extends StatelessWidget {
  const MaintenanceScreen({
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
            height: context.screenHeight*0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.white
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('現在メンテナンス中です'),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('期間：　'),
                    Text('6/12 24:00〜02:00'),
                  ],
                ),
                const Space(height: 16),
                ElevatedButton(
                    onPressed: () {
                      onReload?.call();
                    },
                    child: const Text('OK')),
              ],
            ),
          )
        ),
      ),
    );
  }
}