import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/widgets/custom_outlined_button.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Lecture',style: TextStyle(color: Colors.white,fontSize: 20),),
              Text('It Fundamental Structure \n& Monoming',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.only(
                    left: 10, top: 40, right: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    GenericButton(
                      text: 'Enter Lecture',
                      radius: 20,
                      textStyle: Constants.textLightDark,
                      color: Color(0xFFFFFFFF),
                      onPressed: () {},
                    ),
                    GenericButton(
                      text: 'Enroll Now',
                      radius: 20,
                      color: Color(0xFFE50914),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                width: WidgetProperties.screenWidth(context),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text('Enrolled Courses',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    Row(children: [

                    ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
