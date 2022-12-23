import 'package:final_project/Localization/Languages.dart';
import 'package:final_project/Router/Routers.dart';
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     initialRoute: RouterNames.profile,
     getPages: getPages,
    translations: Languages(),
    locale: const Locale('ar'),
    // The Languages it shulde be Arabic when tha App Start
    
    );
  }
}
