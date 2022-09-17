import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/navigation/navigator.dart';
import 'package:thermo_ieee_app/navigation/routes.dart';
import 'package:thermo_ieee_app/services/authentication/screens/login_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/logo.dart';

import '../../../source/shared_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double width = 50,height = 50;
  
  @override
  void initState() { 
    super.initState();
    width = height = 200;
  }
  
  @override
  void didChangeDependencies() async{
    super.didChangeDependencies();
    await SharedHelper.init();
    !SharedHelper.instance.isTokenSaved?CustomNavigator.push(Routes.main,replace: true):CustomNavigator.push(Routes.login,replace: true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          duration: const Duration(microseconds: 600),
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
