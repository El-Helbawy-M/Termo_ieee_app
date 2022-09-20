import 'dart:math';

import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

abstract class ColorShuffler{
  static List<Color> colors = [
    AppColors.CIRCLE_BACKGROUND,
    AppColors.CIRCLE_BACKGROUND2,
    AppColors.CIRCLE_BACKGROUND3,
    AppColors.CIRCLE_BACKGROUND4,
    AppColors.CIRCLE_BACKGROUND5,
    AppColors.CIRCLE_BACKGROUND6,
    AppColors.CIRCLE_BACKGROUND7,
    AppColors.CIRCLE_BACKGROUND8,
  ];

  static Color shuffleColor() => colors[Random().nextInt(8)];
}