import 'package:flutter/material.dart';
class TxtField extends StatelessWidget {
  final String hint;
  final inputType;
  TxtField({@required this.hint, this.inputType});
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black54,
            ),
            child: TextField(
              keyboardType: inputType,
              decoration: 
              InputDecoration(hintText:hint,
              hintStyle: TextStyle(color: Colors.grey),
              border:InputBorder.none
              ),
            ),
          );
  }
}
// ignore: must_be_immutable
class ProfileTxtField extends StatelessWidget {
  final String labelText;
  final String placeholder;
  bool isPasswordTextField;
  bool showPassword = false;

  var isPasswordTextfield;
  ProfileTxtField({@required this.labelText,@required this.placeholder, @required this.isPasswordTextfield,});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child:TextField(
                //obscureText: isPasswordTextField ? showPassword:false,
                decoration: InputDecoration(
                //   //suffixIcon:isPasswordTextField 
                //   ? IconButton(
                //   onPressed: (){
                //     setState((){
                //       showPassword = !showPassword;
                //     });
                //   },
                //   icon:Icon(
                //     Icons.remove_red_eye,
                //     color: Colors.yellow,
                //   ),
                // ):null,
                  contentPadding: EdgeInsets.only(bottom: 3),
                  labelText:labelText,
                  labelStyle: TextStyle(color: Colors.white),
                  floatingLabelBehavior:FloatingLabelBehavior.always,
                  hintText: placeholder,
                  hintStyle: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                    color: Colors.white24,
                  ) ),
              )
                      );
  }
}
class ReviewTxt extends StatelessWidget {
  final String pname;
  final String rdetails;

  ReviewTxt({@required this.pname, @required this.rdetails,});
  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(pname,style:TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold,
                    color: Colors.white,),),
                    Text(rdetails,style:TextStyle(
                    fontSize: 16,
                    color: Colors.white54,),),
                  ],)
              )
              );
  }
}
class Headings extends StatelessWidget {
final String title;
final String subtitle;
Headings({@required this.title,@required this.subtitle});
@override
  Widget build(BuildContext context) {
    return Row(
                            children:<Widget> [
                                  SizedBox(width: 20,),
                                   Expanded(child:
                                   Container(
                                      child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
                                   )
                                   ),
                                   SizedBox(width: 160,),
                                    Expanded(child:
                                   Container(
                                       child: Text(subtitle,style:TextStyle(color:Colors.yellow,fontSize: 12,fontWeight: FontWeight.bold,)),
                                     ),
                                   ),
                                   ]
                      );
  }
  }