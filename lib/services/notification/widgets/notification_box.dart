import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/constraints.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';

import '../../../helpers/text_styles.dart';
import '../models/notification_model.dart';

class BoxNotification extends StatelessWidget {
  // final void Function() ontab;
  final NotificationModel? notification;

  const BoxNotification({
    Key? key,
    this.notification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.hintFieldColor,
      ),
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: MediaQueryHelper.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(notification != null ? notification!.title! : "title",
              style: AppTextStyles.w600.copyWith(fontSize: 13)),
          const SizedBox(height: 8),
          Text(notification != null ? notification!.content! : "content",
              style: AppTextStyles.w500.copyWith(fontSize: 10)),
        ],
      ),
    );
  }
}
