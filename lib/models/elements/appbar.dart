import 'package:flutter/material.dart';
import 'package:photo/models/colors/myColors.dart';

class Appbardetails extends StatelessWidget {
  final String title;
  final IconData name1;
  final IconData name2;
Appbardetails({@required this.name1,this.name2, this.title,});
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: bgdark,
        elevation:1,
        leading: IconButton(
          icon:Icon(
            name1,
            color: Colors.yellow,
          ), onPressed:(){},      
        ),
        title: Text(title,style:TextStyle(color: Colors.white54)),
        actions: [
          IconButton(
            icon:Icon(name2,
            color: Colors.yellow,
            ) 
          , onPressed: (){}
          )
        ],
      
    );
  }
}