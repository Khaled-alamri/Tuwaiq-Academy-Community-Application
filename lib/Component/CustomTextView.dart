import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextViewPost extends StatelessWidget {
  const CustomTextViewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 211,
              width: 352,
              color: Color(0xff3FB7F8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
           backgroundColor: Colors.black,
           maxRadius: 20,
),
  Text("خالد",style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    //اذا نبي نعرض البيانات الي جايه من الداتا بيز
                    AutoSizeText("myController.text",style: TextStyle(fontSize: 16),
                    maxLines: 5,),
                  ],
                ),
              ),
            );
  }
}