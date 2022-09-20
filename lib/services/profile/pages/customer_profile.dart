import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/request_card.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';

import '../../../componants/details_info_item.dart';
import '../../../main_models/customer.dart';
import '../widgets/customer_image_profile.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerProfileBloc, AppStates>(
        builder: (context, state) {
      if (state is Done) {
        Customer model = state.model as Customer;

        return ListView(
          children: [
            const ImageProfile(),
            const SizedBox(height: 50),
            DetailsInfoItem(title: "Name", value: model.name ?? "Mohamed"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: DetailsInfoItem(
                  title: "Email", value: model.email ?? "Mohamed@gmail.com"),
            ),
            DetailsInfoItem(
                title: "Location", value: model.address ?? "El-Mahallah"),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    children: List.generate(
                        5,
                        (index) => RequestCard(
                            name: "name",
                            discription: "discription",
                            date: "date",
                            location: "location",


                        )),
                  ),
                ],
              ),
            ),
          ],
        );
      } else if (state is Empty || state is Start) {
        return const Center(child: Text("No data"));
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
