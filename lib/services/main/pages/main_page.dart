import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/helpers/colors.dart';
import 'package:thermo_ieee_app/services/home/pages/home_page.dart';
import 'package:thermo_ieee_app/services/more/pages/more_page.dart';
import 'package:thermo_ieee_app/services/notification/bloc/notification_bloc.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';
import '../../chat/pages/chats.dart';
import '../../notification/pages/notification_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // variables
  int currentScreen = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentScreen,
        onTap: (index) {
          setState(() => currentScreen = index);
          if(index == 2){
            NotificationBloc.instance.getNotifications();
          }
        },
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
            icon: Icon(Icons.more_horiz_outlined),
            activeIcon: Icon(Icons.more_horiz),
            label: "more",
          ),
        ],
      ),
      //====================================
      backgroundColor: Colors.white,
      //====================================
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: AppColors.mainColor,
      //   child: const Icon(Icons.add, color: Colors.white),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //====================================
      body: SafeArea(
        child: BlocBuilder<CustomerProfileBloc, AppStates>(
          builder: (context, state) {
            if (state is Done) {
              List<Widget> screens = [
                const HomePage(),
                const ChatsPage(),
                NotificationPage(),
                const MorePage()
              ];
              return screens[currentScreen];
            } else
              return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
