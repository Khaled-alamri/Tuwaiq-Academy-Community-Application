
import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class CustomSlideButton extends StatelessWidget {
   CustomSlideButton({
    super.key,
    this.text,
    this.slideIcon,
    this.onSubmit,
  });
  String? text;
  String? slideIcon;
  Function()? onSubmit;

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      sliderButtonIconPadding: 10,
      height: 55,
      elevation: 0,
      borderRadius: 5,
      onSubmit: onSubmit,
      outerColor: slidAndfloatColor.withOpacity(0.5),
      innerColor: Colors.white,
    //  sliderButtonIcon: Icon(Icons.lock),
      sliderButtonIcon: ImageIcon(AssetImage(
      slideIcon.toString(), ), 
       color: slidAndfloatColor,
       size: 20,), 
      textStyle: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
      text: text.toString(),
      
    );
  }
}
