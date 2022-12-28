

import '../../Packages/package.dart';


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
    GetPage(name: RouterNames.splash , page: () => SplashScreen(),),
    GetPage(name: RouterNames.appLayout , page: () => AppLayout(),),
    GetPage(name: RouterNames.CampPresnt , page: () => const CampPresnt(),),
    GetPage(name: RouterNames.profile , page: () => const profile(),),
    GetPage(name: RouterNames.SignUpAndSignIn , page: () => const SignUpAndSignIn(),),
    GetPage(name: RouterNames.gusteHomePage , page: () => const GusteHomePage(),),
];

class RouterNames {
  static String pageView = "/PageView";
  static String splash = "/SplashScreen";
  static String appLayout = "/appLayout";
  static String CampPresnt = "/CampPresnt";
  static String profile = "/profile";
  static String SignUpAndSignIn = "/SignUpAndSignIn";
  static String SignUpScreen = "/SignUpScreen";
  static String gusteHomePage = "/gusteHomePage"; 

}
