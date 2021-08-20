import 'dart:ui';
import 'package:photo/models/elements/txtbutton.dart';
import 'package:photo/models/elements/alltext.dart';
import 'package:flutter/material.dart';
 class SignUpScreen extends StatelessWidget {
   static const routeName = '/SignUp';
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.black87,
         actions:<Widget> [
            ],
       ),
       body: Container(
         padding: EdgeInsets.symmetric(horizontal:15, vertical: 20),
         width: double.infinity,
         height: double.infinity,
         decoration: BoxDecoration(
               color:Colors.black87
             
         ),
       child:SingleChildScrollView(
           scrollDirection: Axis.vertical,
           physics: BouncingScrollPhysics(),
           child: Column(
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 10)),
                 Column(
                   children:[Text ("Create account",style:TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),]
                      ),                        SizedBox(height: 20,),
                               TxtField(hint: "fullname",),
                               SizedBox(height: 10,),
                               TxtField(hint: "email",),
                             SizedBox(height: 10,),
                              TxtField(hint: "phone", ),
                               SizedBox(height: 10,),
                                TxtField(hint: "password",),
                               SizedBox(height: 10,),
                                 Container(
                                 padding: EdgeInsets.symmetric(horizontal: 20),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(20),
                          color: Colors.black54,
                                 ),
                               ),
                               SizedBox(height: 20,),
                              TxtButton(title: "Sign up")
                             ],
                           ),
                         )
      
                     ),
       
                     );

   }
 }
