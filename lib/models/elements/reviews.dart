import 'package:flutter/material.dart';
import 'package:photo/all.dart';
class Review extends StatelessWidget {

  Container buildCategoryWidget(String rimageUrl,String rname,String rdetails,List<ReviewItem>newreviews,) {
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
           backgroundImage:AssetImage("assets"+rimageUrl),
          ),
          SizedBox(width:8),
            ReviewTxt(pname:rname, rdetails:rdetails,)  
          ],
        ),
      )
      
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }

}
