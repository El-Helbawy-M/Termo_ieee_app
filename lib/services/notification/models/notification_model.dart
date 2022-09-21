import 'package:thermo_ieee_app/source/puplic_model.dart';

class NotificationModel extends SingleMapper{
  String? title, content, id;
  late ActivityType? activityType;
  ActivityType _mapActivity(String value){
    switch (value) {
      case "product-details":
        return ActivityType.productDetails;
      case "chat-details":
        return ActivityType.chatDetails;
      default:
        return ActivityType.requestDetails;
        
    }
  }
  
  @override
  Mapper fromJson(Map<String, dynamic> json) {
    NotificationModel notification = NotificationModel();
    notification.title = json["name"];
    notification.content = json["content"];
    notification.id = json["id"]??"";
    notification.activityType = _mapActivity(json["activity type"]);
    return notification;
  }
}

enum ActivityType { productDetails, chatDetails, requestDetails }
