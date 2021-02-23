import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/screens/dashboard/result_screen.dart';
import 'package:blaja_app/widgets/exam_detail.dart';
import 'package:blaja_app/widgets/generic_button.dart';
import 'package:blaja_app/widgets/video_detail_widget.dart';
import 'package:flutter/material.dart';

class ResultExamScreen extends StatefulWidget {
  @override
  _ResultExamScreenState createState() => _ResultExamScreenState();
}

class _ResultExamScreenState extends State<ResultExamScreen> {
  List<Widget> _fragments = [ResultScreen(), ExamDetail()];
  int _currentIndex = 0;
  final List<int> _backStack = [0];
  @override
  Widget build(BuildContext context) {
    return Container(
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
            margin:
                EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 25),
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
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_2.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_3.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/group.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_1.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_2.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_3.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/group.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_1.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_2.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/video_3.png',
                      onTap: onTap(),
                    ),
                    VideoDetailWidget(
                      img: 'assets/images/group.png',
                      onTap: onTap(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  onTap() {
    onPressed:
    () {
      _currentIndex++;
      navigateTo(_currentIndex);
    };
  }

  void navigateTo(int index) {
    _backStack.add(index);
    setState(() {
      _currentIndex = index;
    });
  }

  void navigateBack(int index) {
    setState(() {
      _currentIndex = index;
    });

  }
  Future<bool> customPop(BuildContext context) {
    print("CustomPop is called");
    print("_backstack = $_backStack");
    if (_backStack.length > 1) {
      _backStack.removeAt(_backStack.length - 1);
      navigateBack(_backStack[_backStack.length - 1]);

      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}
