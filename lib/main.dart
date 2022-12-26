import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:final_project/Localization/Languages.dart';
import 'package:final_project/Router/Routers.dart';
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:final_project/View/Sing/signup_and_signin_screen.dart';
import 'package:final_project/View/Splash_Screen/SplashScreen.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

 // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: GetStorage().read("userID") == null ? const SignUpAndSignIn() : AppLayout(),
      initialRoute: RouterNames.appLayout,
      getPages: getPages,
      translations: Languages(),
      locale: const Locale('ar'),
      // The Languages it shulde be Arabic when tha App Start
    );
  }
}
