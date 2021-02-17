import 'package:flutter/material.dart';

class PlanList extends StatelessWidget {
  final String title;
  final Widget firstCol;
  final Widget secondCol;
  final Widget thirdCol;

  const PlanList({this.title, this.firstCol, this.secondCol, this.thirdCol});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(

            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              SizedBox(width: 70,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  firstCol,
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  secondCol,
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [thirdCol],
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
    );
  }
}
//
