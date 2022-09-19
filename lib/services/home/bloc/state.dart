import 'package:thermo_ieee_app/main_models/request.dart';

abstract class RequestStates {}

class RequestInitialState extends RequestStates {}

class RequestLoadingState extends RequestStates {}


class RequestGetSuccessState extends RequestStates {
 final RequestModel requestModel;

  RequestGetSuccessState(this.requestModel);
}


class RequestGetErrorState extends RequestStates {

  final String error;
  RequestGetErrorState(this.error);
}




