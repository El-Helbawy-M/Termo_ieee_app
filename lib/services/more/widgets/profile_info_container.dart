import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/app_states.dart';
import '../../../core/color_shuffler.dart';
import '../../../helpers/colors.dart';
import '../../../helpers/constraints.dart';
import '../../../helpers/text_styles.dart';
import '../../../main_models/customer.dart';
import '../../profile/blocs/customer_profile_bloc.dart';

class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: MediaQueryHelper.width,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1,color: AppColors.borderColor),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorShuffler.shuffleColor(),
            ),
            child: Center(
              child: Text(
                CustomerProfileBloc.instance.customer.name != null
                    ? CustomerProfileBloc.instance.customer.name!
                        .substring(0, 2)
                        .toUpperCase()
                    : "US",
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${CustomerProfileBloc.instance.customer.name}",
                style: AppTextStyles.w700
                    .copyWith(fontSize: 16, color: AppColors.mainColor),
              ),
              const SizedBox(height: 4),
              Text(
                "${CustomerProfileBloc.instance.customer.email}",
                style: AppTextStyles.w600
                    .copyWith(fontSize: 12, color: AppColors.hintColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
