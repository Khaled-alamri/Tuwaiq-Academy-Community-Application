
import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
   CardIcon({
    super.key,
     this.iconColor,
     this.iconImage,
     this.onPressed
  });

  Color? iconColor;
  Function()? onPressed;
  String? iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30, right: 280),
        child: IconButton(
            onPressed: onPressed,
            icon:ImageIcon(AssetImage(iconImage!), size: 30, color: iconColor,) ),);
  }
}
