import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/request_card.dart';

import '../../pages/request_details.dart';

class RequstsList extends StatelessWidget {

   RequstsList({

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          10,
          (index) => InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RequestDetails()));
            },
            child: RequestCard(
                  name: "name",
                  discription: "discription",
                  date: "date",
                  location: "location",

                ),
          )),
    );
  }
}
