import 'package:auto_size_text/auto_size_text.dart';
import 'package:final_project/Component/TitelCamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: HexColor("#f2eff6"),

      body: ListView(
        children: [
          CustomTitleWithRadius(Title:  "الشروط والاحكام",height1: 150,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 50),
           child: Container(
            color: Color(0xffFFFFFF),
            child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
                child: AutoSizeText("الشروط والأحكام الوثيقة التي تحكم العلاقة التعاقدية بين مقدم الخدمة ومستخدمها. على الويب ، يُسمى هذا المستند أيضًاشروط الخدمة (ToS) أو شروط الاستخدام أو EULA (اتفاقية ترخيص المستخدم النهائي) أو الشروط العامة أو الملاحظات القانونية",style:TextStyle(fontSize: 27,) , maxLines: 30,),
              ),
           ),
         )
        ],
      ),
    );
  }
}