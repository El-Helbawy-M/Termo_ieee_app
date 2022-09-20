import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/images.dart';

import '../../../../componants/custom_image.dart';
import '../../../../helpers/colors.dart';
import '../../../../helpers/text_styles.dart';
import '../info_item.dart';

class RequestCard extends StatelessWidget {
  String name;
  String discription;
  String? date;
  String? location;
  //Function func;

   RequestCard({
    required this.name,
    required this.discription,
    required this.date,
    required this.location,
   //  required this.func,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 160,
      child: Row(
        children: [
          Container(
              decoration: const BoxDecoration(
                color: AppColors.active,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(4),
                ),
              ),
              height: 160,
              width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // name of the request
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      name,
                      style: AppTextStyles.w700.copyWith(
                        color: AppColors.mainColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  // short description
                  Text(
                    discription,
                    style: AppTextStyles.w500
                        .copyWith(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  // request summary inforamtion
                  Row(
                    children: [
                       InfoItem(
                        leadingIcon: const Icon(
                          Icons.location_pin,
                          size: 12,
                        ),
                        label: "$location",
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: InfoItem(
                          leadingIcon: const Icon(
                            Icons.calendar_month,
                            size: 12,
                          ),
                          label: "$date",
                        ),
                      ),
                      InfoItem(
                        leadingIcon: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: AppColors.active),
                        ),
                        label: "Active",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
