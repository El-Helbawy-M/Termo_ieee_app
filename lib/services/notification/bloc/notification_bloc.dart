import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/app_states.dart';
import '../../../navigation/navigator.dart';
import '../repo/notification_repo.dart';
import '../widgets/notification_box.dart';

class NotificationBloc extends Cubit<AppStates> {
  NotificationBloc() : super(Start());
  static NotificationBloc get instance=>BlocProvider.of(CustomNavigator.navigatorState.currentContext!);
  
  NotificationRepo repo = NotificationRepo();

  void getNotifications() async {
    emit(Loading());
    try {
      await repo.getNotifications();
      if (repo.notificatoins.isNotEmpty) {
        List<Widget> cards = List.generate(
          repo.notificatoins.length,
          (index) => BoxNotification(
            notification: repo.notificatoins[index],
          ),
        );
        emit(Done(cards: cards));
      } else {
        emit(Empty());
      }
    } on FirebaseException catch (e) {
      emit(Empty());
    }
  }
}
