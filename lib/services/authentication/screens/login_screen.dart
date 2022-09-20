import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/core/validator.dart';
import 'package:thermo_ieee_app/services/authentication/screens/register_screen.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/logo.dart';
import 'package:thermo_ieee_app/source/firebase/auth_helper.dart';
import '../../../helpers/colors.dart';
import '../../../helpers/localization.dart';
import '../../../navigation/navigator.dart';
import '../../../navigation/routes.dart';
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

class _LoginScreenState extends State<LoginScreen> with Validations {
  final GlobalKey<FormState> _formKey = GlobalKey();

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
                                validate: emailValidation,
                                input: TextInputType.emailAddress,
                              ),
                              const SizedBox(height: 20),
                              TextFormAuth(
                                title: 'كلمة المرور',
                                initValue: AuthenticationBloc.instance.password,
                                onChanged:
                                    AuthenticationBloc.instance.updatePassword,
                                validate: passwordValidation,
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
                  title: getLang("login"),
                  submit: () {
                    if (_formKey.currentState!.validate()) {
                      AuthenticationBloc.instance.siginIn();
                    }
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  [
                    Text(getLang("you dont't have an account ? ")),
                    InkWell(
                      onTap: CustomNavigator.push(Routes.register,replace: true),
                      child: Text(
                        getLang("register"),
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
