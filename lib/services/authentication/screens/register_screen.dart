import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import '../screens/login_screen.dart';
import '../widgets/customer_register.dart';
import '../widgets/clickable_container.dart';
import '../widgets/logo.dart';
import '../widgets/route_button.dart';
import '../widgets/screen_title.dart';
import '../widgets/register_type.dart';
import '../widgets/worker_register.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool selected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Logo(),
                ScreenTitle(title: 'تسجيل مستخدم جديد'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RegisterType(
                      title: '   مستخدم    ',
                      function: () {
                        setState(() {
                          selected = true;
                        });
                      },
                      textColor: selected ? AppColors.mainColor : AppColors.hintColor,
                      color: selected ? AppColors.mainColor : Colors.white,
                    ),
                    RegisterType(
                      title: ' صاحب عمل',
                      function: () {
                        setState(() {
                          selected = false;
                        });
                      },
                      textColor: !selected ? AppColors.mainColor : AppColors.hintColor,
                      color: !selected ? AppColors.mainColor : Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                selected
                    ? CustomerRegister()
                    : Column(
                        children: [CustomerRegister(), WorkerRegister()],
                      ),
                RoutetButton(
                  title: 'تسجيل',
                  submit: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClickableContainer(
                      title: 'تسجيل الدخول',
                      route: LoginScreen(),
                    ),
                    Text('  لديك حساب؟'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
