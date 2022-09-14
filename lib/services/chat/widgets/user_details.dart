import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../../../helpers/text_styles.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: AppColors.mainColor,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Text(
            'Mohamed',
            style: AppTextStyles.w600.copyWith(
              fontSize: 19,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53',
            ),
            radius: 24,
          ),
        ],
      ),
    );
  }
}
