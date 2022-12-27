import 'package:final_project/Style/Style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {super.key,
      this.height,
      this.title,
      this.titleColor,
      this.iconColor,
      this.onPressed,
      this.iconImage});
  final double? height;
  String? title;
  Color? titleColor;
  Color? iconColor;
  Function()? onPressed;
  String? iconImage;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      toolbarHeight: height, 
      leading: IconButton(
          onPressed: onPressed,
          icon: ImageIcon(
            AssetImage(iconImage!),
            size: 30,
            color: iconColor,
          )),

      title: Text(
        title.toString(),
        style: TextStyle(color: titleColor),
      ),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
      backgroundColor: Colors.white.withOpacity(0.3),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}

class CustomAppBar1 extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar1(
      {super.key,
      this.height,
      this.title,
      this.titleColor,
      this.iconColor,
      this.onPressed,
      });
  final double? height;
  String? title;
  Color? titleColor;
  Color? iconColor;
  Function()? onPressed;
  

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      toolbarHeight: height, 
      leading:

       Text(
        title.toString(),
        style: TextStyle(color: titleColor),
      ),
      centerTitle: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
      ),
      backgroundColor: Colors.white.withOpacity(0.3),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height!);
}

