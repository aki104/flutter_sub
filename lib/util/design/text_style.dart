import 'package:flutter/material.dart';

import '../../const/color.dart';

///基本となるTextのstyle
const TextStyle defaultTextStyle = TextStyle(
  fontWeight: FontWeight.normal,
  fontSize: 12,
  color: AppColor.black,
);

///基本TextStyleを拡張
TextStyle textStyle(List<TextStyle> styles) {
  var mergedTextStyle = defaultTextStyle;
  for (final style in styles) {
    mergedTextStyle = mergedTextStyle.merge(style);
  }
  return mergedTextStyle;
}

///ヘッダーのテキストスタイル
const List<TextStyle> headerStyle = [
  bold,
  fontSize16,
];

///以下TextStyle一覧
const TextStyle fontSize10 = TextStyle(fontSize: 10);
const TextStyle fontSize16 = TextStyle(fontSize: 16);
const TextStyle fontSize20 = TextStyle(fontSize: 20);
const TextStyle bold = TextStyle(fontWeight: FontWeight.bold);
const TextStyle white = TextStyle(color: AppColor.white);
const TextStyle pink100 = TextStyle(color: AppColor.pink100);
const TextStyle colorTransparent = TextStyle(color: Colors.transparent);

