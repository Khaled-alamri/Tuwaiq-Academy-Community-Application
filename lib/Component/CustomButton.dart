import 'package:final_project/Packages/package.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

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
                    NameOfButton,
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
class CustomButtonOfCamp extends StatelessWidget {
  const CustomButtonOfCamp(
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
        Padding(
          padding: const EdgeInsets.only(top: 20,right: 10),
          child: SizedBox(
            height: heigthOfButton,
            width: widthOfButton,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:Colors,
                  shape: RoundedRectangleBorder(
                        side:  BorderSide(
                                width: 0, // thickness
                                color: Color(0xffFFFFFF) // color
                        ),
                        borderRadius: BorderRadius.circular(90) 
                ) 
                  
                ),
                onPressed: onPressed,
                child:
                    Text(
                      NameOfButton,
                      style: TextStyle(fontSize: 20, color: Color(0xff4A3A75)),
                    ),
                    
                 
                ),
          ),
        ),
      ],
    );
  }
}
Widget filledButton({title, onPressed, radius,  Color backColor =  primaryColor}) {
  return Center(
    child: Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: backColor.withOpacity(0.8)
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    ),
  );
}
