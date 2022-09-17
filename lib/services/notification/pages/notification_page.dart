import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/notification/pages/notificaion_view.dart';

import '../../chat/widgets/searchBar.dart';

import '../widgets/notification_box.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 24),
      child: Column(
        children: [
          const SearchBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children:
              notification
                  .map(
                    (message) => BoxNotification(
                      message: message,
                      ontab: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Notificationview()),
                        );
                      },
                      path: 'assets/images/photo1.jpg',
                    ),
                  )
                  .toList(),
            ),
          ))
        ],
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

// AppBar(
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//         elevation: 0,
//         leading: Icon(Icons.add_chart),
//         actions: const [
//           Appbarfield(),
//         ],

//       ),
