import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../../../helpers/text_styles.dart';
import '../pages/chat_room_screen.dart';

class BuildChatItems extends StatelessWidget {
  const BuildChatItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ChatRoomScreen()));
      },
      child: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.grey[300]!),),),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Mohamed',
                  style: AppTextStyles.w600.copyWith(fontSize: 16,color: AppColors.mainColor,height: 1),
                ),
                // const SizedBox(height: 4),
                Text(
                  'Hallo Mohamed',
                  style: AppTextStyles.w400.copyWith(fontSize: 14),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '3:55 Am',
                  style: AppTextStyles.w500.copyWith(fontSize: 12,color: AppColors.mainColor),
                ),
                const SizedBox(
                  height: 4,
                ),
                const CircleAvatar(
                  radius: 8,
                  backgroundColor:  AppColors.mainColor,
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white,fontSize: 10),
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
