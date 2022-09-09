import 'package:flutter/material.dart';

import '../../../helpers/colors.dart';

class ReceiverMassage extends StatelessWidget {
  const ReceiverMassage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.receiverColor,
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(10),
            topStart: Radius.circular(10),
            bottomEnd: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Text('Hallo ياعم الحج '),
      ),
    );
  }
}