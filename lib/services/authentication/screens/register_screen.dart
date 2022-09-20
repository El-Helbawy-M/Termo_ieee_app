import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/localization.dart';
import 'package:thermo_ieee_app/navigation/navigator.dart';
import 'package:thermo_ieee_app/navigation/routes.dart';
import 'package:thermo_ieee_app/services/authentication/screens/login_screen.dart';
import '../bloc/authentication_bloc.dart';
import '../widgets/customer_register.dart';
import '../widgets/logo.dart';
import '../widgets/route_button.dart';
import '../widgets/screen_title.dart';

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
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Logo(),
                const ScreenTitle(title: 'تسجيل مستخدم جديد'),
                Expanded(
                  child: BlocBuilder<AuthenticationBloc, AppStates>(
                    builder: (context, state) {
                      return state is Loading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : SingleChildScrollView(
                              child: CustomerRegister(),
                            );
                    },
                  ),
                ),
                RoutetButton(
                  title: getLang(context,"register"),
                  submit: () {
                    // if (_formKey.currentState!.validate()) {
                      AuthenticationBloc.instance.register();
                    // }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [

                    Text(getLang(context,"you have an account ? ")),
                    InkWell(
                      onTap:()=> Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen())),
                      child: Text(
                        getLang(context,"login"),
                        style: TextStyle(color: AppColors.mainColor),
                      ),
                    ),
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


//  Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         vertical: 20),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Expanded(
//                                           child: RegisterType(
//                                             title: '   مستخدم    ',
//                                             function: () {
//                                               setState(() {
//                                                 selected = true;
//                                                 AuthenticationBloc.instance
//                                                     .setType(UserType.customer);
//                                               });
//                                             },
//                                             textColor: selected
//                                                 ? AppColors.mainColor
//                                                 : AppColors.hintColor,
//                                             color: selected
//                                                 ? AppColors.mainColor
//                                                 : Colors.white,
//                                           ),
//                                         ),
//                                         const SizedBox(width: 24),
//                                         Expanded(
//                                           child: RegisterType(
//                                             title: ' صاحب عمل',
//                                             function: () {
//                                               setState(() {
//                                                 selected = false;

//                                                 AuthenticationBloc.instance
//                                                     .setType(UserType.worker);
//                                               });
//                                             },
//                                             textColor: !selected
//                                                 ? AppColors.mainColor
//                                                 : AppColors.hintColor,
//                                             color: !selected
//                                                 ? AppColors.mainColor
//                                                 : Colors.white,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),