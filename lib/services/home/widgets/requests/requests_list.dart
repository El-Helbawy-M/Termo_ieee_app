import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/request_card.dart';

class RequstsList extends StatelessWidget {
  const RequstsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => RequestCard(),
      ),
    );
  }
}