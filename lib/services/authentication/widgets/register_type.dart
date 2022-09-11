import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class RegisterType extends StatefulWidget {
  final String? title;
  final Color? color ;
  final Function()? function;
  final Color? textColor;
  RegisterType({this.title, this.color, this.function,this.textColor});

  @override
  State<RegisterType> createState() => _RegisterTypeState();
}

class _RegisterTypeState extends State<RegisterType> {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:widget.function!,
      child: Text(
        widget.title!,
        style: TextStyle(fontSize: 20,color: widget.textColor),
      ),
      style: ButtonStyle(
          side: MaterialStateProperty.all(BorderSide(
              width: 1,
              color:widget.color!)),
          padding: MaterialStateProperty.all(
              EdgeInsets.fromLTRB(35, 10, 35, 10)),
        backgroundColor: MaterialStateProperty.all(AppColors.hintFieldColor)
         ),
    );
  }
}
