import 'package:flutter/material.dart';

import '../../../helpers/text_styles.dart';

class ServiceProviderInfo extends StatelessWidget {
  const ServiceProviderInfo({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text('01055115441 ',
                  style: AppTextStyles.w600.copyWith(fontSize: 15)),
              const Spacer(),
              Text('رقم التلفون ',
                  style: AppTextStyles.w700.copyWith(fontSize: 15)),
            ],
          ),
          const Divider(
            color: Colors.yellow,
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: height * .015,
          ),
          Row(
            children: [
              Text('ممتاز ',
                  style: AppTextStyles.w600.copyWith(fontSize: 15)),
              const Spacer(),
              Text('التقييم ',
                  style: AppTextStyles.w700.copyWith(fontSize: 15)),
            ],
          ),
          const Divider(
            color: Colors.yellow,
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: height * .015,
          ),
          Row(
            children: [
              Text('المنصوره ',
                  style: AppTextStyles.w600.copyWith(fontSize: 15)),
              const Spacer(),
              Text('العنوان',
                  style: AppTextStyles.w700.copyWith(fontSize: 15)),
            ],
          ),
          const Divider(
            color: Colors.yellow,
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: height * .015,
          ),
          Row(
            children: [
              Text('2020 ',
                  style: AppTextStyles.w600.copyWith(fontSize: 15)),
              const Spacer(),
              Text('عضو منذ',
                  style: AppTextStyles.w700.copyWith(fontSize: 15)),
            ],
          ),
          const Divider(
            color: Colors.yellow,
            height: 10,
            thickness: 0.5,
          ),
          SizedBox(
            height: height * .015,
          ),
        ],
      ),
    );
  }
}