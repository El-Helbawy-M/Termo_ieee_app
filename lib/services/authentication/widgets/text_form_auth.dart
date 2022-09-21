import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';

class TextFormAuth extends StatelessWidget {
  final TextEditingController? controller;
  final String? title, initValue;
  final String? Function(String? val)? validate;
  final Function(String?)? onChanged;
  final TextInputType? input;
  final bool? value;

  const TextFormAuth(
      {this.title,
      this.initValue,
      this.validate,
      this.onChanged,
      this.input,
      this.value = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      
      decoration: BoxDecoration(color: AppColors.hintFieldColor,borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: TextFormField(
          controller: controller,
          obscureText: value!,
          onChanged: onChanged,
          validator: validate,
          keyboardType: input,
          initialValue: initValue,
          style: AppTextStyles.w600.copyWith(fontSize: 12,color: Colors.black),
          decoration: InputDecoration(
            // fillColor: ,
            // filled: true,
            border: const UnderlineInputBorder(borderSide: BorderSide.none),
            labelText: title,
            labelStyle:
                AppTextStyles.w600.copyWith(fontSize: 13, color: Colors.grey),
            alignLabelWithHint: false,
          ),
        ),
      ),
    );
  }
}
