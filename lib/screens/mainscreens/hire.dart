import 'package:flutter/foundation.dart';
import 'package:photo/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class PDetails extends StatelessWidget {
  const PDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgdark,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation:1,
        leading: IconButton(
          icon:Icon(
            Icons.arrow_back,
            color: Colors.yellow,
          ), onPressed:(){},      
        ),
        title: Text("Mombasa",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                actions: [
          IconButton(
            icon:Icon(Icons.local_movies,
            color: Colors.yellow,
            ) 
          , onPressed: (){}
          )
        ],
      ),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:8,left:8,right: 8,bottom: 2),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgdark,
            ),
            child:ClipRRect(
              borderRadius:BorderRadius.all( Radius.circular(10), ),child:
          Image(image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover,
          ),
          ),
          ),
          Container(
            width:double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgdark, 
            ),
            child:
          Column(
            children:<Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:AssetImage("assets/bg.jpg"),
                  ),
                  SizedBox(width: 20,),
                  Expanded(child:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children:[
                  Text("John kano",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: txt1whiteColor,),),
                  Text("Photographer"),
                  SizedBox(height: 10,),
                  MaterialButton(
                    onPressed:(){},
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    color: Colors.yellow,
                    child: Text("Follow"),
                    )
                  ]
                  ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("23",style: TextStyle(
                        fontSize: 24,color: Colors.white,
                      ),),
                      SizedBox(height: 4,),
                      Text("Posts",style: TextStyle(
                        fontSize: 24,color: Colors.white,
                      ),),

                  ],),
              Column(
                    children: [
                      Text("124",style: TextStyle(
                        fontSize: 24,color: primaryColor,
                      ),),
                      SizedBox(height: 4,),
                      Text("Hires",style: TextStyle(
                        fontSize: 24,color: primaryColor,
                      ),),
                  ],),
                  Column(
                    children: [
                      Text("235",style: TextStyle(
                        fontSize: 24,color: primaryColor,
                      ),),
                      SizedBox(height: 4,),
                      Text("Workerate",style: TextStyle(
                        fontSize: 24,color: primaryColor,
                      ),),

                  ],)
            ],
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                    onPressed:(){},
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    color: Colors.yellow,
                    child: Text("Work"),
                    ),
                    MaterialButton(
                    onPressed:(){},
                    minWidth: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                    color: Colors.yellow,
                    child: Text("Hire me"),
                    )
            ],
          )
          ],
      )
    );
  }
}