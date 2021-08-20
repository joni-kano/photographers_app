import 'package:flutter/material.dart';
class Btn extends PageRouteBuilder {
  final Widget currentpage;
  final Widget nextpage;
  //final VoidCallback onCountSelected;
  Btn({this.currentpage ,this.nextpage}):
  super (pageBuilder:(BuildContext context,Animation<double>animation,Animation<double>secondaryAnimation,) =>currentpage, transitionsBuilder:(BuildContext context, Animation<double>animation,Animation<double>secondaryAnimation,Widget child,)=>Stack(children:<Widget>[SlideTransition(position: new Tween<Offset>(begin: const Offset (0.0,0.0),end: const Offset(-1.0,0.0),).animate(animation),child:nextpage,),SlideTransition(position: new Tween<Offset>(begin: const Offset(1.0,0.0),end:Offset.zero,).animate(animation),child: currentpage,)
  ],
  ),
  );
}