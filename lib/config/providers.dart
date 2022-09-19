
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';

import '../services/authentication/bloc/authentication_bloc.dart';
import '../services/home/bloc/bloc.dart';
import '../services/notification/bloc/notification_bloc.dart';

abstract class ProviderList {
  static List<BlocProvider> providers = [
    BlocProvider<CustomerProfileBloc>(create: (_) => CustomerProfileBloc()),
    BlocProvider<AuthenticationBloc>(create: (_)=>AuthenticationBloc()),
    BlocProvider<NotificationBloc>(create: (_)=>NotificationBloc()),
    BlocProvider<RequestBloc>(create: (_)=>RequestBloc()),

  ];
}
