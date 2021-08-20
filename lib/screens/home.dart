import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo/all.dart';
 class HomeScreen extends StatefulWidget {
   static const routeName = '/HomeScreen';
 
   @override
   _HomeScreenState createState() => _HomeScreenState();
 }
 
 class _HomeScreenState extends State<HomeScreen> 
 with SingleTickerProviderStateMixin{
   TabController _tabcontroller;
   @override
   void initState(){
     super.initState(

     );
     _tabcontroller = new TabController(length: 5, vsync: this, initialIndex: 0);
   }
   @override
   Widget build(BuildContext context) {
     return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black45,
          body: TabBarView(
            controller: _tabcontroller,
            children: <Widget>[
              SingleChildScrollView(
                child:PDetails()),
          Details(),
          Reviews(),
          Upload(),
          ProfileScreen(),
          ]
          ),

          bottomNavigationBar: TabBar(
            controller: _tabcontroller,
            labelColor: Colors.yellow,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
            unselectedLabelColor: Colors.white54,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.search,size:25,),
                text: "Explore",
                ),
              Tab(
                icon: Icon(Icons.favorite_border,size:25,),
                text: "posts",
                ),
              Tab(
                icon: Icon(FontAwesomeIcons.airbnb,size:25,),
                text: "TRIPS",
                ),
              Tab(
                icon: Icon(Icons.notifications_active,
                size:25,),
                text: "notifications",
                ),
                Tab(
                icon: Icon(Icons.person,size:25,),
                text: "PROFILE",
                )
            ],
          )
        ),
     );
   }
 }
