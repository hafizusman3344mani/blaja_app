import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  final double radius;
  final double height;
  final double width;
  final String text;
  final double fontSize;
  final TextStyle textStyle;
  final Color color;
  final TextAlign textAlign;
  final Function onPressed;

  const GenericButton({
    Key key,
    this.radius,
    @required this.text,
    this.color,
    this.height,
this.textStyle,
    this.width,
    this.fontSize,
    this.textAlign,
    this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? null,
      width: width ?? null,
      child: RaisedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style:textStyle!=null?textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize ?? null,
                  fontWeight: FontWeight.bold),
              textAlign: textAlign,
            ),
          ],
        ),
        color: color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(radius ?? 0.0),
        ),
      ),
    );
  }
}
