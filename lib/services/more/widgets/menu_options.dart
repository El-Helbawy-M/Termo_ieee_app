import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/localization.dart';
import 'package:thermo_ieee_app/services/more/widgets/profile_menu_item.dart';

import '../../../helpers/text_styles.dart';
import '../../../navigation/navigator.dart';
import '../../../navigation/routes.dart';

class MenuOptions extends StatelessWidget {
  const MenuOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: AppColors.borderColor),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        children: [
          ProfileMenuItem(
            "edit_profile",
            prefixIconName: Icon(Icons.edit),
            onClick: () => CustomNavigator.push(Routes.profile)
          ),
          Divider(height: 0),
          ProfileMenuItem(
            "my_requests",
            prefixIconName: Icon(Icons.list),
            // onClick: () =>CustomNavigator.push(Routes.EDIT_PASSWORD),
          ),
          Divider(height: 0),
          ProfileMenuItem(
            "language",
            prefixIconName: Icon(Icons.language),
            suffixWidget: Text(
              currentLang() == "ar" ? "العربية" : "English",
              style: AppTextStyles.w700.copyWith(
                fontSize: 14,
                color: AppColors.hintColor,
              ),
            ),
            // onClick: () => showModalBottomSheet(
            //     isScrollControlled: true,
            //     backgroundColor: Colors.transparent,
            //     context: context,
            //     builder: (context) => LanguageBottomSheet()),
          ),
          Divider(height: 0),
          ProfileMenuItem(
            "logout",
            prefixIconName: Icon(Icons.logout),
            // onClick: () {
            //   SharedHelper.sharedHelper!.logout();
            //   LogoutBloc.instance.add(Click());
            // },
          )
        ],
      ),
    );
  }
}
