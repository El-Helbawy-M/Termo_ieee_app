import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/bloc/authentication_bloc.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';

import '../../../core/validator.dart';


class CustomerRegister extends StatelessWidget with Validations {
  final List items = ['نجارة', 'سباكة', 'خياطة', 'كهرباء', 'تشطيب', 'ق', 'ش'];
  CustomerRegister( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormAuth(
            title: 'الاسم بالكامل',
            input: TextInputType.name,
            initValue: AuthenticationBloc.instance.name,
            onChanged: AuthenticationBloc.instance.updateName,
            validate: generalValidation,
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'البريد الالكتروني',
            input: TextInputType.emailAddress,
            initValue: AuthenticationBloc.instance.email,
            onChanged: AuthenticationBloc.instance.updateEmail,
            validate: emailValidation,
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'رقم الموبايل',
            input: TextInputType.phone,
            onChanged: AuthenticationBloc.instance.updatePhone,
            initValue: AuthenticationBloc.instance.phone,
            validate: phoneValidation,
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'العنوان',
            input: TextInputType.streetAddress,
            onChanged: AuthenticationBloc.instance.updateAddress,
            initValue: AuthenticationBloc.instance.address,
            
            validate: generalValidation,
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'الرقم القومي',
            input: TextInputType.number,
            onChanged: (value) {},
            validate: generalValidation,
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            input: TextInputType.visiblePassword,
            value: true,
            title: 'كلمة المرور',
            initValue: AuthenticationBloc.instance.password,
            onChanged: AuthenticationBloc.instance.updatePassword,
            validate: passwordValidation,
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'تأكيد كلمة المرور',
            input: TextInputType.visiblePassword,
            value: true,
            initValue: AuthenticationBloc.instance.confirmPassword,
            onChanged: AuthenticationBloc.instance.updateConfirmPassword,
            validate: passwordValidation,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
