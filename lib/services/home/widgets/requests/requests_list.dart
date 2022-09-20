import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/main_models/request_model.dart';
import 'package:thermo_ieee_app/services/home/widgets/requests/request_card.dart';

import '../../pages/request_details.dart';

class RequstsList extends StatelessWidget {
  RequstsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('Requests').snapshots(),
      builder: (context, snapshot) {

        if (snapshot.hasData) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RequestDetails(
                                name: snapshot.data!.docs[index].get('name'),
                                discription: snapshot.data!.docs[index]
                                    .get('description'),
                                date: snapshot.data!.docs[index]
                                    .get('create_data'),
                                location:
                                    snapshot.data!.docs[index].get('location'),
                              )));
                },
                child: RequestCard(
                  name: snapshot.data!.docs[index].get('name'),
                  discription: snapshot.data!.docs[index].get('description'),
                  date: snapshot.data!.docs[index].get('create_data'),
                  location: snapshot.data!.docs[index].get('location'),
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text('Error');
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
