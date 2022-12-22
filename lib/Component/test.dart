import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.validaterMasseg,
      this.hintTextShow,
      this.labelTextShow,
       this.keyboardType,
      this.IconForText, this.controller});
  final String? validaterMasseg;
  final String? hintTextShow;
  final String? labelTextShow;
  final TextInputType? keyboardType;
  final IconData? IconForText;
  final TextEditingController? controller;

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
          labelTextShow!,
          style: TextStyle(color: HexColor("#7660A9")),
        ),
        filled: true,
        fillColor: Color.fromARGB(153, 255, 255, 255),
      ),
    );
  }
}
