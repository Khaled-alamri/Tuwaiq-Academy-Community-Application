import 'package:final_project/Component/TitelCamp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class My_Post extends StatelessWidget {
  const My_Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: HexColor("#f2eff6"),
     appBar: PreferredSize(
          preferredSize: Size.fromHeight(180), // Set this height
          child: SafeArea(
            child: Column(
              children: [
              CustomTitleWithRadius(Title:  "منشوراتي",height1: 150,),
                    ],
                  ),
          ),
              ),

      body: ListView(
        children: [
                
        ],
      ),
    );
  }
}