import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/componants/custom_image.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/constraints.dart';
import 'package:thermo_ieee_app/helpers/icons.dart';
import 'package:thermo_ieee_app/helpers/text_styles.dart';
import 'package:thermo_ieee_app/services/home/widgets/worker/worker_list.dart';
import '../../../componants/custom_appbar.dart';
import '../widgets/categories/category_panel.dart';
import '../widgets/requests/requests_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQueryHelper.width,
      height: MediaQueryHelper.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              // app bar
              CustomAppBar(
                leadigIcon: customImageIconSVG(imageName: AppIcons.search),
                actionIcon: customImageIconSVG(imageName: AppIcons.notification_outlined),
              ),
              //===========================
              // categories panel
              Text("Categories",style: AppTextStyles.w700.copyWith(fontSize: 24,color: AppColors.mainColor)),
              //===========================
              const Padding(
                padding: EdgeInsets.symmetric(vertical:24),
                child:  CategoriesPanel(),
              ),
              const SizedBox(height: 24),
              //===========================
              Text("Worker List",style: AppTextStyles.w700.copyWith(fontSize: 24,color: AppColors.mainColor)),
              const SizedBox(height: 24),
              //===========================
              const WorkerList(),
            ],
          ),
        ),
      ),
    );
  }
}




