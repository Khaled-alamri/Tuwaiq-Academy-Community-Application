import 'package:final_project/Controller/Profile%20controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avter extends StatelessWidget {
  const Avter({super.key, required this.Img, this.size});
  final String Img;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        profileController().addImagesProfile();
      },
      child: CircleAvatar(
        backgroundColor: Color(0xff4A3A75),
        radius: size,
        child: ClipOval(
          child: Image.asset(
            Img,
            width: 130,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
