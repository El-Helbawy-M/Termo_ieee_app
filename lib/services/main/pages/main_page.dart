

import 'package:flutter/material.dart';
import 'package:thermo_ieee_app/componants/custom_image.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/helpers/icons.dart';
import 'package:thermo_ieee_app/services/home/pages/home_page.dart';

import '../../chat/pages/chats.dart';
import '../../notification/pages/notification_page.dart';

import '../../profile/pages/service_provider_profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // variables
  int currentScreen = 0;
  List<Widget> screens = const [HomePage(), Chats(), Notificationpage(), ServiceProviderProfile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        onTap: (index) => setState(() => currentScreen = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: customImageIconSVG(imageName: AppIcons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: customImageIconSVG(imageName: AppIcons.chat_dots),
            label: "chats",
          ),
          BottomNavigationBarItem(
            icon: customImageIconSVG(imageName: AppIcons.notification),
            label: "notifications",
          ),
          BottomNavigationBarItem(
            icon: customImageIconSVG(imageName: AppIcons.profile),
            label: "profile",
          ),
        ],
      ),
      //====================================
      backgroundColor: Colors.white,
      //====================================
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.mainColor,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //====================================
      body: SafeArea(child: screens[currentScreen]),
    );
  }
}
