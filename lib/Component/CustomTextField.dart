import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.validaterMasseg,
      required this.hintTextShow,
      required this.labelTextShow,
      required this.keyboardType,
      this.IconForText,
      this.maxLength});
  final String validaterMasseg;
  final String hintTextShow;
  final String labelTextShow;
  final TextInputType keyboardType;
  final IconData? IconForText;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      validator: (String? value) {
        if (value!.isEmpty) {
          return validaterMasseg.toString();
        }
      },
      controller: TextEditingController(),
      decoration: InputDecoration(
        prefixIcon: Icon(
          IconForText,
          color: HexColor("#7660A9"),
        ),
        hintText: hintTextShow.toString(),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        label: Text(
          labelTextShow,
          style: TextStyle(color: HexColor("#7660A9")),
        ),
        filled: true,
        fillColor: Color.fromARGB(153, 255, 255, 255),
      ),
      maxLength: maxLength,
      maxLines: 5,
    );
  }
}

class CustomTextFieldPost extends StatelessWidget {
  const CustomTextFieldPost(
      {super.key,
      //required this.validaterMasseg,
      required this.labelTextShow,
      this.IconForText,
      this.maxLength, this.Controller});
  //final String validaterMasseg;
  final String labelTextShow;
  final IconData? IconForText;
  final int? maxLength;
  final TextEditingController? Controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // validator: (String? value) {
      //   if (value!.isEmpty) {
      //     return validaterMasseg.toString();
      //   } add validator in text
      // },
      controller: Controller,
      decoration: InputDecoration(
        prefixIcon: Icon(
          IconForText,
          color: HexColor("#7660A9"),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        label: Text(
          labelTextShow,
          style: TextStyle(color: HexColor("#7660A9")),
        ),
        filled: true,
        fillColor: Color.fromARGB(153, 255, 255, 255),
      ),
      maxLength: maxLength,
      maxLines: 5,
    );
  }
}
