import 'package:final_project/Camp_View/Future_Camp.dart';
import 'package:final_project/Camp_View/Present_Camp.dart';
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
      initialRoute: "/PresentCamp",
     getPages: [
      GetPage(name: "/FutureCamp", page: () => FutureCamp()),
      GetPage(name: "/PresentCamp", page: () => PresentCamp()),
     ],
     locale: const Locale('ar'),
    );
  }
}
