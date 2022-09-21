import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/services/notification/bloc/notification_bloc.dart';
import 'package:thermo_ieee_app/services/notification/pages/notificaion_view.dart';

import '../../chat/widgets/searchBar.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key) {
    NotificationBloc.instance.getNotifications();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: SearchBar(),
          ),
          const SizedBox(height: 20),
          Expanded(child: BlocBuilder<NotificationBloc, AppStates>(
            builder: (context, state) {
              if (state is Done) {
                return SingleChildScrollView(
                  child: Column(
                    children: state.cards!,
                  ),
                );
              } else if (state is Empty) {
                return const SizedBox();
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ))
        ],
      ),
    );
  }
}

List<String> notification = [
  'اذكر ربك',
  'fatakat fatakat fatakat fatakat fatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat',
  'fatakat fatakat fatakat fatakatfatakat fatakat fatakat fatakat'
];

// AppBar(
//         backgroundColor: Colors.white,
//         iconTheme: IconThemeData(color: Colors.black),
//         elevation: 0,
//         leading: Icon(Icons.add_chart),
//         actions: const [
//           Appbarfield(),
//         ],

//       ),
