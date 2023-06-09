import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mbo/util/extension/context.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../const/color.dart';
import '../space.dart';

class UpdateScreen extends StatelessWidget {
   const UpdateScreen({
    super.key, this.onReload
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
                children: [
                  const Text('新しいバージョンにアップデートして下さい。'),
                  const Space(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        try {
                          _launchUrl();
                        } on Exception catch (e) {
                          debugPrint(e.toString());
                        }

                      },
                      child: const Text('OK')),
                  const Space(height: 16),
                  ElevatedButton(
                      onPressed: () {
                        onReload?.call();
                      },
                      child: const Text('戻る'))
                ],
              ),
            )
        ),
      ),
    );
  }
  Future<void> _launchUrl() async {
    final Uri url = Platform.isAndroid
        ? Uri.parse('https://www.google.com/?hl=ja')
        : Uri.parse('https://www.yahoo.co.jp/');

    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      throw Exception('Could not launch $url');
    }
  }
}