import 'dart:math';

import 'package:thermo_ieee_app/helpers/localization.dart';
import 'package:thermo_ieee_app/source/firebase/auth_helper.dart';
import 'package:thermo_ieee_app/source/shared_helper.dart';

import '../bloc/authentication_bloc.dart';

class AuthenticationRepo {
  Future<String> _callShared(String id,UserType type) async {
    await SharedHelper.instance.setToken(id, currentLang(),type);
    return SharedHelper.instance.getToken();
  }

  Future<String> signIn(String email, String password,UserType type) async {
    String id = await FirebaseAuther.instance
        .signInWithEmail(email: email, password: password);
    return _callShared(id,type);
  }

  Future<String> register(String email, String password,UserType type) async {
    String id = await FirebaseAuther.instance
        .signUpWithEmail(email: email, password: password);
    return _callShared(id,type);
  }
}


