import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ViewPost12 extends GetxController {
  String authName = "";
  String title = "";
  String image = "";
  String body = "";
  String authImage = "";
  bool article = true;

  PostView() async {
    Map<String, dynamic> userdata = {};
    authName = userdata["authName"];
    title = userdata["title"];
    image = userdata["image"];
    body = userdata["body"];
    authImage = userdata["authImage"];
    update();
  }
}
