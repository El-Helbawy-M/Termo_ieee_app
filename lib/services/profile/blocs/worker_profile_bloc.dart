import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/main_models/worker.dart';
import '../../../config/app_states.dart';
import '../../../navigation/navigator.dart';
import '../repo/worker_profiel_repo.dart';

class WorkerProfileBloc extends Cubit<AppStates> {
  WorkerProfileBloc() : super(Start());
  static WorkerProfileBloc get instance =>
      BlocProvider.of(CustomNavigator.navigatorState.currentContext!);

  Worker worker = Worker();
  void getProfile(String id)async {
    worker = await WorkerProfileRepo.getProfile("1C5qx2lpBNMf4w9UvkGLEYVTlRu2");
    emit(Done(model: worker));
  }
}