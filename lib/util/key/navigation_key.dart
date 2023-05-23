import 'package:flutter/material.dart';

class NavigationKey{
  const NavigationKey._();

  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
}