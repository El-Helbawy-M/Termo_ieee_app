import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/authentication/screens/login_screen.dart';

class ClickableContainer extends StatelessWidget {
  final String? title;
  final dynamic route;

  const ClickableContainer({this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => route));
      },
      child: Container(
        child: Text(
          title!,
          style: TextStyle(color: AppColors.mainColor),
        ),
      ),
    );
  }
}
