import 'package:flutter/material.dart';

import '../source/puplic_model.dart';

abstract class AppStates {}

class Loading extends AppStates {}

class Empty extends AppStates {}

class Start extends AppStates {}

class Done extends AppStates {
  Mapper? model;
  List<Widget>? cards;
  List<dynamic>? list;
  bool? reload;
  bool? loading;

  Done(
      {this.model,
      this.cards,
      this.list,
      this.reload = true,
      this.loading = false});
}

class Error extends AppStates {}
