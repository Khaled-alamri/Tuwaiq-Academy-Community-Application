import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DefaultFormField extends StatelessWidget {
  String? label;
  TextEditingController? controller;
  TextInputType? type;
  void Function(String)? onSubmit;
  void Function(String)? onChange;
  void Function(String?)? onSaved;
  void Function()? onTap;
  bool isPassword = false;
  String? Function(String?)? validate;
  IconData? prefix;
  IconData? suffix;
  void Function()? suffixPressed;
  bool isClickable = true;
  bool isSuffix = false;
  int? minLines;
  int? maxLines;
  double? borderWidth;
  String? hintText;
  Color? prefixColorIcon;
  Color? fillColor;
  Color? hintColor;
  Color borderColor = Colors.grey;
  Color? labelColor;
  Color focusedColorBorder;
  String? intialVal;
  bool autoFocus;
  Key? key;

  DefaultFormField(
      {this.key,
      this.controller,
      this.isClickable = true,
      this.isPassword = false,
      this.isSuffix = false,
      this.label,
      this.onChange,
      this.onSaved,
      this.onSubmit,
      this.onTap,
      this.prefix,
      this.suffix,
      this.suffixPressed,
      this.type,
      this.validate,
      this.minLines,
      this.maxLines,
      this.borderWidth = 10.0,
      this.hintText,
      this.prefixColorIcon,
      this.fillColor,
      this.hintColor,
      required this.borderColor,
      this.labelColor,
      this.focusedColorBorder = Colors.grey,
      this.intialVal,
      this.autoFocus = false});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        key: key,
        controller: controller,
        style: Theme.of(context).textTheme.bodyText2,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: onSubmit,
        onSaved: onSaved,
        autofocus: autoFocus,
        onChanged: onChange,
        initialValue: intialVal,
        onTap: onTap,
        validator: validate,
        minLines: minLines,
        maxLines: maxLines,
        decoration: InputDecoration(
            fillColor: fillColor,
            focusedErrorBorder: InputBorder.none,
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 1.0),
            ),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: hintColor),
            focusColor: HexColor("#7660A9"),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: HexColor("#7660A9"),
              ),
            ),
            labelText: label,
            labelStyle: TextStyle(color: labelColor),
            prefixIcon: prefix != null
                ? Icon(
                    prefix,
                    color: prefixColorIcon,
                  )
                : null,
            suffixIcon: isSuffix
                ? IconButton(
                    onPressed: suffixPressed,
                    icon: Icon(
                      suffix,
                      color: HexColor("#7660A9"),
                    ))
                : null));
  }
}
