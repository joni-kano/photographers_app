import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo/models/all.dart';
import 'package:photo/screens/settings.dart';
 // ignore: must_be_immutable
 class ProfileScreen extends StatelessWidget {
 static const RouteName ="/profile";
   File image1;

   get imagePicker => null;
   Future getimage()async{
     final image = await imagePicker.getImage(source:ImageSource.gallery);
     setState((){
       image1 = image;  
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation:1,
        leading: IconButton(
          icon:Icon(
            Icons.arrow_back,
            color: Colors.yellow,
          ), onPressed:(){},      
        ),
        actions: [
          IconButton(
            icon:Icon(Icons.settings,
            color: Colors.yellow,
            ) 
          , onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>Psettings()));
          }
          )
        ],
          ),
          body:Container(padding: EdgeInsets.only(left: 16,top:25,right: 16),
          color: Colors.black87,
          child:GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
          child: ListView(
            children: [
              Text("Edit Profile",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),
              ),
              SizedBox(height: 15,),
              Center(child:  
              Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4,
                      color: Theme.of(context).scaffoldBackgroundColor
                      ),
                      boxShadow :[ BoxShadow(
                        spreadRadius:2,blurRadius:10,
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0, 10)
                      ),],
                      shape:BoxShape.circle,
                      image:DecorationImage(
                      fit:BoxFit.cover,
                      image: AssetImage("assets/bg.jpg")
                      )
                       ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        color: Colors.yellow,
                      ),
                      child:
                      IconButton(
                        icon:Icon(Icons.edit,
                        color: Colors.black,
                        ) 
                      , onPressed: (){}
                      )
                    )
                    )
                ],
              ),
              ),
              ProfileTxtField(labelText: "Full name", placeholder:"Joni Kano",isPasswordTextfield:false),
              ProfileTxtField(labelText: "E-mail", placeholder:"crezyj@gmail.com",isPasswordTextfield:false),
              ProfileTxtField(labelText: "password", placeholder: "********",isPasswordTextfield:false),
              ProfileTxtField(labelText: "Location", placeholder: "Bungoma",isPasswordTextfield:false),
              SizedBox(
                height: 35,
              ),
              Expanded(child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>( Colors.white,),
                    padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 30)),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),)),
                    onPressed:(){},
                    child: Text("Cancel",style: TextStyle(fontSize:14,letterSpacing: 2.2,color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>( Colors.yellow,),
                      padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 30),),
                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),),
                      ),),
                      child: Text("Save",style: TextStyle(
                      fontSize:14,
                      letterSpacing:2.2,
                      color:Colors.black),
                      ),
                      
                      )
                ],
              )
              )

            ],
            ),
          )
          )
    );
  }
}

void setState(Null Function() param0) {
}
