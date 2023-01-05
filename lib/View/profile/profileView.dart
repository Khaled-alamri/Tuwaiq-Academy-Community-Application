import 'dart:io';
import 'package:final_project/Component/Profile/Avater.dart';
import 'package:final_project/Component/Profile/ItemOfProfile.dart';
import 'package:final_project/Controller/Comments.dart';
import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:final_project/Controller/signOutController.dart';
import 'package:final_project/Services/firebase/articleSystem.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Packages/package.dart';

class profile extends StatelessWidget {
  profile({super.key});

  SignOutController getout = Get.put(SignOutController());
  profileController C_Profile = Get.find();

  articleSystem article = articleSystem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(children: [
        SizedBox(
          height: 15,
        ),
        Container(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 40, top: 30, right: 50, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${C_Profile.firstName} ${C_Profile.lastName}",
                  style: TextStyle(fontSize: 26, color: Color(0xffFFFFFF)),
                ),
                InkWell(
                  onTap: () {
                    getout.signingOut();
                  },
                  child: ImageIcon(AssetImage("images/mdi_location-exit.png"),
                      size: 50, color: Color(0xffFFFFFF)),
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
          height: Get.height / 1,
          width: Get.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Color(0xffFFFFFF)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 13.0),
                child: Avter1(),
              ),
              Container(
                width: 366,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor.withOpacity(0.2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding - 5),
                  child: Column(children: [
                    ItemProfile(
                      name: "البيانات الشخصية",
                      ontap: () {
                        Get.to(My_Info());
                      },
                    ),
                    ItemProfile(
                        name: "منشوراتي",
                        ontap: () {
                          Get.to(My_Post());
                          article.viewMyArticle(idUser: "1ItdkMNGcjiTUlzUTcNM");
                        }),
                    ItemProfile(
                      name: "تحديث كلمة السر",
                      ontap: () {
                        Get.to(ForgePassword());
                      },
                    ),
                    ItemProfile(
                        name: "سياسة الاستخدام",
                        ontap: (() {
                          Get.to(TermsAndCondition());
                        })),
                    ItemProfile(
                        ontap: () {
                          openwhatsapp();
                        },
                        name: "الدعم الفني"),
                  ]),
                ),
              )
            ],
          ),
        )),
        
      ]),
    );
  }
}

openwhatsapp() async {
  var whatsapp = "500501517";
  var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=hello";
  var whatappURL_ios = "https://wa.me/$whatsapp?text=${Uri.parse("hello")}";
  if (Platform.isIOS) {
    // for iOS phone only
    if (await canLaunch(whatappURL_ios)) {
      await launch(whatappURL_ios, forceSafariVC: false);
    } else {
      Get.snackbar("الواتس اب غير متاح", "فضلاً  قم بتثبيت الواتس اب");
    }
  } else {
    // android , web
    if (await canLaunch(whatsappURl_android)) {
      await launch(whatsappURl_android);
    } else {
      Get.snackbar("الواتس اب غير متاح \u26A0", " فضلاً قم بتثبيت الواتس اب");
    }
  }
}
