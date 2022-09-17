import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:thermo_ieee_app/config/app_states.dart';
import 'package:thermo_ieee_app/main_models/customer.dart';
import 'package:thermo_ieee_app/main_models/worker.dart';
import 'package:thermo_ieee_app/navigation/navigator.dart';
import 'package:thermo_ieee_app/navigation/routes.dart';
import 'package:thermo_ieee_app/services/authentication/repo/authentication_repo.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';
import 'package:thermo_ieee_app/services/profile/blocs/worker_profile_bloc.dart';

import '../../../source/firebase/firestore_helper.dart';

class AuthenticationBloc extends Cubit<AppStates> {
  AuthenticationBloc() : super(Start());

  AuthenticationRepo repo = AuthenticationRepo();
  String? email, password, name, government, city, address, jopType;
  int? phone;
  Function(String?) get updateEmail => (value) => email = value;
  Function(String?) get updatePassword => (value) => password = value;
  Function(String?) get updateName => (value) => name = value;
  Function(String?) get updateGovernment => (value) => government = value;
  Function(String?) get updateCity => (value) => city = value;
  Function(String?) get updateAddress => (value) => address = value;
  Function(String?) get updateJopType => (value) => jopType = value;
  Function(int?) get updatePhone => (value) => phone = value;

  clear() => email =
      password = name = government = city = address = jopType = phone = null;

  void siginIn() async {
    emit(Loading());
    try {
      String id = await repo.signIn(email!, password!,UserType.customer);
      if (id.isNotEmpty) {
        emit(Done());
        CustomerProfileBloc.instance.getProfile(id);
        CustomNavigator.push(Routes.main);
      } else {
        emit(Error());
      }
    } on FirebaseAuthException catch (e) {
      emit(Error());
    }
  }

  void register(UserType type) async {
    emit(Loading());
    try {
      String id = await repo.register(email!, password!,type);
      if (id.isNotEmpty) {
        Map<String, dynamic> data = {
          "name": name,
          "phone": phone,
          "address": address,
          "city": city,
          "government": government,
        };
        if (type == UserType.customer) {
          data["email"] = email;
          FirestoreHelper.instance.post("Customers", id, data);
          CustomerProfileBloc.instance.customer =
              Customer().fromJson(data) as Customer;
        } else {
          data["jop_type"] = jopType;
          FirestoreHelper.instance.post("Workers", id, data);
          WorkerProfileBloc.instance.worker = Worker().fromJson(data) as Worker;
        }

        CustomNavigator.push(Routes.main);
        emit(Done());
      } else {
        emit(Error());
      }
    } on FirebaseAuthException catch (e) {
      emit(Error());
    } on FirebaseException catch (e) {
      emit(Error());
    }
  }
}

enum UserType { customer, worker }
