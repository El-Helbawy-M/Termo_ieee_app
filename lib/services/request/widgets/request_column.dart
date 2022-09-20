import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class TextFormReq extends StatelessWidget {
  final TextEditingController? controller;
  final String? title;
  final String? Function(String? val)? validate;
  final Function(dynamic)? save;
  final TextInputType? input;
  final bool? value;
  final String? hint;
final int? lines;
  const TextFormReq({this.title,
    this.validate,
    this.save,
    this.input,
    this.value = false,
    this.controller, this.hint, this.lines=1});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(title!, style: TextStyle(fontSize: 17),),
    TextFormField(
    controller: controller,
    obscureText: value!,
    onSaved: save,
    validator: validate,
    keyboardType: input,
    decoration: InputDecoration(
    fillColor: AppColors.hintFieldColor,
    filled: true,
    border: OutlineInputBorder(
    borderSide: BorderSide.none ,),
    hintText: hint,
    alignLabelWithHint: false),maxLines: lines,
    ),
    SizedBox(height: 20
    ,
    )
    ]
    ,
    );
  }
}
