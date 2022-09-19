import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/main_models/request.dart';
import 'package:thermo_ieee_app/services/home/bloc/state.dart';

class RequestBloc extends Cubit<RequestStates> {
  RequestBloc() : super(RequestInitialState());

  static RequestBloc get(context) => BlocProvider.of(context);

  RequestModel? requestModel;

  void getUserData() {
    emit(RequestLoadingState());

    FirebaseFirestore.instance.collection('Requests').doc('customer id')
        .get()
        .then((value) {
      requestModel = RequestModel.fromjson(value.data());
      emit(RequestGetSuccessState(requestModel!));
    }).catchError((error) {
      print(error.toString());
      emit(RequestGetErrorState(error.toString()));
    });
  }
}

