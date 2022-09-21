import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final String path;
  final double radio;
  const CircleImage({Key? key, required this.path, this.radio = 25})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radio,
      backgroundImage: AssetImage(path),
    );
  }
}
