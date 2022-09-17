import 'package:flutter/material.dart';

import '../../../componants/custom_appbar.dart';
import '../../../componants/custom_image.dart';
import '../../../helpers/colors.dart';
import '../../../helpers/icons.dart';
import '../../../helpers/text_styles.dart';
import '../../chat/widgets/searchBar.dart';
import '../../home/widgets/categories/category_panel.dart';
import '../widget/product_info.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ListView(
        children: [
          CustomAppBar(
              leadigIcon: customImageIconSVG(imageName: AppIcons.arrow),
              actionIcon: Text('منتجات',
                  style: AppTextStyles.w700
                      .copyWith(fontSize: 20, color: AppColors.mainColor))),
          const SearchBar(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical:20),
            child:  CategoriesPanel(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              TextButton(onPressed: (){}, child: Text('عرض الكل',
                  style: AppTextStyles.w700
                      .copyWith(fontSize: 17, color: AppColors.hintColor)),),

              Text('المنتجات الافضل مبيعا',
                  style: AppTextStyles.w700
                      .copyWith(fontSize: 20, color: AppColors.mainColor)),

            ],
          ),
         const SizedBox(height: 25,),
          ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) => const ProductInfo(),
            itemCount: 4,
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )

        ],
      ),
    );
  }
}


