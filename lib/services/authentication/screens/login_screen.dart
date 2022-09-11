import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/screens/register_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/logo.dart';
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
  final GlobalKey<FormState> _formKey=GlobalKey();
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
                    title: 'الاسم بالكامل',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormAuth(
                    title: 'البريد الالكتروني',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoutetButton(
                    title: 'دخول',
                    submit: (){},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [ ClickableContainer(
                    title: 'انشاء حساب جديد؟',route: RegisterScreen(),
                  ), ClickableContainer(
                    title: 'نسيت كلمة المرور؟',
                  ),],)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
