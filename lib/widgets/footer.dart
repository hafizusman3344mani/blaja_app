import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Color color;
  final TextStyle textStyle;

  const Footer({this.color, this.textStyle});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 150),
      color: color,
      // height: WidgetProperties.screenHeight(context) * .4,
      width: WidgetProperties.screenWidth(context),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          CustomText(
            text: 'Questions? Contact us.',
            textStyle: textStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'FAQs',
                    style: TextStyle(fontSize: 16, color: Color(0xFFA1A1A1)),
                  ),
                  Text(
                    'Privacy',
                    style: TextStyle(fontSize: 16, color: Color(0xFFA1A1A1)),
                  ),
                  Text(
                    'Help Center',
                    style: TextStyle(fontSize: 16, color: Color(0xFFA1A1A1)),
                  ),
                ],
              ),
              SizedBox(
                width: 150,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terms of Use',
                    style: TextStyle(fontSize: 16, color: Color(0xFFA1A1A1)),
                  ),
                  Text(
                    'Contact Us',
                    style: TextStyle(fontSize: 16, color: Color(0xFFA1A1A1)),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
