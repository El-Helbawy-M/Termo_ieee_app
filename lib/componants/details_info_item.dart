import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import '../helpers/text_styles.dart';

class DetailsInfoItem extends StatelessWidget {
  const DetailsInfoItem({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);
  final String title,value;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: AppColors.borderColor),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: AppTextStyles.w700.copyWith(fontSize: 14,color: AppColors.mainColor),),
          const SizedBox(height: 8),
          Text(value,style: AppTextStyles.w700.copyWith(fontSize: 12,color: AppColors.hintColor),),
        ],
      ),
    );
  }
}