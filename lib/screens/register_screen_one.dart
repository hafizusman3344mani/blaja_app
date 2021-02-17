import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/register_screen_two.dart';
import 'package:blaja_app/widgets/custom_textform_field.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';
import 'package:blaja_app/widgets/footer.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';

class RegisterScreenOne extends StatelessWidget {
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: Text('Sign In'),
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
                                text: '1 ',
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
                          text: 'Welcome back!\nJoining Netflix is easy.',
                          textStyle: Constants.textMediumDark,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text:
                              'Enter your password and you\'ll be watching in no time.',
                          textStyle: Constants.textLightDark,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF404040),
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'martinalex.1@gmail.com',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 50, top: 10, bottom: 50),
                          child: CustomTextFormField(
                            hintText: 'Enter your password',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50, bottom: 20),
                          child: GenericButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterScreenTwo()));
                            },
                            // height: 35,
                            textAlign: TextAlign.center,
                            color: Color(0xFFE50914),
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
