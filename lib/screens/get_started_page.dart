import 'dart:ui';

import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/register_screen_one.dart';
import 'package:blaja_app/widgets/custom_edittext.dart';
import 'package:blaja_app/widgets/custom_list_tile.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:blaja_app/widgets/generic_button_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatefulWidget {
  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF707070),
        child: SingleChildScrollView(
          child: Column(
            children: [
//*************************Main Stack**************************
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Container(
                      height: WidgetProperties.screenHeight(context) * .98,
                      decoration: BoxDecoration(
                          // color: Colors.green.withOpacity(0.2),
                          image: DecorationImage(
                              image: AssetImage('assets/images/first.png'),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  Container(
                    // alignment: Alignment.bottomCenter,
                    height: WidgetProperties.screenHeight(context) * .98,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 130,
                          ),
                          CustomText(
                            text:
                                'Unlimited Couses, Courses \n Show & much more.',
                            textStyle: Constants.textBold,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: 'Watch anywhere. Cancel anytime.',
                            textStyle: Constants.textMedium,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          CustomText(
                            text:
                                'Ready to watch? Enter your email to create or restart your membership.',
                            textStyle: Constants.textLight,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 130, vertical: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(child: CustomEditText()),
                                GenericButtonIcon(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterScreenOne()));
                                  },
                                  fontSize: Constants.lightFontSize,
                                  color: Color(0xFFE50914),
                                  text: 'Get Started',
                                  height: 48,
                                  width: 180,
                                  icon: Icons.arrow_forward_ios,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // color: Colors.black12.withOpacity(.6),
                  ),
                  Positioned(
                    left: 30,
                    top: 30,
                    child: Image.asset(
                      'assets/images/blaja.png',
                      width: 140.0,
                      height: 50.0,
                    ),
                  ),
                  Positioned(
                    right: 30,
                    top: 30,
                    child: GenericButton(
                      onPressed: () {},
                      // height: 35,
                      color: Color(0xFFE50914),
                      text: 'Sign In',
                      radius: 10.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),

//*************************Enjoy Container**************************
              Container(
                width: WidgetProperties.screenWidth(context),
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 100),
                // height: WidgetProperties.screenHeight(context) * .4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Enjoy on your TV.',
                          textStyle: Constants.textBold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text:
                              'Watch on Smart TVs, Playstation, Xbox, \n Chromecast, Apple TV, Blu-ray players, \n andmore.',
                          textStyle: Constants.textLight,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/second.png',
                      height: 200,
                      width: 250,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

//*************************Download Container**************************
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80),
                width: WidgetProperties.screenWidth(context),
                color: Colors.black,
                // height: WidgetProperties.screenHeight(context) * .4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/third.png',
                      height: 200,
                      width: 250,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Download your \nshows to watch offline.',
                          textStyle: Constants.textBold,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text:
                              'Watch on Smart TVs, Playstation, Xbox, \n Chromecast, Apple TV, Blu-ray players, \n andmore.',
                          textStyle: Constants.textLight,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

//*************************Watch Container**************************
              Container(
                width: WidgetProperties.screenWidth(context),
                color: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 100),
                height: WidgetProperties.screenHeight(context) * .4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Watch everywhere.',
                          textStyle: Constants.textBold,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CustomText(
                          text:
                              'Stream unlimited movies and TV shows on \n your phone, tablet, laptop, and TV without \n paying more.',
                          textStyle: Constants.textLight,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/fourth.png',
                      height: 200,
                      width: 250,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

//*************************Questions Container**************************
              Container(
                color: Colors.black,
                // height: WidgetProperties.screenHeight(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CustomText(
                      text: 'Frequently Asked Questions',
                      textStyle: Constants.textBold,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CustomListTile(
                      title: 'What is Blaja?',
                      description: 'This is description of the expanded text',
                      trailing: isClicked ? Icons.arrow_forward_ios : Icons.add,
                      onClick: onClick,
                    ),
                    CustomListTile(
                      title: 'How Much does Blaja Cost?',
                      description: 'This is description of the expanded text',
                      trailing: isClicked ? Icons.arrow_forward_ios : Icons.add,
                      onClick: onClick,
                    ),
                    CustomListTile(
                      title: 'Where can I watch',
                      description: 'This is description of the expanded text',
                      trailing: isClicked ? Icons.arrow_forward_ios : Icons.add,
                      onClick: onClick,
                    ),
                    CustomListTile(
                      title: 'How do I Cancel',
                      description: 'This is description of the expanded text',
                      trailing: isClicked ? Icons.arrow_forward_ios : Icons.add,
                      onClick: onClick,
                    ),
                    CustomListTile(
                      title: 'What can I watch on Blaja?',
                      description: 'This is description of the expanded text',
                      trailing: isClicked ? Icons.arrow_forward_ios : Icons.add,
                      onClick: onClick,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      text:
                          'Ready to watch? Enter your email to create or restart your membership.',
                      textStyle: Constants.textMedium,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 130, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(child: CustomEditText()),
                          GenericButtonIcon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterScreenOne()));
                            },
                            fontSize: 20,
                            color: Color(0xFFE50914),
                            text: 'Get Started',
                            height: 48,
                            width: 180,
                            icon: Icons.arrow_forward_ios,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

//*************************Contact Container**************************
              Container(
                padding: EdgeInsets.only(left: 150),
                color: Colors.black,
                // height: WidgetProperties.screenHeight(context) * .4,
                width: WidgetProperties.screenWidth(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    CustomText(
                      text: 'Questions? Contact us.',
                      textStyle: Constants.textLight,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'FAQs',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA1A1A1)),
                            ),
                            Text(
                              'Privacy',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA1A1A1)),
                            ),
                            Text(
                              'Help Center',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA1A1A1)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 150,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Terms of Use',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA1A1A1)),
                            ),
                            Text(
                              'Contact Us',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFFA1A1A1)),
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  onClick() {
    isClicked = !isClicked;
    setState(() {});
  }
}
