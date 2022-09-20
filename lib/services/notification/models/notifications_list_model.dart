import 'package:thermo_ieee_app/source/puplic_model.dart';

import 'notification_model.dart';

class NotificationsListModel extends SingleMapper{
  List<NotificationModel> data = [];
  
  @override
  Mapper fromJson(Map<String, dynamic> json) {
    NotificationsListModel model = NotificationsListModel();
    for(int x = 0 ; x < json["notifications"];x++){
      model.data.add(NotificationModel().fromJson(json["notifications"][x])as NotificationModel);
    }
    return model;
  }
}