import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../../../helpers/text_styles.dart';

class RegisterType extends StatefulWidget {
  final String? title;
  final Color? color ;
  final Function()? function;
  final Color? textColor;
  const RegisterType({this.title, this.color, this.function,this.textColor});

  @override
  State<RegisterType> createState() => _RegisterTypeState();
}

class _RegisterTypeState extends State<RegisterType> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 55,
      child: TextButton(
        onPressed:widget.function!,
        style: ButtonStyle(
            side: MaterialStateProperty.all(BorderSide(
                width: 1,
                color:widget.color!)),
            padding: MaterialStateProperty.all(
                const EdgeInsets.fromLTRB(35, 10, 35, 10)),
          backgroundColor: MaterialStateProperty.all(AppColors.hintFieldColor)
           ),
        child: Text(
          widget.title!,
          style: AppTextStyles.w600.copyWith(fontSize: 16,color: widget.textColor),
        ),
      ),
    );
  }
}
