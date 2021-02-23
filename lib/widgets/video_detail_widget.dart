import 'package:blaja_app/common/widget_properties.dart';
import 'package:blaja_app/widgets/exam_detail.dart';
import 'package:flutter/material.dart';

class VideoDetailWidget extends StatelessWidget {
  final String img;
  final Function onTap;

  const VideoDetailWidget({this.img, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(4),
        //height: WidgetProperties.screenHeight(context) / 3,
        width: WidgetProperties.screenWidth(context) * .19,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Image.asset(img),
            Container(
              padding: EdgeInsets.all(6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2021 Complete Python Bootcamp From Zero to Hero in Python',
                    style: TextStyle(fontSize: 10, color: Colors.black),
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '2021 Complete Python Bootcamp From Zero to Hero in Python',
                    style: TextStyle(fontSize: 8, color: Colors.grey),
                    maxLines: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_rounded,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              ' 2571',
                              style: TextStyle(fontSize: 8, color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_outlined,
                              color: Colors.grey,
                              size: 15,
                            ),
                            Text(
                              ' 40 Mints',
                              style: TextStyle(fontSize: 8, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
