import 'package:flutter/material.dart';
//import 'package:photo/models/colors/myColors.dart';
import 'package:photo/models/elements/alltext.dart';
class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(title: Text("Reviews"),
      backgroundColor: Colors.black87,
      
      ),
      body:ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap:true,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          PositionBox(
            image: "assets/bg.jpg",
            name:"Joni kano",
            position: "i am enjoying the experience of this application",
          ),
          PositionBox(
            image: "assets/bg.jpg",
            name:"Joni kano",
            position: "real fun i enjoy it the most over the other apps",
          ),
          PositionBox(
            image: "assets/bg.jpg",
            name:"Joni kano",
            position: "Great Spot to get phottographers to hire",
          ),
          PositionBox(
            image: "assets/bg.jpg",
            name:"Joni kano",
            position: "Awesome photos in these app i like them all",
          ),
          PositionBox(
            image: "assets/bg.jpg",
            name:"Joni kano",
            position:"loving the app best place to find where to go next",
          ),
          PositionBox(
            image: "assets/bg.jpg",
            name:"Joni kano",
            position: "enjoyed the experience",
          ),
        ],
        )
    );
  }
}
class PositionBox extends StatelessWidget {
  PositionBox({Key key,this.name,this.position,this.image})
       : super(key: key);
  final String name;
  final String position;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.all(2),
      decoration: 
      BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: 80,
      width: double.infinity,
      child:Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
            radius: 30,
           backgroundImage:AssetImage("assets/a.jpg"),
          ),
          SizedBox(width:8),
            ReviewTxt(pname:this.name, rdetails:this.position)  
          ],
        ),
      )
      
    );
  }
}