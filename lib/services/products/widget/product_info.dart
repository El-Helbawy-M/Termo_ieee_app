import 'package:flutter/material.dart';

import '../../../helpers/colors.dart';
import '../../../helpers/text_styles.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border)),
              const SizedBox(height: 25,),
              Container(
                width: 120,
                height: 30.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: AppColors.mainColor,
                ),
                child: MaterialButton(
                  onPressed: (){},
                  child: const Text(
                    'اشنري الان',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text('ليس للبيع',
                  style: AppTextStyles.w700
                      .copyWith(fontSize: 20, color: AppColors.mainColor)),
              Text(' ليس للبيع',
                  style: AppTextStyles.w700
                      .copyWith(fontSize: 17, color: AppColors.hintColor)),
              Text('التقييييم'),

            ],
          ),
          const SizedBox(width: 20,),
          Image.asset('assets/images/photo1.jpg',scale: 12,),


        ],
      ),
    );
  }
}