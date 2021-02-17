import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/register_screen_three.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';

import 'package:blaja_app/widgets/footer.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';

class RegisterScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            width: WidgetProperties.screenWidth(context),
            height: WidgetProperties.screenHeight(context),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, bottom: 20, left: 30, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/blajablack.png',
                          width: 80,
                          height: 80,
                        ),
                        FlatButton(
                          onPressed: () {},
                          child: Text('Sign Out'),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Color(0xFFA7A7A7),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 200),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset('assets/images/red_circle_click.png'),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'STEP ',
                            style: TextStyle(color: Colors.black38),
                            children: <TextSpan>[
                              TextSpan(
                                text: '2 ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: 'of',
                                style: TextStyle(color: Colors.black38),
                              ),
                              TextSpan(
                                text: ' 4',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomText(
                          text: 'Choose Your Plan',
                          textStyle: Constants.textMediumDark,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/red_click.png',
                                width: 25,
                                height: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'No commitments, cancel anytime',
                                textAlign: TextAlign.left,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/red_click.png',
                              width: 25,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Everything on Netflix for one low price.')
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/red_click.png',
                              width: 25,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Unlimited viewing on all your devices.')
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: GenericButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterScreenThree()));
                            },
                            // height: 35,
                            textAlign: TextAlign.center,
                            color: Color(0xFFE50914),
                            width: WidgetProperties.screenWidth(context) * .3,
                            text: 'Continue',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Footer(
                    color: Color(0xFFEBEBEB),
                    textStyle: Constants.textLightDark,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
