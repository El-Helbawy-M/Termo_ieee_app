 import 'package:flutter/material.dart';

import '../helpers/text_styles.dart';
import '../main_models/app_notification.dart';
import '../navigation/navigator.dart';
import 'custom_image.dart';

showSnackBar({required AppNotification notification}) {
    CustomNavigator.scaffoldState.currentState!.showSnackBar(
      SnackBar(
        behavior: notification.isFloating
            ? SnackBarBehavior.floating
            : SnackBarBehavior.fixed,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(notification.radius),
            side: BorderSide(width: 1, color: notification.borderColor)),
        margin: notification.isFloating ? EdgeInsets.all(24) : null,
        content: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                if (notification.iconName != null)
                  customImageIconSVG(
                      imageName: notification.iconName, color: Colors.white),
                if (notification.iconName != null) SizedBox(width: 8),
                Expanded(
                  child: Text(
                    notification.message,
                    style: AppTextStyles.w600.copyWith(fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: notification.backgroundColor,
      ),
    );
  }
