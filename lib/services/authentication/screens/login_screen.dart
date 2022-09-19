import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/services/authentication/screens/register_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/logo.dart';
import 'package:thermo_ieee_app/source/firebase/auth_helper.dart';
import '../bloc/authentication_bloc.dart';
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
                const ScreenTitle(title: 'تسجيل دخول'),
                const SizedBox(height: 20),
                Expanded(
                  child: BlocBuilder<AuthenticationBloc, AppStates>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return SingleChildScrollView(
                          child: Column(
                            children: [
                              TextFormAuth(
                                title: 'البريد الالكتروني',
                                initValue: AuthenticationBloc.instance.email,
                                onChanged:
                                    AuthenticationBloc.instance.updateEmail,
                                validate: (value) {
                                  if (value == null) print('Error');
                                },
                                input: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 20),
                              TextFormAuth(
                                title: 'كلمة المرور',
                                initValue: AuthenticationBloc.instance.password,
                                onChanged:
                                    AuthenticationBloc.instance.updatePassword,
                                validate: (value) {
                                  if (value == null) print('Error');
                                },
                                input: TextInputType.visiblePassword,
                                value: true,
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        );
                      }
                    },
                  ),
                ),
                RoutetButton(
                  title: 'دخول',
                  submit: () {
                    AuthenticationBloc.instance.siginIn();
                  },
                ),
                const SizedBox(height: 20),
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
    );
  }
}
