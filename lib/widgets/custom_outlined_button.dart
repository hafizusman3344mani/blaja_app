import 'package:flutter/material.dart';

class CustomOutLinedButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  final Color borderColor;


  const CustomOutLinedButton({this.title,this.borderColor, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Text(
        title,
        style: TextStyle(color: borderColor!=null?borderColor:Colors.white),
      ),
      borderSide: BorderSide(color: borderColor!=null?borderColor:Colors.white),
      onPressed: onPressed,
    );
  }
}
