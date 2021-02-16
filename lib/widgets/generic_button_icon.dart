import 'package:flutter/material.dart';

class GenericButtonIcon extends StatelessWidget {
  final double radius;
  final double height;
  final double width;
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;
  final IconData icon;
  final Function onPressed;

  const GenericButtonIcon(
      {Key key,
      this.radius,
      @required this.text,
      this.color,
      this.height,
      this.width,
      this.fontSize,
      this.textAlign,
      this.onPressed,
      this.icon})
      : super(key: key);
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
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize ?? null,
                  fontWeight: FontWeight.bold),
              textAlign: textAlign,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              icon ?? null,
              color: Colors.white,
            )
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
