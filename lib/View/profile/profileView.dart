import '../../Packages/package.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4A3A75),
      body: ListView(children: [
        Container(
          height: Get.height * 0.08,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, top: 30, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "حياك الله، رهف محمد",
                  style: TextStyle(fontSize: 26, color: Color(0xffFFFFFF)),
                ),
                ImageIcon(AssetImage("images/mdi_location-exit.png"),
                    size: 50, color: Color(0xffFFFFFF)),
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultPadding,
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
              SizedBox(
                  height: 170,
                  child: Avter(
                    Img: "images/images 1.png",
                    size: 70,
                  )),
              Container(
                width: 366,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor.withOpacity(0.1)),
                child: Column(children: [
                  ItemProfile(
                    name: "بيانات شخصيه",
                    ontap: () {
                      Get.to(My_Info());
                    },
                  ),
                  ItemProfile(
                      name: "منشوراتي",
                      ontap: () {
                        Get.to(My_Post());
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
                  ItemProfile(name: "الدعم الفني"),
                ]),
              )
            ],
          ),
        ))
      ]),
    );
  }
}
