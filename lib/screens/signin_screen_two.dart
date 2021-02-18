import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/signin_screen_three.dart';
import 'package:blaja_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          width: WidgetProperties.screenWidth(context),
          height: WidgetProperties.screenHeight(context),
          child: Stack(
            children: [
              Positioned(
                left: 30,
                top: 30,
                child: Image.asset(
                  'assets/images/blaja.png',
                  width: 110.0,
                  height: 30.0,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Who\'s Watching?',
                        style: Constants.textMedium,
                      ),
                      Container(
                        width: WidgetProperties.screenWidth(context) / 2.5,
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/man.png',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Maritn Alex',
                                  style: Constants.textLight,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/girl.png',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Martha',
                                  style: Constants.textLight,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/boy.png',
                                  height: 100,
                                  width: 100,
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Errico',
                                  style: Constants.textLight,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: CustomOutLinedButton(title: 'Manage Profile',onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInThree()));
                          },))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
