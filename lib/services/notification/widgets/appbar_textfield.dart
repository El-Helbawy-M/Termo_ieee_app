import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../../../helpers/constraints.dart';

class Appbarfield extends StatelessWidget {
  const Appbarfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Note: Same code is applied for the TextFormField as well
        SizedBox(
      //height: MediaQueryHelper.width(context)*6,
      width: MediaQueryHelper.width(context) * 0.8,
      child: Padding(
        padding: const EdgeInsets.only(right: 30, top: 5, bottom: 5),
        child: Center(
          child: TextFormField(
              decoration: InputDecoration(
            labelText: "ابحث هنا",
            labelStyle: TextStyle(),
            fillColor: AppColors.mainColor,
            prefixIcon: Icon(Icons.search),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(
                color: AppColors.mainColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7),
              borderSide: BorderSide(
                color: AppColors.mainColor,
                width: 2.0,
              ),
            ),
          )),
        ),
      ),
    );
  }
}
