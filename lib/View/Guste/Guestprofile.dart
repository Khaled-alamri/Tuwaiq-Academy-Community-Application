import 'package:final_project/Component/CustomButton.dart';
import 'package:final_project/Packages/package.dart';

class Guestprofile extends StatelessWidget {
  const Guestprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding + 10),
        child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "حياك الله،",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: primaryColor),
                  ),
                  Text("\t\t\t\t\t\t \tيسعدنا انضمامك..",
                      style: TextStyle(fontSize: 25, color: primaryColor)),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            // ElevatedButton(
            //   onPressed: () {

            //   }, child: Text("تسجيل جديد"))
            filledButton(
              onPressed:(){
                Get.toNamed(RouterNames.SignUpScreen);
              } ,
              radius: 20,
              title: "تسجيل جديد",
              backColor: slidAndfloatColor,
              ),

          ],
        ),
      ),
    );
  }
}
