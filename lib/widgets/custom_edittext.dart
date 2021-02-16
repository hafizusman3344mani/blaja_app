import 'package:flutter/material.dart';

class CustomEditText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      color: Colors.white,
      child: TextFormField(
        autofocus: false,
        cursorColor: Color(0xFF858585),
        decoration: InputDecoration(
          hintText: 'Email Address',
          hintStyle: TextStyle(color: Color(0xFF858585), fontSize: 20),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
