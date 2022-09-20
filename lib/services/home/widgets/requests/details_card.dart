import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/constraints.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';

import '../../../../helpers/colors.dart';
import '../info_item.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQueryHelper.width * 0.9,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CircleImage(
                      path: 'assets/images/photo1.jpg',
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Ebrahim Mohammed",
                      maxLines: 2,
                      style: AppTextStyles.largefont,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: MediaQueryHelper.height*0.5,
                  width: MediaQueryHelper.width * 0.8,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  child: const Text(
                    "Discription.....",
                    style: AppTextStyles.w700,
                  ),
                ),
              ),
              SizedBox(height: 15),

              Row(children: [
                Icon(Icons.location_on_outlined),Text(
                  "Location",
                  maxLines: 1,
                  style: AppTextStyles.w400,
                ),

              ],),
              const SizedBox(height: 15),
              InfoItem(
                leadingIcon: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.active),
                ),
                label: "Active",
                fsize: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
