import 'package:flutter/material.dart';
import 'package:postest6_2009106013_yanuarsatriagotama/Splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Splash(),
    );
  }
}