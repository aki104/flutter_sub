
import 'dart:convert';

import 'package:flutter/services.dart';

enum Stub {
  user('stub/user_1.json');
  const Stub(this.path);
  final String path;
}

Future<Map<String, dynamic>> loadJson(String path) async {
  final stubData = await rootBundle.loadString(path);
  final response = json.decode(stubData) as Map<String, dynamic>;
  await Future.delayed(const Duration(seconds: 2));
  return response;
}