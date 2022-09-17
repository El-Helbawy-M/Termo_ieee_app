import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';

import '../../../source/firebase/auth_helper.dart';

class CustomerRegister extends StatelessWidget {
  final TextEditingController? emailController;

  final TextEditingController? passwordController;
  final TextEditingController? repasswordController;
  final TextEditingController? nameController;

  const CustomerRegister(
      {this.emailController,
      this.passwordController,
      this.nameController,
      this.repasswordController});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormAuth(
            title: 'الاسم بالكامل',
            input: TextInputType.name,
            controller: nameController,
            save: (value) {
              nameController!.text = value;
            },
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormAuth(
            title: 'البريد الالكتروني',
            input: TextInputType.emailAddress,
            controller: emailController,
            save: (value) {
              emailController!.text = value;
            },
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormAuth(
            input: TextInputType.visiblePassword,
            value: true,
            controller: passwordController,
            title: 'كلمة المرور',
            save: (value) {
              passwordController!.text = value;
            },
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormAuth(
            title: 'تأكيد كلمة المرور',
            input: TextInputType.visiblePassword,
            value: true,
            controller: repasswordController,
            save: (value) {
              repasswordController!.text = value;
            },
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
