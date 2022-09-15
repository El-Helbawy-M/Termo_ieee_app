abstract class ProfileCustomerStates {}

class ProfileCustomerInitialState extends ProfileCustomerStates {}

class ProfileCustomerLoadingState extends ProfileCustomerStates {}

class GetProfileCustomerSuccessState extends ProfileCustomerStates {}

class GetProfileCustomerErrorState extends ProfileCustomerStates {
  final String error;

  GetProfileCustomerErrorState(this.error);
}
