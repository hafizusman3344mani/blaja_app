import 'package:blaja_app/common/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final double borderRadius;
  final Color borderColor;
  final Color fillColor;
  final Color cursorColor;
  final TextStyle textStyle;
  final TextStyle hintStyle;

  const CustomTextFormField(
      {this.hintText,
      this.borderColor,
      this.borderRadius,
      this.fillColor,
      this.cursorColor,
      this.textStyle,
      this.hintStyle});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: textStyle,
      cursorColor: cursorColor,
      decoration: InputDecoration(
        focusColor: borderColor,
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        hintStyle: hintStyle,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor,
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 0),
        ),
      ),
    );
  }
}
