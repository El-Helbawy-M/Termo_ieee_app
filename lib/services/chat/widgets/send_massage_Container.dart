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
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5, top: 3),
              child: TextFormField(
                controller: messageController,
                decoration: const InputDecoration(
                  hintText: 'Write here ....',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: const Icon(
              Icons.send,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}