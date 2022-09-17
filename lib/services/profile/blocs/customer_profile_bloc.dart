import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/navigation/navigator.dart';
import '../../../config/app_states.dart';
import '../../../main_models/customer.dart';
import '../repo/customer_profile_repo.dart';

class CustomerProfileBloc extends Cubit<AppStates> {
  CustomerProfileBloc() : super(Start());
  static CustomerProfileBloc get instance =>
      BlocProvider.of(CustomNavigator.navigatorState.currentContext!);

  Customer customer = Customer();
  void getProfile(String id) async {
    try {
      customer =
          await CustomerProfileRepo.getProfile("l3mZHVoyoqQnjOf50z53mZBWBiD2");
      emit(Done(model: customer));
    } on FirebaseException catch (e) {
      emit(Empty());
    }
  }
}
