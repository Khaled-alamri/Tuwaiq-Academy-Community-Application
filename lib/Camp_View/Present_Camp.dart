import '../Packages/package.dart';


class PresentCamp extends StatelessWidget {
  const PresentCamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          flutterLiftShadow,
          flutterRightShadow
        ]),
        image: DecorationImage(
            image: AssetImage(
              "images/AppBarIcon/Flutter_Logo-removebg-preview.png",
            ),
            opacity: 0.3),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
            title: "معسكر Flutter",
            iconColor: postColor,
            height: 70,
            titleColor: postColor,
            iconImage: "images/BackGround/Flutter_Logo.png"),
        body: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: ListView(
            children: [
              //-------------------- Card one for description -------------------------
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CardInformation(
                        descriptionTitle: "الوصف:",
                        description:
                            " معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة، ستتعلم في هذا المعسكر على كيفية بناء واجهات التطبيق والتنقل بينها، بالإضافة إلى كيفية التعامل مع البيانات وحفظها."),
                    CardIcon(
                      iconColor: postColor,
                      iconImage: "images/CardIcon/discription.png",
                    ),
                  ],
                ),
              ),

              //-------------------- Card Tow for Goals -------------------------
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CardInformation(
                        descriptionTitle: "الاهداف:",
                        description:
                            "تطوير تطبيقات متقدمة تعمل على نظام iOS ونظام Android.ربط التطبيقات مع قواعد بيانات داخلية أو سحابية.تعلّم طرق اكتشاف ومعالجة الأخطاء البرمجية.اكتساب مهارة التعلّم من المصادر البرمجية المعتمدة.تعلّم كيفية كتابة برامج ذات أسطر برمجية نظيفة وواضحة Clean Code.تصميم واجهات التطبيقات والاعتناء بتجربة المستخدم فيها."),
                    CardIcon(
                      iconColor: postColor,
                      iconImage: "images/CardIcon/goal.png",
                    ),
                  ],
                ),
              ),

              //-------------------- Card Three for Teachers -------------------------
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CardInformation(
                        descriptionTitle: "المعسكر بمتابعة وإشراف:",
                        description: "أ.م.فهد العازمي \n أ.م. هادي "),
                        CardIcon(iconColor: postColor, iconImage: "images/CardIcon/teacher.png",)
                  ],//
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}