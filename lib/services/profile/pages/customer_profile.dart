import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/request_card.dart';

import '../../../componants/details_info_item.dart';
import '../widgets/customer_image_profile.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ImageProfile(),
        const SizedBox(height: 50),
        const DetailsInfoItem(title: "Name", value: "Mohamed"),
        const Padding(
          padding:  EdgeInsets.symmetric(vertical: 16),
          child: DetailsInfoItem(title: "Email", value: "Mohamed@gmail.com"),
        ),
        const DetailsInfoItem(title: "Location", value: "El-Mahallah"),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Requests List",
                style: AppTextStyles.w700
                    .copyWith(fontSize: 14, color: AppColors.mainColor),
              ),
              const SizedBox(height: 8),
              Column(
                children: List.generate(5, (index) => const RequestCard()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
