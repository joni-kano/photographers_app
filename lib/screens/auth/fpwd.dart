import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo/models/elements/txtbutton.dart';
import 'package:photo/models/elements/alltext.dart';
 class FpasswordScreen extends StatelessWidget {
   static const routeName = '/fpwd'; 
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
   appBar: AppBar(
     backgroundColor: Colors.black87,
         actions:<Widget> [
         ],
       ),
      
       body: Container(
         
         padding: EdgeInsets.symmetric(horizontal:15,vertical:20),
         width: double.infinity,
         height: double.infinity,
         decoration: BoxDecoration(
        //    gradient: LinearGradient(
        //      begin:Alignment.topRight,
        //      colors: [
        //        Colors.blueGrey[900],
        //        Colors.blueGrey[600],
        //        Colors.blueGrey[400]
        //      ]
        //  )
        color: Colors.black87,
       ),
       
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: 
                       EdgeInsets.symmetric(horizontal:10)),
                      Column(
                      children:[Text ("Forgot password",style:TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),]
                      ),
                      SizedBox(height:40),
                      Padding(padding:EdgeInsets.symmetric(horizontal: 20)),
                        Text("Please enter your email to recieve a link to create a new password",style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                      TxtField(hint: "email", inputType:Text),                     
                        SizedBox(height: 20,),
                        TxtButton(title: "Send")
                    ],
                  ),
                )
       )   
);
}
}
