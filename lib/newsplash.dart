import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class NewSplash extends StatefulWidget {
  NewSplash({Key key}) : super(key: key);

  @override
  _NewSplashState createState() => _NewSplashState();
}

class _NewSplashState extends State<NewSplash> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
         children: [
          CarouselSlider(
            items: [
            Image.asset('assets/bg.jpg'),
            ], options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 1,
              onPageChanged: (index, reason){
                //initState((){
                  //currentIndex = index;
                //});
              },
            ),
            ),
        ]
       )
    );
  }
}
    