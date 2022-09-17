import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/services/notification/bloc/state.dart';

import '../../../source/firebase/firestore_helper.dart';
import '../../../source/puplic_model.dart';
class CustomerCubit extends Cubit<NotificationCustomerStates>{
  CustomerCubit() : super(NotificationCustomerInitialState());
  static CustomerCubit get(context) => BlocProvider.of(context);
  FirestoreHelper helper= FirestoreHelper();
  Mapper? customerModel;

}