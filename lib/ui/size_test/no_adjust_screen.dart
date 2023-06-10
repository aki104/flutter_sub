import 'package:flutter/material.dart';

import '../../component/widget/header/default_app_bar.dart';
import '../../component/widget/space.dart';

class NoAdjustScreen extends StatelessWidget {
  const NoAdjustScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(
        headerTitle: 'サイズ調整なし',

      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Space(height: 16,),
              Container(
                width: 300,
                height: 120,
                color: Colors.red,
              ),
              const Space(height: 16,),
              Container(
                width: 300,
                height: 120,
                color: Colors.red,
              ),
              const Space(height: 16,),
              Container(
                width: 300,
                height: 120,
                color: Colors.red,
              ),
              const Space(height: 16,),
              Container(
                width: 300,
                height: 120,
                color: Colors.red,
              ),
              const Space(height: 16,),
              Container(
                width: 300,
                height: 120,
                color: Colors.red,
              ),
              const Space(height: 16,),

            ],
          ),
        ),
      ),
    );
  }
}
