import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/screens/login_screen.dart';
import 'package:thermo_ieee_app/services/authentication/screens/register_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/customer_register.dart';
import 'package:thermo_ieee_app/services/chat/screens/chats.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/main_models/customer.dart';
import 'package:thermo_ieee_app/main_models/worker.dart';
import 'package:thermo_ieee_app/services/notifications/screens/notification_screens.dart';
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
      title: 'AFT app',
      theme: ThemeData(
        fontFamily:'Cairo',
        primarySwatch: Colors.blue,
      ),
      home: const RegisterScreen(),
    );
  }
}


