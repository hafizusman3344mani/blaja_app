// Stack(
// children: [
// SvgPicture.asset('assets/svgs/edit.svg'),
// SvgPicture.asset('assets/svgs/incircle.svg'),
// ],
// ),

import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/signin_personal_info.dart';
import 'package:blaja_app/widgets/custom_outlined_button.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInThree extends StatelessWidget {
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
                        'Manage Profiles:?',
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
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/man.png',
                                      height: 100,
                                      width: 100,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.black.withOpacity(.8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignInPersonalInfo(),
                                                ),
                                              );
                                            },
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SvgPicture.asset(
                                                    'assets/svgs/edit.svg',
                                                    height: 40,
                                                    width: 40,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/svgs/incircle.svg',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
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
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/girl.png',
                                      height: 100,
                                      width: 100,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      color: Colors.black.withOpacity(.8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignInPersonalInfo(),
                                                ),
                                              );
                                            },
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: SvgPicture.asset(
                                                    'assets/svgs/edit.svg',
                                                    height: 40,
                                                    width: 40,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/svgs/incircle.svg',
                                                      height: 20,
                                                      width: 20,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFF404040),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Add Profile',
                                  style: Constants.textLight,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: GenericButton(
                            text: 'Done',
                            textAlign: TextAlign.center,
                            color: Colors.white,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            width: WidgetProperties.screenWidth(context) * .1,
                            textStyle: TextStyle(color: Colors.black),
                          ))
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
