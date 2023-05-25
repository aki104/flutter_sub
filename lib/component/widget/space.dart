import 'package:flutter/material.dart';

class Space extends SizedBox {
  const Space({super.key, double width = 8, double height = 8})
      : super(width: width, height: height);

  const Space.width([double value = 8, Key? key]) : super(key: key, width: value);
  const Space.height([double value = 8, Key? key]) : super(key: key, height: value);
}