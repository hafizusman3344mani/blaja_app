import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/dashboard/home_screen.dart';
import 'package:blaja_app/screens/dashboard/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardHome extends StatefulWidget {
  @override
  _DashBoardHomeState createState() => _DashBoardHomeState();
}

class _DashBoardHomeState extends State<DashBoardHome> {
  bool isChecked = true;

  int selectedIndex = 0;
  String imgString;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: WidgetProperties.screenWidth(context),
          height: WidgetProperties.screenHeight(context),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgString??'assets/images/bg_image.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            children: [
              //************************Side Bar*********************************
              Container(
                padding: EdgeInsets.symmetric(vertical: 35),
                width: WidgetProperties.screenWidth(context) * .2,
                height: WidgetProperties.screenHeight(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/blaja.png',
                      width: 140.0,
                      height: 50.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              //
                              SvgPicture.asset(
                                'assets/svgs/preschool.svg',
                                width: 20,
                                height: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Pre-School',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Divider(
                              height: 5,
                              thickness: 1.5,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/svgs/primary.svg',
                                width: 20,
                                height: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Primary',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Divider(
                              height: 5,
                              thickness: 1.5,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/svgs/secondary.svg',
                                width: 20,
                                height: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Secondary',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Divider(
                              height: 5,
                              thickness: 1.5,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/svgs/college.svg',
                                width: 20,
                                height: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'College',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10, top: 10),
                            child: Divider(
                              height: 5,
                              thickness: 1.5,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                'assets/svgs/tuition.svg',
                                width: 20,
                                height: 20,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Tuition',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/svgs/logout.svg',
                      color: Colors.white,
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: WidgetProperties.screenWidth(context) * .3,
                  height: WidgetProperties.screenHeight(context),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [

                      //***********************App Bar**************************
                      Container(
                        width: WidgetProperties.screenWidth(context) * .7,
                        height: WidgetProperties.screenHeight(context) * .15,
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //*********************Tab bar**********************
                            Expanded(
                              flex: 3,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      selectedIndex = 0;
                                      imgString =
                                          'assets/images/bg_image.png';
                                      isChecked = true;
                                      setState(() {});
                                    },
                                    child: tabOption('Home', 0),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        selectedIndex = 1;
                                        imgString =
                                            'assets/images/index1.png';
                                        isChecked = true;
                                        setState(() {});
                                      },
                                      child: tabOption('Results', 1)),
                                  GestureDetector(
                                      onTap: () {
                                        selectedIndex = 2;
                                        imgString = 'assets/images/first.png';
                                        isChecked = true;
                                        setState(() {});
                                      },
                                      child: tabOption('Profile', 2)),
                                  GestureDetector(
                                      onTap: () {
                                        selectedIndex = 3;
                                        imgString =
                                            'assets/images/bg_image.png';
                                        isChecked = true;
                                        setState(() {});
                                      },
                                      child:
                                          tabOption('Completed Courses', 3)),
                                  GestureDetector(
                                      onTap: () {
                                        selectedIndex = 4;
                                        imgString =
                                            'assets/images/bg_image.png';
                                        isChecked = true;
                                        setState(() {});
                                      },
                                      child:
                                          tabOption('Enrolled Courses', 4)),
                                ],
                              ),
                            ),

                            //*********************Notification**********************
                            Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Image.asset(
                                    'assets/images/circle_img.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Martin Alex',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Job Description',
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      //*********************Main Content***************************
                      showBody(),
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

  Widget showWithTab({Widget child}) {
    return Container(
      height: 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          child,
          Container(
            height: 2.0,
            width: 30.0,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(2)),
          )
        ],
      ),
    );
  }

  Widget showBody() {
    switch (selectedIndex) {
      case 0:
        return HomeScreen();
      case 1:
        return ResultScreen();
      default:
        return Center(child: Text('some text'));
    }
  }

  Widget tabOption(String text, int index) {
    if (selectedIndex == index) {
      return showWithTab(
          child: Text(
        text,
        style: TextStyle(
            fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
      ));
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 2.0,
            width: 30.0,
          )
        ],
      );
    }
  }
}
