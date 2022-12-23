import 'package:final_project/View/Camp/CampPresnt.dart';
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:final_project/View/app_layout.dart';
import 'package:final_project/View/Sing/signup_and_signin_screen.dart';
import 'package:final_project/View/Sing/signup_screen.dart';
import 'package:final_project/View/profile/profileView.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: RouterNames.pageView,
    page: () => PageViewScreen(),
  ),
  GetPage(
    name: RouterNames.CampPresnt,
    page: () => const CampPresnt(),
  ),
  GetPage(
    name: RouterNames.profile,
    page: () => const profile(),
  ),
  GetPage(
    name: RouterNames.SignUpAndSignIn,
    page: () => const SignUpAndSignIn(),
  ),
  GetPage(name: RouterNames.SignUpScreen, page: () => SignUpScreen()),
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
    GetPage(name: RouterNames.appLayout , page: () => AppLayout(),),
    GetPage(name: RouterNames.CampPresnt , page: () => const CampPresnt(),),
    GetPage(name: RouterNames.profile , page: () => const profile(),),
    GetPage(name: RouterNames.SignUpAndSignIn , page: () => const SignUpAndSignIn(),),
];

class RouterNames {
  static String pageView = "/PageView";
  static String appLayout = "/appLayout";
  static String CampPresnt = "/CampPresnt";
  static String profile = "/profile";
  static String SignUpAndSignIn = "/SignUpAndSignIn";
  static String SignUpScreen = "/SignUpScreen";
}
