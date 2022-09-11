import 'package:flutter/material.dart';

class Circleimg extends StatelessWidget {
  String path;
   Circleimg({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(

      backgroundImage: AssetImage(path,),
     // child: Image.asset(path,fit: BoxFit.fill,),
    );
  }
}
