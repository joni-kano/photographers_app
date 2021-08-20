import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo/models/colors/myColors.dart';
import 'package:photo/models/elements/txtbutton.dart';
import 'package:photo/models/elements/alltext.dart';

 // ignore: must_be_immutable
 class LoginScreen extends StatelessWidget {
   static const routeName = '/Login'; 
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
        color:bgdark
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
                      children:[Text ("Welcome back",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),]
                      ),
                      SizedBox(height:100),
                      TxtField(hint: "enter your email", inputType:TextInputType.emailAddress),
                      SizedBox(height: 10,),
                      TxtField(hint:"password", inputType: TextInputType.text),
                      SizedBox(height: 10,),
                        Text("Forgot password?",style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 20,),
                        TxtButton(title: "Log in")
                
                    ],
                  ),
                )
       )   
);
}
}
