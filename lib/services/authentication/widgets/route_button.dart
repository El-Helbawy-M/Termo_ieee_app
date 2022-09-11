import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

class RoutetButton extends StatelessWidget {
  final String? title;
  final Function()? submit;
  const RoutetButton({this.title, this.submit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: submit,
        child: Text(
          title!,
          style: TextStyle(fontSize: 20),
        ),
        style: ButtonStyle(
            padding:
            MaterialStateProperty.all(EdgeInsets.fromLTRB(30, 10, 30, 10)),
            backgroundColor: MaterialStateProperty.all(AppColors.mainColor)),
      ),
    );
  }
}
