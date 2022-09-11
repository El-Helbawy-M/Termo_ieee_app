import 'package:flutter/material.dart';

import '../widgets/notification_box.dart';

class Notificationpage extends StatelessWidget {
  const Notificationpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: notification.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Boxnotify(
                message: notification[index],
                ontab: () {},
                path: 'assets/images/photo1.jpg',
              ),
              Divider()
            ],
          );
        },
      ),
    );
  }
}



List<String> notification = ['اذكر ربك', ' صل على محمد', 'eeeeeeeee'];
