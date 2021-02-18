import 'dart:ui';
import 'package:flutter/material.dart';

class Constants {

  //**************Font size********************
  static const double boldFontSize = 40;

  static const double mediumFontSize = 30;

  static const double lightFontSize = 20;

  static const double hintFontSize = 20;

  //**************Text Style Light********************
  static TextStyle textBold = TextStyle(
    fontFamily: 'Sans',
    fontSize: Constants.boldFontSize,
    color: Colors.white,
  );

  static TextStyle textMedium = TextStyle(
    fontFamily: 'Sans',
    fontSize: Constants.mediumFontSize,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
//hello
  static TextStyle textLight = TextStyle(
    fontFamily: 'Sans',
    fontSize: Constants.lightFontSize,
    color: Colors.white,
  );

  //**************Text Style Dark********************
  static TextStyle textBoldDark = TextStyle(
    fontFamily: 'Sans',
    fontSize: Constants.boldFontSize,
    color:Color(0xFF4d4d4d),
  );

  static TextStyle textMediumDark = TextStyle(
    fontFamily: 'Sans',
    fontSize: Constants.mediumFontSize,
    fontWeight: FontWeight.w600,
    color:Color(0xFF4d4d4d),
  );

  static TextStyle textLightDark = TextStyle(
    fontFamily: 'Sans',
    fontSize: Constants.lightFontSize,
    color:Color(0xFF4d4d4d),
  );

  static TextStyle hintLight = TextStyle(
    fontSize: Constants.hintFontSize,
    color:Color(0xFFBCBCBC),
  );
}
