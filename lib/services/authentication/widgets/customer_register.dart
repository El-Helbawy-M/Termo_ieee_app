import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/bloc/authentication_bloc.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';

import '../../../source/firebase/auth_helper.dart';
import '../../filter/widgets/filter_dropdown.dart';

class CustomerRegister extends StatelessWidget {
  final List items = ['نجارة', 'سباكة', 'خياطة', 'كهرباء', 'تشطيب', 'ق', 'ش'];
  final bool check;
  CustomerRegister(this.check, {Key? key}) : super(key: key);

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
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          if(check)const SizedBox(height: 20),
          if(check)TextFormAuth(
            title: 'البريد الالكتروني',
            input: TextInputType.emailAddress,
            initValue: AuthenticationBloc.instance.email,
            onChanged: AuthenticationBloc.instance.updateEmail,
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'رقم الموبايل',
            input: TextInputType.phone,
            onChanged: AuthenticationBloc.instance.updatePhone,
            initValue: AuthenticationBloc.instance.phone,
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'العنوان',
            input: TextInputType.streetAddress,
            onChanged: AuthenticationBloc.instance.updateAddress,
            initValue: AuthenticationBloc.instance.address,
            
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'الرقم القومي',
            input: TextInputType.number,
            onChanged: (value) {},
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          if(!check)const SizedBox(height: 20),
          if(!check)FilterDropdown(text: 'الخدمة', items: items),
          const SizedBox(height: 20),
          TextFormAuth(
            input: TextInputType.visiblePassword,
            value: true,
            title: 'كلمة المرور',
            initValue: AuthenticationBloc.instance.password,
            onChanged: AuthenticationBloc.instance.updatePassword,
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          const SizedBox(height: 20),
          TextFormAuth(
            title: 'تأكيد كلمة المرور',
            input: TextInputType.visiblePassword,
            value: true,
            initValue: AuthenticationBloc.instance.confirmPassword,
            onChanged: AuthenticationBloc.instance.updateConfirmPassword,
            validate: (value) {
              if (value == null) print('Error');
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
