import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RodioB extends StatefulWidget {
  const RodioB({super.key});

  @override
  State<RodioB> createState() => _RodioBState();
}

class _RodioBState extends State<RodioB> {
  String? b ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       
        Radio(
            value: "مقال",
            groupValue: b,
            onChanged: (val) {
              setState(() {
                 b=val;
              });
            }),
             Text("مقال"),
           
        Radio(
            value: "سوال",
            groupValue: b ,
            onChanged: (val) {
              setState(() {
                b = val;
              });
            }),
             Text("سؤال"),
      ],
    );
  }
}
