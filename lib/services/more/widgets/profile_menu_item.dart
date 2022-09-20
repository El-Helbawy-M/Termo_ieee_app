import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';

import '../../../componants/custom_image.dart';
import '../../../helpers/text_styles.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem(this.title, 
      {Key? key, this.prefixIconName,this.onClick,this.suffixWidget})
      : super(key: key);
  final String title;
  final Icon? prefixIconName;
  final Function()? onClick;
  final Widget? suffixWidget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: SizedBox(
        height: 68,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              if(prefixIconName!= null)prefixIconName!,
              if(prefixIconName!= null) SizedBox(width: 24),
              Text(
                title,
                style: AppTextStyles.w600.copyWith(
                  fontSize: 14,
                  color: AppColors.mainColor,
                ),
              ),
              Expanded(child: SizedBox()),
              suffixWidget ?? SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
