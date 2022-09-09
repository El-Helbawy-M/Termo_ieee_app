import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({Key? key, this.isClickable = true, this.isPassword = false, required this.controller, required this.type, this.onSubmit, this.onChange, this.onTap, required this.validate, required this.label,  this.prefix, this.suffix, this.suffixPressed}) : super(key: key);
  final TextEditingController controller;
  final TextInputType type;
  final ValueChanged? onSubmit;
  final ValueChanged? onChange;
  final GestureTapCallback? onTap;
  final bool isPassword;
  final FormFieldValidator validate;
  final String label;
  final IconData? prefix;
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
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),
    );
  }
}
