import 'package:blaja_app/common/widget_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoryContainer extends StatelessWidget {
  final Color color ;
  final String img;
  final String text;

  const CustomCategoryContainer({ this.color,this.img,this.text}) ;
  @override
  Widget build(BuildContext context) {
    return  color!=null?Container(
      width:
      WidgetProperties.screenWidth(context) * .16,
      height: WidgetProperties.screenHeight(context) *
          .25,
      decoration: BoxDecoration(
        color: color.withOpacity(.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            img,
            width: 20,
            height: 20,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ],
      ),
    ):Container( width:
    WidgetProperties.screenWidth(context) * .16,
      height: WidgetProperties.screenHeight(context) *
          .25,);
  }
}
