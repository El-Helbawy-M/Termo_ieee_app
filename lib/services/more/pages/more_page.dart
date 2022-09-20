import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';

import '../../../core/color_shuffler.dart';
import '../../../helpers/constraints.dart';
import '../../../helpers/text_styles.dart';
import '../../../main_models/customer.dart';
import '../widgets/menu_options.dart';
import '../widgets/profile_info_container.dart';

class MorePage extends StatelessWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQueryHelper.width,
      height: MediaQueryHelper.height,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: const [
            ProfileInfoContainer(),
            SizedBox(height: 24),
            MenuOptions(),
          ],
        ),
      ),
    );
  }
}
