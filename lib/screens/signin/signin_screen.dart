import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/signin/signin_screen_two.dart';
import 'package:blaja_app/widgets/custom_textform_field.dart';
import 'package:blaja_app/widgets/footer.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: ListView(
          children: [
            Container(
              width: WidgetProperties.screenWidth(context),
              height: WidgetProperties.screenHeight(context) +
                  WidgetProperties.screenHeight(context) * .5,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/first.png',
                    ),
                    fit: BoxFit.fill),
              ),
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
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Footer(
                      color: Colors.black.withOpacity(.4),
                      textStyle: Constants.textLight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: WidgetProperties.screenWidth(context),
                      height: WidgetProperties.screenHeight(context),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: WidgetProperties.screenWidth(context) / 3,
                            height:
                                WidgetProperties.screenHeight(context) / 1.1,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.8),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, right: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sign In',
                                    style: Constants.textMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: CustomTextFormField(
                                      hintText: 'Enter your password',
                                      hintStyle: Constants.hintLight,
                                      borderColor: Colors.transparent,
                                      fillColor: Color(0xFF707070),
                                      cursorColor: Color(0xFFBCBCBC),
                                      textStyle: Constants.textLight,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: CustomTextFormField(
                                      hintText: 'Enter your password',
                                      hintStyle: Constants.hintLight,
                                      fillColor: Color(0xFF707070),
                                      borderColor: Colors.transparent,
                                      cursorColor: Color(0xFFBCBCBC),
                                      textStyle: Constants.textLight,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: GenericButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignInTwo()));
                                      },
                                      // height: 35,
                                      textAlign: TextAlign.center,
                                      color: Color(0xFFE50914),
                                      radius: 5,
                                      width: WidgetProperties.screenWidth(
                                              context) *
                                          .3,
                                      text: 'Sign In',
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Remember Me',
                                            style: TextStyle(
                                                color: Color(0xFFAAAAAA)),
                                          ),
                                        ],
                                      )),
                                      Text(
                                        'Need Help?',
                                        style:
                                            TextStyle(color: Color(0xFFAAAAAA)),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/svgs/facebook.svg',
                                          width: 15,
                                          height: 15,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Login with facebook',
                                          style: TextStyle(
                                              color: Color(0xFFAAAAAA),
                                          fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:10.0),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'New to Netflix?',
                                        style: TextStyle(
                                            color: Color(0xFFAAAAAA)),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '  Sign Up Now',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:20.0),
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'This page is protected by Google reCAPTCHA to ensure you\'re not a bot.',
                                        style: TextStyle(
                                            color: Color(0xFFAAAAAA),
                                        fontSize: 10),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '  Learn more.',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
