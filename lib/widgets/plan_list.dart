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
      children: [
        Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Expanded(child: Text(title)), firstCol, secondCol, thirdCol],
          ),
        ),
        SizedBox(height: 15,),
        Divider(height: 1,color: Colors.grey,),
        SizedBox(height: 15,),
      ],
    );
  }
}
