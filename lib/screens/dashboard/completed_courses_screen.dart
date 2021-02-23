import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/widgets/video_detail_widget.dart';
import 'package:flutter/material.dart';

class CompletedCoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: WidgetProperties.screenWidth(context),
      height: WidgetProperties.screenHeight(context) -
          WidgetProperties.screenHeight(context) * .15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Completed Courses',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Wrap(
            children: [
              VideoDetailWidget(
                img: 'assets/images/video_1.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/video_2.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/video_3.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/group.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/video_1.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/video_2.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/video_3.png',
              ),
              VideoDetailWidget(
                img: 'assets/images/group.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
