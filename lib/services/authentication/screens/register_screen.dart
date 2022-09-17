import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import '../../../source/firebase/auth_helper.dart';
import '../../main/pages/main_page.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool selected = true;
  TextEditingController? emailTextController = TextEditingController();
  TextEditingController? passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Logo(),
                const ScreenTitle(title: 'تسجيل مستخدم جديد'),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: RegisterType(
                                  title: '   مستخدم    ',
                                  function: () {
                                    setState(() {
                                      selected = true;
                                    });
                                  },
                                  textColor: selected
                                      ? AppColors.mainColor
                                      : AppColors.hintColor,
                                  color: selected
                                      ? AppColors.mainColor
                                      : Colors.white,
                                ),
                              ),
                              const SizedBox(width: 24),
                              Expanded(
                                child: RegisterType(
                                  title: ' صاحب عمل',
                                  function: () {
                                    setState(() {
                                      selected = false;
                                    });
                                  },
                                  textColor: !selected
                                      ? AppColors.mainColor
                                      : AppColors.hintColor,
                                  color: !selected
                                      ? AppColors.mainColor
                                      : Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomerRegister(
                          emailController: emailTextController,
                          passwordController: passwordTextController,
                        ),
                        if (!selected) const WorkerRegister(),





                        
                      ],
                    ),
                  ),
                ),
                RoutetButton(
                  title: 'تسجيل',
                  submit: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      FirebaseAuther().signUpWithEmail(
                          email: emailTextController!.text,
                          password: passwordTextController!.text);
                    } else
                      print('error');
                  },
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
