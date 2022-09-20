import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../../helpers/colors.dart';
import '../../../../helpers/text_styles.dart';
import '../../../profile/pages/service_provider_profile.dart';
import '../info_item.dart';

class WorkerList extends StatelessWidget {
  const WorkerList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream:FirebaseFirestore.instance.collection('Workers').snapshots() ,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ServiceProviderProfile()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 7, ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // name of the request
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                                  child: Text(
                                    snapshot.data!.docs[index].get('name'),
                                    style: AppTextStyles.w700.copyWith(
                                      color: AppColors.mainColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                // short description
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    snapshot.data!.docs[index].get('job_type'),
                                    style: AppTextStyles.w600
                                        .copyWith(fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                // worker summary info
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children:  [
                                      InfoItem(
                                        leadingIcon: const Icon(
                                          Icons.location_pin,
                                          size: 15,
                                        ),
                                        label: snapshot.data!.docs[index].get('city'),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16),
                                        child: InfoItem(
                                          leadingIcon: const Icon(
                                            Icons.phone,
                                            size: 15,
                                          ),
                                          label:snapshot.data!.docs[index].get('phone'),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Image.network(
                          'https://img.freepik.com/free-vector/construction-illustration_24877-52409.jpg?w=740&t=st=1663676172~exp=1663676772~hmac=9c6644f85ce8d9c137af317e4245b299607658cd9961a05b19dd3db0f761eb9f',
                          width: 95,
                          height: 150,

                        ),
                      ],
                    ),
                  ),
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