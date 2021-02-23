import 'package:blaja_app/common/widget_properties.dart';
import 'package:flutter/material.dart';

class ExamDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text(
              'EXAM DETAILS',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            SizedBox(height: 30,),
            Text('Congrats! You Have Successfully Clear This Course .'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: WidgetProperties.screenWidth(context) * .3,
                      height: WidgetProperties.screenWidth(context) * .25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(0xFFECEDF1),
                        width: 2,
                        style: BorderStyle.solid
                      )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Right Answer',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
                              Text('Marks',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.1'),
                              Text('01'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.3'),
                              Text('01'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.6'),
                              Text('13'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.9'),
                              Text('09'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.12'),
                              Text('08'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: WidgetProperties.screenWidth(context) * .3,
                      height: WidgetProperties.screenWidth(context) * .25,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Color(0xFFECEDF1),
                              width: 2,
                              style: BorderStyle.solid
                          )
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Wrong Answer',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                              Text('Marks',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.1'),
                              Text('00'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.3'),
                              Text('00'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.6'),
                              Text('00'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.9'),
                              Text('00'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Question No.12'),
                              Text('00'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
