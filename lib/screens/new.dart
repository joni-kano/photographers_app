import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo/data/cartitem.dart';
import 'package:photo/data/category.dart';
class FavoritesScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 16,left: 16,right: 16,bottom: 4),
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              boxShadow: [BoxShadow(
                offset: Offset(0.0,1.0),
                blurRadius: 4,
                color: Colors.black26,
              ) 
              ]
            ),
            child: TextField(
              decoration: InputDecoration(
                alignLabelWithHint:true,
                hintText: "Try\"Kamplala\"",
                border:InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          Expanded( 
            child:ListView(
            children:<Widget>[
              buildfilterWidget(),//edit from here john
              buildCategoryrWidget(),
              buildGridWidget(
                "Top-rated experiences",
                "Book activities led by local hosts on your next trip",
                "experiences",
                experiences),
                SizedBox(height:50,),
              buildGridWidget("introducting airbnb Photography ", "platform where photophers meet", "adventure", experiences),
              SizedBox(height:50)
            ]
            )
            ),
        ],
      ),
    );
  }
  Container buildGridWidget(String title,String country, String buttonText, List<CardItem>cards, ){
    return Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Top Rated Photographers",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 10,),
                      Text("These are some of the best local photographers",
                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1.0
                      ),
                      ),
                      SizedBox(height:10,),
                      buildGridRowWidget(cards,0,1),
                      SizedBox(height:10,),
                      buildGridRowWidget(cards,2,3),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical:4),
                        margin:EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border:Border.all(
                            color:Colors.tealAccent,
                          )
                        ),
                        child:Center(
                          child:
                        Text("show all $buttonText",style: TextStyle(color:Colors.blueAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                        )
                      )
                      )
                    ],
                  ),
                  );
  }
  Container buildGridRowWidget(List<CardItem> cards, int indexOne,int indexTwo){ 
    return                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 275,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Expanded(
                                     child: Image(image: NetworkImage(cards[indexOne].imageUrl),
                                     fit: BoxFit.cover,
                                     )
                                     ),
                                     Expanded(
                                       child:Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: <Widget>[
                                           Text(cards[indexOne].country,
                                           style: TextStyle(
                                             letterSpacing: 1.0,color: Colors.red[900],fontSize: 12,fontWeight: FontWeight.w600
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text(cards[indexOne].title,
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text("${cards[indexOne].price}per night",
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8.0),
                                           Row(
                                             children: <Widget>[
                                               Text(""),
                                               SizedBox(width: 2,),
                                               Text("${cards[indexOne].ratingCount}",style: TextStyle(fontWeight: FontWeight.bold),
                                               ),
                                               SizedBox(width: 8,),
                                               Icon(Icons.person, size: 15,),
                                               Text("${cards[indexOne].rating}")
                                             ],
                                           )
                                         ],
                                       ) 
                                     )
                                 ], 
                                ),
                              )
                              ),
                            Expanded(             
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 275,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Expanded(
                                     child: Image(image: NetworkImage(cards[indexTwo].imageUrl),
                                     fit: BoxFit.cover,
                                     )
                                     ),
                                     Expanded(

                                       child:Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         mainAxisAlignment: MainAxisAlignment.start,
                                         children: <Widget>[
                                           Text(cards[indexTwo].country,
                                           style: TextStyle(
                                             letterSpacing: 1.0,color: Colors.red[900],fontSize: 12,fontWeight: FontWeight.w600
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text(cards[indexTwo].title,
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text("${cards[indexTwo].price}per night",
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8.0),
                                           Row(
                                             children: <Widget>[
                                               Text("@#"),
                                               SizedBox(width: 2,),
                                               Text("${cards[indexTwo].ratingCount}",style: TextStyle(fontWeight: FontWeight.bold),
                                               ),
                                               SizedBox(width: 8,),
                                               Icon(Icons.person, size: 15,),
                                               Text("${cards[indexTwo].rating}")
                                             ],
                                           )
                                         ],
                                       ) 
                                     )
                                 ], 
                                ),
                              )
                              )
                          ],
                          ),
                      );
  }
  Container buildCategoryrWidget(){
    return Container(
                  height: 300,
                  color: Colors.black26,
                  padding: EdgeInsets.only(top:32, bottom:32,left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Text("What can we help you find?",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0
                      ),
                      ),
                      SizedBox(height: 20,),
                      Expanded(child:Container(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        height:double.infinity, 
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:3,
                          itemBuilder:(BuildContext context, int index){
                            Category category = categories[index];
                            return Container(
                              width: 140,
                              margin: index == 0 ?EdgeInsets.only(left:32, right: 16, top: 4,bottom: 4):EdgeInsets.only(right: 16,top: 4,bottom: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius:6,
                                    )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget> [
                                  Expanded(
                                    child:Container(
                                      width: double.infinity,
                                    child: ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:NetworkImage(category.imageurl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                    )
                                    )
                                    ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    child: Text(category.categoryName,
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey[800])
                                    ),
                                  )
                                ],
                              ),
                            );
                          }
                      ),
                      )
                      )
                    ],
                  ),
                );

  }
  Container buildfilterWidget(){
    return  Container(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Row(
                children: <Widget>[
                Container(
                padding: EdgeInsets.symmetric(horizontal: 32,vertical: 12),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[400],
                  width: 1.0,
                  style: BorderStyle.solid,
                )
                ),
                child: Text("Dates",style: TextStyle(color: Colors.grey[400]),),
               ),
               SizedBox(width: 10,),
               Container(
                padding: EdgeInsets.symmetric(horizontal: 32,vertical: 12),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[400],
                  width: 1.0,
                  style: BorderStyle.solid,
                )
                ),
                child: Text("guests",style: TextStyle(color: Colors.grey[400]),),
               )
                ]
               
              ),
    );
  }
}

// TextButton(
//                         child: Text("login",
//                         style: TextStyle(fontSize: 16,color: Colors.black),
//                         ),
//                         style: ButtonStyle(
//                         padding:MaterialStateProperty.all<EdgeInsets> (EdgeInsets.symmetric(horizontal: 120,vertical: 6),),
//                         backgroundColor:MaterialStateProperty.all<Color>(Colors.white),
//                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                         borderRadius:BorderRadius.circular(10),  
//                       )),),
//                         onPressed: ()
//                         {
//                           Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
//                         },
//                         ),

//                     ElevatedButton(
//                       style: ButtonStyle(
//                         padding:MaterialStateProperty.all<EdgeInsets> (EdgeInsets.symmetric(horizontal: 120,vertical:4 ),),
//                         backgroundColor:MaterialStateProperty.all<Color>(Colors.yellow),
//                         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                         borderRadius:BorderRadius.circular(12),
                        
//                       )),),
//                       onPressed: (){
//                         Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
//                       }, 
//                       child: Text("signup",style:TextStyle(fontSize: 14,color: Colors.black),)
//                       ),