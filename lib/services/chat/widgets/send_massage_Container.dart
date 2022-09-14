import 'package:flutter/material.dart';

class SendMassageContainer extends StatelessWidget {
  const SendMassageContainer({
    Key? key,
    required this.messageController,
  }) : super(key: key);

  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: messageController,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          
          hintText: 'Write here ....',
          border: InputBorder.none,
          suffixIcon: MaterialButton(
            onPressed: () {},
            child: const Icon(
              Icons.send,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
