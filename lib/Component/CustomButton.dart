import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.heigthOfButton,
      required this.widthOfButton,
      required this.NameOfButton,
      this.onPressed,
       required this.Colors});
  final double heigthOfButton;
  final double widthOfButton;
  final String NameOfButton;
  final Function()? onPressed;
  final Color Colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: heigthOfButton,
          width: widthOfButton,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors,
                
              ),
              onPressed: onPressed,
              child:
                  Text(
                    NameOfButton.toString(),
                    style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                  ),
                  
               
              ),
        ),
      ],
    );
  }
}
class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon(
      {super.key,
      required this.heigthOfButton,
      required this.widthOfButton,
      required this.NameOfButton,
      this.onPressed,
      this.Img, required this.Colors});
  final double heigthOfButton;
  final double widthOfButton;
  final String NameOfButton;
  final Function()? onPressed;
  final String? Img;
  final Color Colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: heigthOfButton,
          width: widthOfButton,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:Colors,
                
              ),
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      NameOfButton.toString(),
                      style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF)),
                    ),
                  ),
                  ImageIcon(
                    AssetImage(Img.toString()),
                    color: Color(0xffFFFFFF),
                    size: 30,
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
