import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/register_screen_fourth.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';

import 'package:blaja_app/widgets/footer.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:blaja_app/widgets/plan_list.dart';
import 'package:flutter/material.dart';

class RegisterScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: SingleChildScrollView(
            child: Container(
              width: WidgetProperties.screenWidth(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'STEP ',
                            style: TextStyle(color: Colors.black38),
                            children: <TextSpan>[
                              TextSpan(
                                text: '3 ',
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
                          height: 5,
                        ),
                        CustomText(
                          text: 'Choose the plan that’s right for you',
                          textStyle: Constants.textMediumDark,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: 'Downgrade or upgrade at any time.',
                          textStyle: Constants.textLightDark,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 170,
                            ),
                            Image.asset(
                              'assets/images/basic.png',
                              width: 80,
                              height: 70,
                            ),
                            SizedBox(
                              width: 70,
                            ),
                            Image.asset(
                              'assets/images/standard.png',
                              width: 80,
                              height: 70,
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Image.asset(
                              'assets/images/premium.png',
                              width: 80,
                              height: 70,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        PlanList(
                          title: 'Monthly Price',
                          firstCol: Text('Rs 950'),
                          secondCol: Text('Rs 950'),
                          thirdCol: Text('Rs 950'),
                        ),
                        PlanList(
                          title: 'Video quality',
                          firstCol: Text('Good'),
                          secondCol: Text('Better'),
                          thirdCol: Text('Best'),
                        ),
                        PlanList(
                          title: 'Resolution  ',
                          firstCol: Text('480p'),
                          secondCol: Text('1080p'),
                          thirdCol: Text('4K+HDR'),
                        ),
                        PlanList(
                          title: 'Screens you can watch on at the same time',
                          firstCol: Text('1'),
                          secondCol: Text('2'),
                          thirdCol: Text('4'),
                        ),
                        PlanList(
                          title:
                              'Watch on your TV, computer, mobile phone and tablet',
                          firstCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                          secondCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                          thirdCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                        ),
                        PlanList(
                          title: 'Unlimited movies and TV shows',
                          firstCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                          secondCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                          thirdCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                        ),
                        PlanList(
                          title: 'Cancel anytime',
                          firstCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                          secondCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                          thirdCol: Image.asset(
                            'assets/images/red_click.png',
                            width: 15,
                            height: 10,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                'Full HD (1080p), Ultra HD (4K) and HDR availability subject to your internet service and device capabilities. Not all content available in HD, Full HD, Ultra HD or HDR. See ',
                            style: TextStyle(color: Colors.grey),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Terms of Use ',
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              TextSpan(text: 'for more details'),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(bottom: 50, top: 20),
                          child: GenericButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterScreenFourth()));
                            },
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