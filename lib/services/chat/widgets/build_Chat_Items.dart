
import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/services/chat/screens/chat_details.dart';

import '../../../helpers/text_styles.dart';

class BuildChatItems extends StatelessWidget {
  const BuildChatItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChatDetailsScreen()));
        },
        child: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53',
              ),
              radius: 24,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  'Mohamed',style: AppTextStyles.w600.copyWith(fontSize: 17 ),

                ),
                SizedBox(
                  height: 4,
                ),
                Text('Hallo Mohamed',style: AppTextStyles.w500.copyWith(fontSize: 14 )),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  '3:55 Am',
                ),
                SizedBox(
                  height: 4,
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.black,
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}