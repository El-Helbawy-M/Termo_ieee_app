import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/navigation/navigator.dart';

abstract class MediaQueryHelper {
  static double width = MediaQuery.of(CustomNavigator.navigatorState.currentContext!).size.width;
  static double height = MediaQuery.of(CustomNavigator.navigatorState.currentContext!).size.height;
}