import 'package:flutter/material.dart';
//import 'package:photo/colors/myColors.dart';

class Upload extends StatelessWidget {
  static const RouteName = "/Upload";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon:Icon(Icons.arrow_back,
          color: Colors.yellow,
          ),onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.yellow,
             onPressed:(){}
             )
        ],
      ),
      body: Container(padding: EdgeInsets.only(left: 16,top:25,right: 16),
          child:GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: ListView(
               children: [
              Text("upload a picture",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),
              ),
              SizedBox(height: 15,),
              Center(child: 
              Stack(
                children: [
                  Container(
                    height:300,
                    width: 200,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Theme.of(context).scaffoldBackgroundColor,
                     image: DecorationImage(
                       fit:BoxFit.cover,
                       image: AssetImage("assets/a.jpg")
                     )
                   ), 
                  ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
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
                    ),
                    SizedBox(height: 20,),
                ],
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(style: ButtonStyle(
                    backgroundColor:MaterialStateProperty.all<Color>( Colors.white,),
                    padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 20)),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),)),
                    onPressed:(){},
                    child: Text("Cancel",style: TextStyle(fontSize:14,letterSpacing: 2.2,color: Colors.black)),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>( Colors.yellow,),
                      padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 20),),
                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),),
                      ),),
                      child: Text("Save",style: TextStyle(
                      fontSize:14,
                      letterSpacing:2.2,
                      color:Colors.white),
                      ),
                      
                      )
                ],
              )
               ],
            ),
            ),
      )
    );
  }
}