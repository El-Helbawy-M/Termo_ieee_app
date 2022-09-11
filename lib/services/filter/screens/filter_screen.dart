import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/filter/widgets/filter_dropdown.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List place = ['اسكندرية', 'طنطا', 'المحلة', 'القاهرة', 'المنصورة'];
    List time = ['الاحدث اولا', 'الاقدم اولا'];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FilterDropdown(
                  text: 'الموقع',
                  items: place,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)),
                ),
                SizedBox(
                  height: 20,
                ),
                FilterDropdown(
                  text: 'الاحدث اولا',
                  items: time,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.mainColor)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
