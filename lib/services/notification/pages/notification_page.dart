import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/notification/pages/notificaion_view.dart';
import 'package:thermo_ieee_app/services/notification/widgets/appbar_textfield.dart';

import '../widgets/notification_box.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        leading: Icon(Icons.add_chart),
        actions: const [
          Appbarfield(),
        ],

      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView.builder(
          itemCount: notification.length,
          itemBuilder: (BuildContext context, int index) {

            return Column(
              children: [
                InkWell(
                  onTap:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Notificationview()),
                    );
                  } ,
                  child: Boxnotify(
                    message: notification[index],


                    path: 'assets/images/photo1.jpg',
                  //   ontab: (){
                  //   Navigator.push(
                  //         context,
                  //          MaterialPageRoute(builder: (context) => const Notificationview()),
                  //        );
                  // },
                  ),
                ),
                const Divider(
                  thickness: 1.5,
                  endIndent: 15,
                  indent: 15,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

List<String> notification = [
  'اذكر ربك',
  'fatakat fatakat fatakat fatakat fatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat'
];
