import 'package:flutter/material.dart';

class Circleimg extends StatelessWidget {
  String path;
  double radio;
   Circleimg({Key? key, required this.path, this.radio=25}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
radius: radio,
      backgroundImage: AssetImage(path,),
     // child: Image.asset(path,fit: BoxFit.fill,),
    );
  }
}
