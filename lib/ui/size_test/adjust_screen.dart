import 'package:flutter/material.dart';
import 'package:mbo/component/widget/header/default_app_bar.dart';
import 'package:mbo/util/design/size_config.dart';

import '../../component/widget/space.dart';

class AdjustScreen extends StatelessWidget {
  const AdjustScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        headerTitle: 'サイズ調整あり',

      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Space(height: 16.d,),
              Container(
                width: 300.h,
                height: 120.h,
                color: Colors.red,
              ),
              Space(height: 16.d,),
              Container(
                width: 300.h,
                height: 120.h,
                color: Colors.red,
              ),
              Space(height: 16.d,),
              Container(
                width: 300.h,
                height: 120.h,
                color: Colors.red,
              ),
              Space(height: 16.d,),
              Container(
                width: 300.h,
                height: 120.h,
                color: Colors.red,
              ),
              Space(height: 16.d,),
              Container(
                width: 300.h,
                height: 120.h,
                color: Colors.red,
              ),
              Space(height: 16.d,),

            ],
          ),
        ),
      ),
    );
  }
}
