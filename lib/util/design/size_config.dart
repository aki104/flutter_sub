import 'package:flutter/material.dart';

class SizeConfig {
  const SizeConfig._();

  ///基本となるデバイスサイズ（iphone12,13・13pro）
  static const baseWidth = 390.0;
  static const baseHeight = 844.0;
  static const baseWidthPix = 1170.0;
  static const baseHeightPix = 2532.0;

  ///基本となるアスペクト比
  static double baseAspectRatio = baseWidth/baseHeight; //0.46

  ///端末のWidth
  static double? width;
  ///端末のheight
  static double? height;

  ///比率
  static double ratio = 1.0;

  static void init(Size? size) {
    width = size?.width ?? baseWidth;
    height = size?.height ?? baseHeight;
    final deviceRatio = size != null ? ((size.width/baseWidth) + (size.height/baseHeight))/2 : 1;
    ratio = double.parse(deviceRatio.toStringAsFixed(2));
  }
}

extension SizeExD on double{
  double get r {
    return SizeConfig.ratio*this;
  }
}

extension SizeExI on int{
  double get r {
    return SizeConfig.ratio*this;
  }
}