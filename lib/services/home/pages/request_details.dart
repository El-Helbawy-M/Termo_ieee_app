import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/details_card.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';

class RequestDetails extends StatelessWidget {
  const RequestDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Center(child: DetailsCard())
    );
  }
}
