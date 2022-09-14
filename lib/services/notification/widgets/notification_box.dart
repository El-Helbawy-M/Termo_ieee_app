import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';

import '../../../helpers/text_styles.dart';

class BoxNotification extends StatelessWidget {
  final String message;
  final void Function() ontab;
  final String path;

  const BoxNotification(
      {Key? key,
      required this.message,
      required this.ontab,
      required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        border: Border(bottom: BorderSide(width: 1,color: Colors.grey[300]!))
      ),
      padding: const EdgeInsets.only(top: 12,bottom: 4),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        onTap: ontab,
        title:
            Text(message, style: AppTextStyles.w800),
        leading: CircleImage(path: path),
      ),
    );
  }
}
