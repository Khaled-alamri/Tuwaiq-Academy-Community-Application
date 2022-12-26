import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_project/Search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SearchPage(),
      locale: const Locale('ar'), // The Languages shulde be Arabic when tha App Start
    );
  }
}
