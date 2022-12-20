
import 'package:final_project/View/OnBoarding/PageView.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages =[
    GetPage(name: RouterNames.pageView , page: () => PageViewScreen(),),
];

class RouterNames {
  static String pageView = "/PageView";
}