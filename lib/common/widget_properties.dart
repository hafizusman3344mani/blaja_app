import 'package:flutter/material.dart';

class WidgetProperties {
  //*********************************Screen Width******************************
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  //*********************************Screen Height******************************
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
