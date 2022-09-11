import 'package:flutter/material.dart';

import '../../../helpers/text_styles.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({
    Key? key,
    required this.label,
    this.leadingIcon,
  }) : super(key: key);
  final Widget? leadingIcon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (leadingIcon != null) leadingIcon!,
        if (leadingIcon != null) const SizedBox(width: 4),
        Text(label,style: AppTextStyles.w500.copyWith(color: Colors.grey,fontSize: 14),),
      ],
    );
  }
}
