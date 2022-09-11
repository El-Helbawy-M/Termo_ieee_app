import 'package:flutter/material.dart';
class ScreenTitle extends StatelessWidget {
  final String? title;

  const ScreenTitle({ this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title!,style: TextStyle(fontSize: 32),);
  }
}
