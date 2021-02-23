import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/controllers/home_controller.dart';
import 'package:blaja_app/widgets/exam_detail.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:blaja_app/widgets/video_detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultScreen extends StatefulWidget {
  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();
  var homeController = Get.find<HomeController>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        while (navigationKey.currentState.canPop())
          navigationKey.currentState.pop();
        return false;
      },
      child: Expanded(
        child: isChecked?ExamDetail():Container(
          alignment: Alignment.center,
          child: ListView(
            children: [
              Text(
                'Lecture',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              Text(
                'It Fundamental Structure \n& Monoming',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GenericButton(
                      text: 'Enter Lecture',
                      radius: 20,
                      textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      color: Color(0xFFFFFFFF),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GenericButton(
                      text: 'Enroll Now',
                      textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      radius: 20,
                      color: Color(0xFFE50914),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                width: WidgetProperties.screenWidth(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'completed Courses',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Wrap(
                      children: [
                        VideoDetailWidget(
                          img: 'assets/images/video_1.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_2.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_3.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/group.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_1.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_2.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_3.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/group.png',onTap: onTap,

                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_1.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_2.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/video_3.png',
                          onTap: onTap,
                        ),
                        VideoDetailWidget(
                          img: 'assets/images/group.png',
                          onTap: onTap,
                        ),
                      ],
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

  onTap(){
   homeController.updateSelectedIndex(5) ;
   homeController.updateHome();
  }

}
