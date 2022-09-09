import 'package:flutter/material.dart';

import 'package:thermo_ieee_app/services/chat/screens/chats.dart';

import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/main_models/customer.dart';
import 'package:thermo_ieee_app/main_models/worker.dart';
import 'package:thermo_ieee_app/source/firebase/firestore_helper.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Chats(),
    );
  }
}


