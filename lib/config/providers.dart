
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermo_ieee_app/services/profile/blocs/customer_profile_bloc.dart';

abstract class ProviderList {
  static List<BlocProvider> providers = [
    BlocProvider<CustomerProfileBloc>(create: (_) => CustomerProfileBloc()),
  ];
}
