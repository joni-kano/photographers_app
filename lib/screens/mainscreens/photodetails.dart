import 'package:photo/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo/models/colors/myColors.dart';
//import 'package:photo/models/elements/appbar.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgdark,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation:1,
        leading: IconButton(
          icon:Icon(
            Icons.arrow_back,
            color: Colors.yellow,
          ), onPressed:(){},      
        ),
        title: Text("Kenya",style: TextStyle(color:Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      body:ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:8,left:8,right: 8,bottom: 2),
            padding: EdgeInsets.symmetric(horizontal: 8,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: bgdark,
            ),
            child:ClipRRect(
              borderRadius:BorderRadius.all( Radius.circular(10), ),child:
          Image(image: AssetImage("assets/bg.jpg"),
          fit: BoxFit.cover,
          ),)
          ),
          ReviewTxt(pname: "Kenya", rdetails: "this is a long text meant to explain much about what this about but has no refferences to us for no until we are done to do the main course of the day..thanks in advance"),
          SizedBox(height: 8,),
        Text("Services",style:TextStyle(color: Colors.white54,fontSize: 16,fontWeight: FontWeight.bold)),
        SizedBox(height: 8,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedBtn(title: "photography"),
                  SizedBox(width: 8,),
                    OutlinedBtn(title: "VideoEditing"),
                    SizedBox(width: 8,),
                    OutlinedBtn(title: "PhotoEditing"),
                ],
              ),
            ),
            buildCategoryWidget(),
        ],
      )
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
                      Headings(title: "Recent", subtitle: "showall"),
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

}