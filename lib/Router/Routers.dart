
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:final_project/View/Splash_Screen/SplashScreen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages =[
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
    GetPage(name: RouterNames.splash , page: () => SplashScreen(),),
];

class RouterNames {
  static String pageView = "/PageView";
  static String splash = "/SplashScreen";

}