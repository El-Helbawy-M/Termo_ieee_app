abstract class NotificationCustomerStates {}

class NotificationCustomerInitialState extends NotificationCustomerStates {}

class NotificationCustomerLoadingState extends NotificationCustomerStates {}

class GetNotificationCustomerSuccessState extends NotificationCustomerStates {}

class GetNotificationCustomerErrorState extends NotificationCustomerStates {
  final String error;

  GetNotificationCustomerErrorState(this.error);
}
