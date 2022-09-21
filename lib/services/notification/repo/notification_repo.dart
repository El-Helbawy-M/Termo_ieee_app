import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';
import 'package:thermo_ieee_app/source/firebase/firebase_url_model.dart';
import 'package:thermo_ieee_app/source/firebase/firestore_helper.dart';
import 'package:thermo_ieee_app/source/network_helper.dart';

import '../models/notification_model.dart';
import '../models/notifications_list_model.dart';

class NotificationRepo{
  List<NotificationModel> notificatoins = [];

  Future<void> getNotifications()async {
    NotificationsListModel model = await FirestoreHelper.instance.get(FirebaseUrl("Notifications",documentId:CustomerProfileBloc.instance.customer.id), NotificationsListModel());
    notificatoins = model.data;
  }
}