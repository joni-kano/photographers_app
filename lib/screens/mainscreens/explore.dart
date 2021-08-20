import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo/data/cartitem.dart';
import 'package:photo/data/category.dart';
import 'package:photo/data/popular.dart';
import 'package:photo/models/elements/alltext.dart';
class ExploreScreen extends StatelessWidget {
  static const routeName = '/explore';

  get icon => null; 
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            height: 44,
            margin: EdgeInsets.only(top: 16,left: 16,right: 16,bottom: 2),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white10,
            ),
            child:Row(
            children:<Widget>[ TextField(
              decoration: InputDecoration(
                alignLabelWithHint:true,
                hintText: "Search",
                border:InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                  color: Colors.white54,
                ),
                prefixIcon: Icon(Icons.search,color: Colors.white54, size:30,)
              )
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage:AssetImage("assets/bg.jpg"),
            )
            ]
            ),
          ),
          buildCategoryWidget(),
          buildCategory2Widget(),
          //buildfilterWidget("Top-rated experiences","Book any photographer","experiences",categories2),
                    buildGridWidget(
            "popular experiences","kenya","experiences",experiences
          ),

        ],
      ),
    );
  }
  Container buildGridWidget(String title,String country, String buttonText, List<CardItem>cards, ){
    return Container(
                  //padding: EdgeInsets.only(left: 16),
                  //color: Colors.black87,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Row(children:<Widget>[
                      SizedBox(width: 10,),
                      Text("Recommended",
                      style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,color: Colors.white
                      ),
                      ),]),
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
                            color:Colors.white,
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
    return  Container(
                        padding: EdgeInsets.symmetric(horizontal:10),
                         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 275,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius:6,
                                    )
                                ],
                              ),child:Center(
                                child: Column(
                                 children: <Widget>[
                                   Expanded(
                                     child:Center(
                                    child:Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                    child: ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:AssetImage(cards[indexOne].imageUrl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                      )
                                    )
                                     ),
                                     ),
                                     Expanded(
                                       child:Column(
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           Text(cards[indexOne].country,
                                           style: TextStyle(
                                             letterSpacing: 1.0,color: Colors.red[900],fontSize: 12,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text(cards[indexOne].title,
                                           style: TextStyle(
                                             fontSize: 12,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                          //  Text("${cards[indexOne].price}per hour",
                                          //  style: TextStyle(
                                          //    fontSize: 16,fontWeight: FontWeight.bold
                                          //  ),
                                           //),
                                           SizedBox(height:8.0),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: <Widget>[
                                               Text("new"),
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
                              )
                              ),
                            SizedBox(height: 10,),
                            Expanded(             
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 275,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius:6,
                                    )
                                ],
                              ),
                              child:Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Expanded(
                                     child:Center(
                                    child:Container(
                                      width: double.infinity,
                                    child: ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:AssetImage(cards[indexTwo].imageUrl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                      )
                                    )
                                     ),
                                     ),
                                     Expanded(
                                       child:Column(
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         mainAxisAlignment: MainAxisAlignment.center,
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
                                           Text("${cards[indexTwo].price}per hour",
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8.0),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: <Widget>[
                                               SizedBox(width:2,),
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
                              )
                          ],
                          ),
                      );
  }
  Container buildCategory2Widget(){
    return Container(
                  height: 300,
                  color: Colors.grey[800],
                  padding: EdgeInsets.only(bottom:32,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Headings(title: "Popular", subtitle: "Show all"),
                      SizedBox(height: 20,),
                      Expanded(child:Container(
                         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        height:double.infinity, 
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:3,
                          itemBuilder:(BuildContext context, int index){
                            Category category = categories[index];
                            return Container(
                              width: 220,
                              margin: index == 0 ?EdgeInsets.only(left:12, right: 16, top: 4,bottom: 4):EdgeInsets.only(right: 16,top: 4,bottom: 4),
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
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:<Widget> [
                                  Expanded(

                                    child:Center(
                                      
                                      child:Container(
                                        width: double.infinity,
                                        child:
                                      
                                      ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:AssetImage(category.imageurl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                      )
                                      )
                                      )
                                      ),
                                      
                                    //padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    Center(
                                    child: Text(category.categoryName,
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.grey[800]),
                                    
                                    
                                   )

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
Container buildfilterWidget(String title,String country, String buttonText, List<Category2>cards,){
    return Container(
                  height: 300,
                  color: Colors.grey[800],
                  padding: EdgeInsets.only(top:32, bottom:32,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget>[
                                   Container(
                                     padding:EdgeInsets.only(left:10,),
                                      child: Text("Popular",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),)
                                   ),
                      buildGridColumnWidget(cards, 0,1),

                    ],
                  
                  ),
                  );
                
}
 Container buildCategoryWidget(){
    return Container(
                  height:300,
                  color: Colors.black54,
                  padding: EdgeInsets.only(top:32, bottom:32,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:<Widget> [
                      Row(
                            children:<Widget> [
                                  SizedBox(width: 20,),
                                   Expanded(child:
                                   Container(
                                      child: Text("Hot",style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),)
                                   )
                                   ),
                                   SizedBox(width: 220,),
                                    Expanded(child:
                                   Container(
                                  
                                       child: Text("show all",style:TextStyle(color:Colors.yellow,fontSize: 12,fontWeight: FontWeight.bold,)),
                                     ),
                                   ),
                                   ]
                      ),
                      SizedBox(height: 20,),
                      Expanded(child:Container(
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),),
                        padding: EdgeInsets.symmetric(vertical: 8),
          
                        child:ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount:3,
                          itemBuilder:(BuildContext context, int index){
                            Category category = categories[index];
                            return Container(
                              width: 220,
                              margin: index == 0 ?EdgeInsets.only(left:12, right: 16, top: 4,bottom: 4):EdgeInsets.only(right: 16,top: 4,bottom: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white12,
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
                                  Expanded(child:Center(
                                    child:Container(
                                      width: double.infinity,
                                    child: ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:AssetImage(category.imageurl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                      )
                                    )
                                    )
                                    ),
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                                    //child:Center(
                                    child: Text(category.categoryName,
                                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color:Colors.white70),
                                    ),
                                    //)
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

Container buildGridColumnWidget(List<Category2> cards, int indexOne,int indexTwo){ 
    return  Container(
                        padding: EdgeInsets.symmetric(horizontal:10),
                         decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius:6,
                                    )
                                ],
                              ),child:Center(
                                child: Column(
                                 children: <Widget>[
                                   Expanded(
                                     child:Center(
                                    child:Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                    child: ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:AssetImage(cards[indexOne].imageurl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                      ),

                                    )
                                     ),
                                     ),
                                     Expanded(
                                       child:Row(
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           Text(cards[indexOne].categorytitle,
                                           style: TextStyle(
                                             letterSpacing: 1.0,color: Colors.red[900],fontSize: 12,fontWeight: FontWeight.w600
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text(cards[indexOne].place,
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           
                                           Text("${cards[indexOne].rating}",style: TextStyle(fontWeight: FontWeight.bold),
                                               ),
                                               SizedBox(width: 8,),
                                               Icon(Icons.person, size: 15,),
                                               Text("${cards[indexOne].rating}")
                                             ],
                                           )
                                       ) 

                                 ], 
                                ),
                              )
                              )
                              ),
                            SizedBox(width: 10,),
                            Expanded(             
                              child: Container(
                                padding: EdgeInsets.all(4),
                                height: 275,
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    offset: Offset(0.0, 4.0),
                                    blurRadius:6,
                                    )
                                ],
                              ),
                              child:Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 children: <Widget>[
                                   Expanded(
                                     child:Center(
                                    child:Container(
                                      width: double.infinity,
                                    child: ClipRRect(
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(10) ,topRight: Radius.circular(10)),
                                      child: Image(image:AssetImage(cards[indexTwo].imageurl),
                                      fit: BoxFit.cover,//u can use url inplace of ""
                                      ) 
                                      )
                                    )
                                     ),
                                     ),
                                     Expanded(
                                       child:Row(
                                         crossAxisAlignment: CrossAxisAlignment.center,
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           Text(cards[indexTwo].place,
                                           style: TextStyle(
                                             letterSpacing: 1.0,color: Colors.red[900],fontSize: 12,fontWeight: FontWeight.w600
                                           ),
                                           ),
                                           SizedBox(height:8,),
                                           Text(cards[indexTwo].categorytitle,
                                           style: TextStyle(
                                             fontSize: 16,fontWeight: FontWeight.bold
                                           ),
                                           ),
                                           SizedBox(height:8.0),
                                           Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: <Widget>[
                                               SizedBox(width:2,),//icon:FaIcon(FontAwesomeIcons.heart),
                                            
                                               Text("${cards[indexTwo].rating}",style: TextStyle(fontWeight: FontWeight.bold),
                                               ),
                                               SizedBox(width: 8,),
                                               Icon(Icons.star, size: 15,),
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
                              )
                          ],
                          ),
                      );
  }
}