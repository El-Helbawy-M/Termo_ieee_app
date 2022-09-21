import 'package:flutter/material.dart';

import '../../../helpers/text_styles.dart';

class InfoItem extends StatelessWidget {
   InfoItem({
    Key? key,
    required this.label,
    this.leadingIcon,
    this.fsize=14,
  }) : super(key: key);
  final Widget? leadingIcon;
  final String label;
  double fsize = 14;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (leadingIcon != null) leadingIcon!,
        if (leadingIcon != null) const SizedBox(width: 4),
        Text(label,style: AppTextStyles.w500.copyWith(color: Colors.grey,fontSize: fsize ),),
      ],
    );
  }
}
