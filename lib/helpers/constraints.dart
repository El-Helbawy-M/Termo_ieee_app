import 'package:flutter/material.dart';

abstract class MediaQueryHelper {
  static double width (BuildContext context)=> MediaQuery.of(context).size.width;
  static double height (BuildContext context)=> MediaQuery.of(context).size.height;
}