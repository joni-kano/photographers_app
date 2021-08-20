import 'package:flutter/material.dart';
import 'package:photo/all.dart';
class TxtButton extends StatelessWidget {
  final String title;
  TxtButton({@required this.title,});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal:10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:bgyellow, 
                          //border: Border(bottom: BorderSide(color: Colors.grey[200]))
                        ),
                        child: TextButton(
                          child: Text(title,style:TextStyle(fontSize: 16,color: Colors.black),),
                          onPressed: (){
                            if( title =="Login")return
                            Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
                            else if (title =="Signup")
                            return Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
                            else if (title =="Sign up")
                            return Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                            else if (title =="Log in")
                            return Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                          }, 
                          ),
                      );
  }
}