import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/main_models/customer.dart';
import 'package:thermo_ieee_app/navigation/navigator.dart';
import 'package:thermo_ieee_app/navigation/routes.dart';
import 'package:thermo_ieee_app/services/authentication/screens/login_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/logo.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';

import '../../../source/shared_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      if (SharedHelper.instance.isTokenSaved) {
        CustomerProfileBloc.instance
            .getProfile(SharedHelper.instance.getToken());
        CustomNavigator.push(Routes.main, replace: true);
      } else {
        CustomNavigator.push(Routes.login, replace: true);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
