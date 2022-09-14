import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/screens/register_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/logo.dart';
import 'package:thermo_ieee_app/services/home/pages/home_page.dart';
import 'package:thermo_ieee_app/source/firebase/auth_helper.dart';
import '../widgets/clickable_container.dart';
import '../widgets/route_button.dart';
import '../widgets/screen_title.dart';
import '../widgets/text_form_auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  String? email, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Logo(),
                  ScreenTitle(title: 'تسجيل دخول'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormAuth(
                    title: 'البريد الالكتروني',
                    save: (value) {
                      FirebaseAuther().email = value;
                    },
                    validate: (value) {
                      if (value == null) print('Error');
                    },
                    input: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormAuth(
                    title: 'كلمة المرور',
                    save: (value) {
                      FirebaseAuther().password = value;
                    },
                    validate: (value) {
                      if (value == null) print('Error');
                    },
                    input: TextInputType.visiblePassword,
                    value: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoutetButton(
                    title: 'دخول',
                    submit: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        FirebaseAuther().signInWithEmail();
                      }
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => HomePage())));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClickableContainer(
                        title: 'انشاء حساب جديد؟',
                        route: RegisterScreen(),
                      ),
                      ClickableContainer(
                        title: 'نسيت كلمة المرور؟',
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
