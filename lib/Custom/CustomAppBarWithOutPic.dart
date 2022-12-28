import 'package:final_project/Style/Style.dart';
import 'package:flutter/material.dart';

class CustomAppBarWithOutPic extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBarWithOutPic(
      {super.key,
      this.height,
      this.title,
      this.titleColor,
      this.iconColor,
      required  this.backgroundColor
      });
  final double? height;
  String? title;
  Color? titleColor;
  Color? iconColor;
  Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(   
      toolbarHeight: height,
      title: Text(
        title.toString(),
        style: TextStyle(color: titleColor, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20), bottomLeft: Radius.circular(25)),
      ),
      backgroundColor: backgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}
