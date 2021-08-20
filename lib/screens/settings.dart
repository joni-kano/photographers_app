import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:photo/all.dart';
class Psettings extends StatefulWidget {
  @override
  _PsettingsState createState() => _PsettingsState();
}

class _PsettingsState extends State<Psettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgdark,
        elevation:1,
        leading: IconButton(
          icon:Icon(
            Icons.arrow_back,
            color: Colors.yellow,
          ), onPressed:(){},      
        ),
        title: Text("settings",style:TextStyle(color: Colors.white54)),       
    ),
    body: Container(
      color: bgdark,
      padding: EdgeInsets.only(left: 16,top: 25,right: 16),
      child: ListView(
        children: [
          Text("Settings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white60),),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.yellow,
              ),
              SizedBox(width: 5,),
              Text("Account",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white60),
              ),
            ],
          ),
          Divider(
            height:15,
            thickness: 2,
          ),
          SizedBox(height: 10,),
          buildAccountOptionRow(context,"ChangePassword"),
          buildAccountOptionRow(context,"Content Settings"),
          buildAccountOptionRow(context,"Social"),
          buildAccountOptionRow(context,"Language"),
          buildAccountOptionRow(context,"Privacy and Security"),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.volume_up_outlined,
                color: Colors.yellow,
              ),
              SizedBox(width: 5,),
              Text("Notifications",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white60),
              ),
            ],
          ),
          Divider(
            height:15,
            thickness: 2,
          ),
          SizedBox(height: 10,),
          buildNotificationOptionRow("New for You",true),
          buildNotificationOptionRow("Account Activity",true),
          buildNotificationOptionRow("Opportunity",false),
          Center(
            child: OutlinedButton(
            style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.yellow),
                  padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 40)),
                  shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),)),  
            onPressed:(){},
            child: Text("Sign Out",style: TextStyle(fontSize: 16,letterSpacing: 2.2,color: Colors.black),),
            ),
          )
        ],
      ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white60),
            ),
            Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
               value: true,
               onChanged:(bool val){},
               ),
            )
          ],
        );
  }

  GestureDetector buildAccountOptionRow(BuildContext context,String title) {
    return GestureDetector(
          onTap: (){
            showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: Text(title,),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("now"),
                    Text("then"),
                    Text("later"),
                  ],
                ),
                actions: [
                  TextButton(onPressed: (){Navigator.of(context).pop();},
                  child: Text("Close"),)
                ],
              );
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.white24),
                ),
                Icon(Icons.arrow_forward_ios,
                color: Colors.white24,
                )
              ],
            ),
          ),
        );
  }
}