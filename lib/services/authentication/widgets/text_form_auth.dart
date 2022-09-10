import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class TextFormAuth extends StatelessWidget {
  final String? title;
final String? Function(String? val)? validate;
  final Function(String? val)? save;
  final TextInputType? input;
  final bool? value;
  const TextFormAuth({this.title, this.validate, this.save, this.input, this.value=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: value!,
      onSaved:save ,
      validator: validate,
      keyboardType: input,
      decoration: InputDecoration(
fillColor: AppColors.hintFieldColor,
          filled: true,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.borderColor),
          ),

          disabledBorder:
              OutlineInputBorder(borderSide: BorderSide.none),
          labelText: title,labelStyle: TextStyle(fontSize:16,color:AppColors.mainColor),
        alignLabelWithHint: false
      ),
    );
  }
}
