import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/widgets/custom_outlined_button.dart';
import 'package:blaja_app/widgets/custom_textform_field.dart';
import 'package:blaja_app/widgets/footer.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPersonalInfo extends StatefulWidget {
  @override
  _SignInPersonalInfoState createState() => _SignInPersonalInfoState();
}

class _SignInPersonalInfoState extends State<SignInPersonalInfo> {
  String _selectedLocation;

  List<String> _gender = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Container(
            width: WidgetProperties.screenWidth(context),
            height: WidgetProperties.screenHeight(context) +
                WidgetProperties.screenHeight(context) * .4,
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, bottom: 20, left: 30, right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/blajablack.png',
                                    width: 80,
                                    height: 80,
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 1,
                              color: Color(0xFFA7A7A7),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 200, left: 100),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0.0),
                                child: Text(
                                  'Personal Info',
                                  style: Constants.textMediumDark,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text('Full Name')),
                                    Expanded(child: Text('Email')),
                                    Expanded(child: Text('Job Title')),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      hintText: 'Enter full name',
                                      borderColor: Color(0xFF4D4D4D),
                                      borderRadius: 30,
                                      fillColor: Colors.transparent,
                                      cursorColor: Colors.white,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomTextFormField(
                                      hintText: 'Enter email',
                                      borderColor: Color(0xFF4D4D4D),
                                      borderRadius: 30,
                                      fillColor: Colors.transparent,
                                      cursorColor: Colors.white,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomTextFormField(
                                      hintText: 'Enter your password',
                                      borderColor: Color(0xFF4D4D4D),
                                      borderRadius: 30,
                                      fillColor: Colors.transparent,
                                      cursorColor: Colors.white,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 200),
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text('Phone Number')),
                                    Expanded(child: Text('Gender')),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 220),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: CustomTextFormField(
                                        hintText: 'Enter your phone number',
                                        borderColor: Color(0xFF4D4D4D),
                                        borderRadius: 30,
                                        fillColor: Colors.transparent,
                                        cursorColor: Colors.white,
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        textStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 15),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xFF4D4D4D),
                                              width: 1,
                                              style: BorderStyle.solid),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        child: DropdownButton(
                                          icon: Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF4D4D4D),
                                              borderRadius:
                                              BorderRadius.circular(3),
                                            ),

                                          child: Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white,size: 20,),),
                                          isExpanded: true,
                                          underline: Container(),
                                          hint: Text(
                                              'Gender'), // Not necessary for Option 1
                                          value: _selectedLocation,
                                          onChanged: (newValue) {
                                            setState(() {
                                              _selectedLocation = newValue;
                                            });
                                          },
                                          items: _gender.map((location) {
                                            return DropdownMenuItem(
                                              child:  Text(location),
                                              value: location,
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, bottom: 5, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(child: Text('Change Password')),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CustomTextFormField(
                                      hintText: 'Enter old password',
                                      borderColor: Color(0xFF4D4D4D),
                                      borderRadius: 30,
                                      fillColor: Colors.transparent,
                                      cursorColor: Colors.white,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomTextFormField(
                                      hintText: 'Enter new password',
                                      borderColor: Color(0xFF4D4D4D),
                                      borderRadius: 30,
                                      fillColor: Colors.transparent,
                                      cursorColor: Colors.white,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: CustomTextFormField(
                                      hintText: 'Re-type password',
                                      borderColor: Color(0xFF4D4D4D),
                                      borderRadius: 30,
                                      fillColor: Colors.transparent,
                                      cursorColor: Colors.white,
                                      hintStyle: TextStyle(color: Colors.grey),
                                      textStyle: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: 10, top: 40, right: 10, bottom: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomOutLinedButton(
                                      title: 'Cancel',
                                      borderColor: Colors.grey,
                                      onPressed: () {},
                                    ),
                                    GenericButton(
                                      text: 'Save',
                                      color: Color(0xFFE50914),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Footer(
                          color: Color(0xFFEBEBEB),
                          textStyle: Constants.textLightDark,
                        ),
                      ],
                    ),
                    Positioned(
                      right: 20,
                      top: 0,
                      bottom: 0,
                      child: Container(
                        width: 150,
                        height: 150,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Image.asset(
                                'assets/images/circle_img.png',
                                width: 150,
                                height: 150,
                              ),
                            ),
                            Positioned(
                              right: 50,
                              top: 150,
                              bottom: 0,
                              child:
                                  SvgPicture.asset('assets/svgs/red_edit.svg'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
