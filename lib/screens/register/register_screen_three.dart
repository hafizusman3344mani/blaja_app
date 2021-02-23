import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/register/register_screen_fourth.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';
import 'package:blaja_app/widgets/footer.dart';
import 'package:blaja_app/widgets/generic_button.dart';
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
          child: Container(
            height: WidgetProperties.screenHeight(context),
            width: WidgetProperties.screenWidth(context),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              width: 300,
                            ),
                            Image.asset(
                              'assets/images/basic.png',
                              width: 70,
                              height: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/standard.png',
                              width: 70,
                              height: 60,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/premium.png',
                              width: 70,
                              height: 60,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Monthly Price',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 120,
                                  ),
                                  Text(
                                    'Rs 950',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'Rs 950',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'Rs 950',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Video quality',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Text(
                                    'Good',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'Better',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    'Best',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Resolution',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 130,
                                  ),
                                  Text(
                                    '480p',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    '1080p',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    '4K+HDR',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Screens you can watch on at the same time',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Text(
                                    '4',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Watch on your TV, computer, mobile phone and tablet',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Unlimited movies and TV shows',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 58.0),
                                    child: Image.asset(
                                      'assets/images/red_click.png',
                                      width: 15,
                                      height: 10,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cancel anytime',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 140.0),
                                    child: Image.asset(
                                      'assets/images/red_click.png',
                                      width: 15,
                                      height: 10,
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                  Image.asset(
                                    'assets/images/red_click.png',
                                    width: 15,
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),

                        RichText(
                          text: TextSpan(
                            text:
                                'Full HD (1080p), Ultra HD (4K) and HDR availability subject to your internet service and device capabilities. Not all content available in HD, Full HD, Ultra HD or HDR. See ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
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
