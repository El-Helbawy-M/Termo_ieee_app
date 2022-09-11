import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../widgets/receiver_massage.dart';
import '../widgets/send_massage_Container.dart';
import '../widgets/sender_massage.dart';
import '../widgets/user_details.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var messageController = TextEditingController();
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,bottom: 20,right: 10,left: 10),
        child: Column(
          children:  [
            const UserDetails(),
            SizedBox(height: height * 0.02,),
            const SenderMassage(),
            const ReceiverMassage(),
            const Spacer(),
            SendMassageContainer(messageController: messageController),
          ],
        ),
      ),
    );
  }
}







