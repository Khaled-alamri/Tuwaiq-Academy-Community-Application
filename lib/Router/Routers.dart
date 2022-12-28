

import 'package:final_project/Camp_View/Future_Camp.dart';
import 'package:final_project/Camp_View/Present_Camp.dart';
import 'package:final_project/View/Guste/GustArticleView.dart';
import 'package:final_project/View/Guste/GusteProblemScreen.dart';
import 'package:final_project/View/article/atricle%20view.dart';

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
  GetPage(name: RouterNames.SignInScreen, page: () => SignInScreen()),
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
    GetPage(name: RouterNames.splash , page: () => SplashScreen(),),
    GetPage(name: RouterNames.appLayout , page: () => AppLayout(),),
    GetPage(name: RouterNames.CampPresnt , page: () => const CampPresnt(),),
    GetPage(name: RouterNames.profile , page: () => const profile(),),
    GetPage(name: RouterNames.SignUpAndSignIn , page: () => const SignUpAndSignIn(),),
    GetPage(name: RouterNames.GuestAppLayout , page: () =>  GuestAppLayout(),),
    GetPage(name: RouterNames.FutureCamp , page: () =>  FutureCamp(),),
    GetPage(name: RouterNames.PresentCamp , page: () =>  PresentCamp(),),
    GetPage(name: RouterNames.ArticleView , page: () =>  ArticleView(),),
    GetPage(name: RouterNames.GustArticleView , page: () =>  GustArticleView(),),
    GetPage(name: RouterNames.GusteProblemScreen , page: () =>  GusteProblemScreen(),),
];

class RouterNames {
  static String pageView = "/PageView";
  static String splash = "/SplashScreen";
  static String appLayout = "/appLayout";
  static String CampPresnt = "/CampPresnt";
  static String profile = "/profile";
  static String SignUpAndSignIn = "/SignUpAndSignIn";
  static String SignUpScreen = "/SignUpScreen";
  static String SignInScreen = "/SignInScreen";
  static String GuestAppLayout = "/GuestAppLayout"; 
  static String FutureCamp = "/FutureCamp"; 
  static String PresentCamp = "/PresentCamp"; 
  static String ArticleView = "/ArticleView"; 
  static String GustArticleView = "/GustArticleView"; 
  static String GusteProblemScreen = "/GusteProblemScreen"; 

}
