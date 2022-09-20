import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/details_card.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';

class RequestDetails extends StatelessWidget {

  String name;
  String discription;
  String? date;
  String? location;
  //Function func;

  RequestDetails({
    required this.name,
    required this.discription,
    required this.date,
    required this.location,
    //  required this.func,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,

        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
      ),
      body: Center(child: DetailsCard(
        name: "snapshot.data!.docs[index].get('name')",
        discription: "snapshot.data!.docs[index].get('description')",
        date: "snapshot.data!.docs[index].get('create_data')",
        location: "snapshot.data!.docs[index].get('location')",
      ))
    );
  }
}
