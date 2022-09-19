import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';
import 'package:thermo_ieee_app/services/chat/widgets/searchBar.dart';
import 'package:thermo_ieee_app/services/notification/widgets/circleimage.dart';
import 'package:thermo_ieee_app/services/profile/pages/customer_profile.dart';

import '../../helpers/constraints.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
        child: Column(
          children: [
            const SearchBar(),
            Expanded(
              child: GridView.builder(
                itemCount: 10,

                //  shrinkWrap:true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerProfile()));
                    },
                    child: Container(
                      //margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: 30,
                      height: 200,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleImage(
                                path: 'assets/images/photo1.jpg',
                                radio: MediaQueryHelper.width),
                            Text("Ebrahim Mohammed",
                                style: AppTextStyles.largefont,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.fade),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text("data",
                                    maxLines: 1,
                                    softWrap: false,
                                    overflow: TextOverflow.fade),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
