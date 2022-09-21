
import 'package:flutter/material.dart';

import '../../../helpers/text_styles.dart';

class CustomerComment extends StatelessWidget {
  const CustomerComment({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Mohamed', style: AppTextStyles.w700.copyWith(fontSize: 15)),
              Text('ممتاز جداا',style: AppTextStyles.w300.copyWith(fontSize: 15)),
            ],
          ),
          SizedBox(
            width: width * .03,
          ),
          Image.network(
              'https://img.freepik.com/free-vector/businessman-character-avatar-isolated_24877-60111.jpg?w=740&t=st=1662731306~exp=1662731906~hmac=215f3ef61a73b08d1803abd3aa3d8ecdf2471a584839b62e8db872a7b65cdf53',
              scale: 12),

        ],
      ),
    );
  }
}
