import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../widgets/receiver_massage.dart';
import '../widgets/send_massage_Container.dart';
import '../widgets/sender_massage.dart';
import '../widgets/user_details.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var messageController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const UserDetails(),
            const SizedBox(height: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: index  > 2
                            ? const SenderMassage()
                            : const ReceiverMassage(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SendMassageContainer(messageController: messageController),
          ],
        ),
      ),
    );
  }
}
