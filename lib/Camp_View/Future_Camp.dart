import '../Packages/package.dart';


class FutureCamp extends StatelessWidget {
  const FutureCamp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.white,
          Color(0xFFFFEEB2),
        ]),
        image: DecorationImage(
            image: AssetImage(
              "images/BackGround/JavaScript_Logo.png",
            ),
            opacity: 0.3),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          backgroundColor: Colors.white.withOpacity(0.5) ,
            title: "معسكر JavaScrept",
            iconColor: questionsColor,
            height: 70,
            titleColor: questionsColor,
            iconImage: "images/AppBarIcon/Back.png",
             onPressed: (){
              Get.back();
             }),
        body: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: ListView(
            children: [
              //-------------------- Card one description -------------------------
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CardInformation(
                        descriptionTitle: "الوصف:",
                        description:
                            " معسكر تدريبي مكثف لتطوير تطبيقات الجوال والويب باستخدام إطار عمل Flutter، والذي يعتبر الإطار الأحدث والأسهل لبناء تطبيقات تعمل على عدة أنظمة، ستتعلم في هذا المعسكر على كيفية بناء واجهات التطبيق والتنقل بينها، بالإضافة إلى كيفية التعامل مع البيانات وحفظها."),
                    CardIcon(
                      iconColor: questionsColor,
                      iconImage: "images/CardIcon/discription.png",
                    ),
                  ],
                ),
              ),

              //-------------------- Card Tow Goals -------------------------
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CardInformation(
                        descriptionTitle: "الاهداف:",
                        description:
                            "تطوير تطبيقات متقدمة تعمل على نظام iOS ونظام Android.ربط التطبيقات مع قواعد بيانات داخلية أو سحابية.تعلّم طرق اكتشاف ومعالجة الأخطاء البرمجية.اكتساب مهارة التعلّم من المصادر البرمجية المعتمدة.تعلّم كيفية كتابة برامج ذات أسطر برمجية نظيفة وواضحة Clean Code.تصميم واجهات التطبيقات والاعتناء بتجربة المستخدم فيها."),
                    CardIcon(
                      iconColor: questionsColor,
                      iconImage: "images/CardIcon/goal.png",
                    ),
                  ],
                ),
              ),

              //-------------------- Card Three Teashers -------------------------
              Align(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    CardInformation(
                        descriptionTitle: "المعسكر بمتابعة وإشراف:",
                        description: "أ.م.فهد العازمي \n أ.م. هادي "),
                    CardIcon(
                      iconColor: questionsColor,
                      iconImage: "images/CardIcon/teacher.png",
                    )
                  ], //
                ),
              ),

              //-------------------- Card Foure for Regestration -------------------------
              RegistrationCard(
                descriptionRegistration:
                    "يسعدنا انضمامكم عن طريق الضغط على الايقونة التالية",
                iconColor: questionsColor,
                iconImage: "images/CardIcon/Regester.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
