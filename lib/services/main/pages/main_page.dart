import 'package:flutter/material.dart';

import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/home/pages/home_page.dart';

import '../../chat/pages/chats.dart';
import '../../notification/pages/notification_page.dart';
import '../../profile/pages/customer_profile.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // variables
  int currentScreen = 0;
  List<Widget> screens = const [HomePage(),ChatsPage(), NotificationPage(),  CustomerProfile()];
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            activeIcon: Icon(Icons.message),
            label: "chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            activeIcon: Icon(Icons.notifications),
            label: "notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
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
