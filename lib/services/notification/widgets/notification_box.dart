import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';

import '../../../helpers/text_styles.dart';

class Boxnotify extends StatelessWidget {
  String message;
 // Function ontab;
  String path;

  Boxnotify(
      {Key? key,
      required this.message,
     // required this.ontab,
      required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //onTap: ()=>ontab,
      title:
          Text(message, style: AppTextStyles.w800, textAlign: TextAlign.right),
      trailing: Circleimg(path: path),
    );
  }
}
