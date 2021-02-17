import 'package:blaja_app/common/constants.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String description;
  final IconData trailing;
  final Function onClick;

  const CustomListTile({ this.title,this.description, this.trailing, this.onClick});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 100),
      color: Color(0xFF707070),
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: Constants.mediumFontSize, fontWeight: FontWeight.w300),
        ),
        trailing: Icon(
          trailing,
          color: Colors.white,
        ),
        children: [
          Container(
            child: Text(description,style: Constants.textLight,),
          )
        ],
        //onTap: onClick,
      ),
    );
  }
}
