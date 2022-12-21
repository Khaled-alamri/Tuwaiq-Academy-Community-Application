import 'package:final_project/Localization/Languages.dart';
import 'package:final_project/Router/Routers.dart';
import 'package:final_project/View/OnBoarding/PageView.dart';
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
     initialRoute: RouterNames.CampPresnt,
     getPages: getPages,
    translations: Languages(),
    locale: const Locale('ar'), // The Languages it shulde be Arabic when tha App Start
    
    );
  }
}
