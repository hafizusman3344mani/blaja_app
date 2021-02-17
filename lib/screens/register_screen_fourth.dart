import 'package:blaja_app/common/constants.dart';
import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/widgets/custome_text_view_bold.dart';
import 'package:blaja_app/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreenFourth extends StatelessWidget {
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
                        SvgPicture.asset('assets/images/red_lock.png'),
                        SizedBox(
                          height: 30,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'STEP ',
                            style: TextStyle(color: Colors.black38),
                            children: <TextSpan>[
                              TextSpan(
                                text: '4 ',
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
                          text: 'Set up your payment.',
                          textStyle: Constants.textMediumDark,
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomText(
                          text:
                              'Your membership starts as soon as you set up payment.',
                          textStyle: Constants.textLightDark,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomText(
                          text: 'No commitments.',
                          textStyle: Constants.textMediumDark,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomText(
                          text: 'Cancel online anytime.',
                          textStyle: Constants.textMediumDark,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(bottom: 2, right: 3),
                                child: SvgPicture.asset(
                                  'assets/images/lock.svg',
                                  width: 10,
                                  height: 10,
                                  color: Color(0xFFF4B318),
                                ),
                              ),
                              Text(
                                'Secure Server',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.grey),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: ListTile(
                            title: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Credit or Debit Card',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/visa.svg',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.contain,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                          'assets/images/mastercard.svg',
                                          width: 50,
                                          height: 50),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      SvgPicture.asset(
                                          'assets/images/american_express.svg',
                                          width: 50,
                                          height: 55),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          //padding: EdgeInsets.symmetric(vertical: 10,horizontal: 50),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 1),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: ListTile(
                            title: Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Text(
                                        'Credit or Debit Card',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/telenor.svg',
                                        width: 50,
                                        height: 50,
                                        color: Colors.lightBlueAccent,
                                      ),
                                    ],
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 130,
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
