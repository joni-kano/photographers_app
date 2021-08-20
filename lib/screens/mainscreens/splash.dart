import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:photo/models/elements/txtbutton.dart';
void main() =>runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),

  )
);

class SplashScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  PageController _pageController;

  AnimationController rippleController;
  AnimationController scaleController;

  Animation<double> rippleAnimation;

  @override
  void initState(){
    super.initState();
    _pageController=PageController(
      initialPage: 0
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        accentColor: Colors.amber,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.3),
                    Colors.black.withOpacity(.3),
                    ]
                    )
              ),
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children:<Widget>[
                    SizedBox(height:160,),
                    Text("WELCOME  PHOTOSHARE ZONE ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold,)),
                    SizedBox(height: 20,),
                    
                    
                    Positioned(child:
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:<Widget>[ 
                    TxtButton(title: "Login"),
                    SizedBox(height: 20,),
                    TxtButton(title: "Signup"),
                    ]
                    ),
                    
                    top:80,
                    bottom: 20,
                    ),
                      ]
                      )
                    ],
                  
                ),
              ),
            )
          )
        ],

      ),
      
    )
    );
  }
}
