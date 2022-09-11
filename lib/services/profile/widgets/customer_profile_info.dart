import 'package:flutter/material.dart';

import '../../../helpers/text_styles.dart';
import '../../chat/widgets/default_form_field.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.addressController,
  }) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController addressController;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          DefaultFormField(
            controller: nameController,
            type: TextInputType.text,
            validate: (value) {
              if (value.isEmpty) {
                return 'Please Enter Your Name';
              }
              return null;
            },
            hint: 'Name',
            prefix: const Icon(Icons.person),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          DefaultFormField(
            controller: emailController,
            type: TextInputType.emailAddress,
            validate: (value) {
              if (value.isEmpty) {
                return 'Please Enter Your Email';
              }
              return null;
            },
            hint: 'Email',
            prefix: const Icon(Icons.email),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          DefaultFormField(
            controller: phoneController,
            type: TextInputType.phone,
            validate: (value) {
              if (value.isEmpty) {
                return 'Please Enter Your Phone';
              }
              return null;
            },
            hint: 'Phone',
            prefix: const Icon(Icons.phone),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          DefaultFormField(
            controller: addressController,
            type: TextInputType.text,
            validate: (value) {
              if (value.isEmpty) {
                return 'Please Enter Your Address';
              }
              return null;
            },
            hint: 'Address',
            prefix: const Icon(Icons.location_on_outlined),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Text(
            ': قائمه الطلبات ',
            style: AppTextStyles.w900.copyWith(fontSize: 20),
          ),
        ]
        ,
      )
      ,
    );
  }
}