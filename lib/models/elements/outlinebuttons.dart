import 'package:flutter/material.dart';
//import 'package:photo/models/colors/myColors.dart';
class OutlinedBtn extends StatelessWidget {
  final String title;
  OutlinedBtn({@required this.title,});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>(Colors.white54),
                    padding:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(horizontal: 10)),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),)),
                    onPressed:(){},
                    child: Text(title,style: TextStyle(fontSize:14,letterSpacing: 2.2,color: Colors.black)),
                    );
}
}