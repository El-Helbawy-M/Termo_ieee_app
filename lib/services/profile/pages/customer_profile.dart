import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/request_card.dart';

import '../widgets/customer_image_profile.dart';
import '../widgets/customer_profile_info.dart';

class CustomerProfile extends StatelessWidget {
  const CustomerProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var addressController = TextEditingController();
    return ListView(
      children: [
        const ImageProfile(),
        ProfileInfo(nameController: nameController, emailController: emailController, phoneController: phoneController, addressController: addressController),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => const RequestCard(),
              itemCount: 3,
            ),
          ),
        )
      ],
    );
  }
}




