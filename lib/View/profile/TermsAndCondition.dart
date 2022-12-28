
import '../../Packages/package.dart';


class TermsAndCondition extends StatelessWidget {
  TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [liftShadow, rightShadow]),
        image: DecorationImage(
            image: AssetImage(
              "images/Logo.png",
            ),
            opacity: 0.3),
      ),
      child: Scaffold(
        appBar: CustomAppBar(
          height: 70,
          iconColor: primaryColor,
          title: "الشروط والاحكام",
          titleColor: primaryColor,
          iconImage: "images/AppBarIcon/Back.png",
          onPressed: () {
            Get.back();
          },
          backgroundColor: primaryColor,
        ),
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 50),
              child: Container(
                height: 500,
                color: Color(0xffFFFFFF).withOpacity(0.5),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: AutoSizeText(
                    "الشروط والأحكام الوثيقة التي تحكم العلاقة التعاقدية بين مقدم الخدمة ومستخدمها. على الويب ، يُسمى هذا المستند أيضًاشروط الخدمة (ToS) أو شروط الاستخدام أو EULA (اتفاقية ترخيص المستخدم النهائي) أو الشروط العامة أو الملاحظات القانونية",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    maxLines: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
