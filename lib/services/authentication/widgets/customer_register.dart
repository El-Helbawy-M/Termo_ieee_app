import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/authentication/widgets/text_form_auth.dart';

class CustomerRegister extends StatelessWidget {
  const CustomerRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormAuth(
          title: 'الاسم بالكامل',
          input: TextInputType.name,
        ),
        SizedBox(
          height: 20,
        ),
        TextFormAuth(
          title: 'البريد الالكتروني',
          input: TextInputType.emailAddress,
          validate: (val){

          },
          save: (val){},
        ),
        SizedBox(
          height: 20,
        ),
        TextFormAuth(
          input: TextInputType.visiblePassword,
          value: true,
          title: 'كلمة المرور',
          validate: (val){

          },
          save: (val){},
        ),
        SizedBox(
          height: 20,
        ),
        TextFormAuth(
          title: 'تأكيد كلمة المرور',
          input: TextInputType.visiblePassword,
          value: true,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
