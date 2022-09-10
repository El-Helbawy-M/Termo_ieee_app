import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({Key? key, this.isClickable = true, this.isPassword = false, required this.controller, required this.type, this.onSubmit, this.onChange, this.onTap, required this.validate, required this.hint,  this.prefix, this.suffix, this.suffixPressed}) : super(key: key);
  final TextEditingController controller;
  final TextInputType type;
  final ValueChanged? onSubmit;
  final ValueChanged? onChange;
  final GestureTapCallback? onTap;
  final bool isPassword;
  final FormFieldValidator validate;
  final String hint;
  final Widget? prefix;
  final IconData? suffix;
  final VoidCallback? suffixPressed;
  final bool isClickable;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClickable,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      onTap: onTap,
      validator: validate,
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.symmetric(horizontal:16),
        prefixIcon:prefix??null,
        isDense: true,
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  size: 24,
                ),
              )
            : null,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1,color: AppColors.mainColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(width: 1,color: Colors.grey),
        ),
      ),
    );
  }
}
