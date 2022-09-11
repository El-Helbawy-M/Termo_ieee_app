import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';
class Boxnotify extends StatelessWidget {
  String message;
  Function ontab;
  String path;

   Boxnotify({Key? key,required this.message,required this.ontab, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontab(),
      title: Text(message),
      trailing: Circleimg(path: path),
    );
  }
}
