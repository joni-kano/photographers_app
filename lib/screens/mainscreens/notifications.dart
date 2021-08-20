import 'package:flutter/material.dart';
import 'package:photo/models/colors/myColors.dart';
import 'package:photo/models/elements/alltext.dart';
class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgdark,
      appBar: AppBar(title: Text("Notifications"),
      backgroundColor: bgdark,
      ),
      body:ListView(
        shrinkWrap:true,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Notification(
            image: "assets/bg.jpg",
            title:"new update",
            details: "i am enjoying the experience of this application",
          ),
          Notification(
            image: "assets/bg.jpg",
            title:"new update",
            details: "i am enjoying the experience of this application",
          ),
          Notification(
            image: "assets/bg.jpg",
            title:"new update",
            details: "i am enjoying the experience of this application",
          ),
          Notification(
            image: "assets/bg.jpg",
            title:"new update",
            details: "i am enjoying the experience of this application",
          ),
          Notification(
            image: "assets/bg.jpg",
            title:"new update",
            details: "i am enjoying the experience of this application",
          ),
        ],
        )
    );
  }
}
class Notification extends StatelessWidget {
  Notification({this.title,this.details,this.image});
  final String title;
  final String details;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(2),
      height: 120,
      child:Card(
        color: bgdark,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
            radius: 40,
           backgroundImage:AssetImage("assets/a.jpg"),
          ),
          SizedBox(width:8),
            ReviewTxt(pname:this.title, rdetails:this.details)  
          ],
        ),
      )
      
    );
  }
}